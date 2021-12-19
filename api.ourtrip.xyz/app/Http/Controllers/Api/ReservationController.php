<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Reservation;

class ReservationController extends Controller
{
    public function index($id)
    {
        $reservations = Reservation::where('idUser', $id)->get();

        if (count($reservations) > 0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $reservations
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ],400);
    }

    public function show($id)
    {
        $reservation = Reservation::find($id);

        if(!is_null($reservation)) {
            return response([
                'message' => 'Retrieve Reservation Success',
                'data' => $reservation
            ], 200); 
        }

        return response([
            'message' => 'Reservation Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData=$request->all();
        $validate=Validator::make($storeData, [
            'date'  => 'required',
            'name' => 'required',
            'location' => 'required'
        ]); 
        
        if($validate->fails())
            return response(['message' => $validate->errors()], 400); 

        $reservation=Reservation::create($storeData);
        return response([
            'message' => 'Add Reservation Success',
            'data' => $reservation
        ], 200); 
    }

    public function destroy($id)
    {
        $reservation = Reservation::find($id);

        if(is_null($reservation)) {
            return response([
                'message' => 'Reservation Not Found',
                'data' => null
            ], 404);
        }

        if($reservation->delete()) {
            return response([
                'message' => 'Delete Reservation Success',
                'data' => $reservation
            ], 200); 
        }

        return response([
            'message' => 'Delete Reservation Failed',
            'data' => null,
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $reservation=Reservation::find($id);
        if(is_null($reservation)) {
            return response([
                'message' => 'Reservation Not Found',
                'data' => null
            ], 404);
        }

        $updateData=$request->all();
        $validate=Validator::make($updateData, [
            'date'  => 'required',
            'name' => 'required',
            'location' => 'required'
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $reservation->date=$updateData['date'];
        $reservation->name=$updateData['name'];
        $reservation->location=$updateData['location'];

        if($reservation->save()) {
            return response([
                'message' => 'Update Reservation Success',
                'data' => $reservation
            ], 200);
        }

        return response([
            'message' => 'Update Reservation Failed',
            'data' => null,
        ], 400);
    }
}
