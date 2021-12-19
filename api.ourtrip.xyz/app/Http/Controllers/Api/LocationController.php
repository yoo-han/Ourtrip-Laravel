<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Location;

class LocationController extends Controller
{
    public function index()
    {
        $locations = Location::all();

        if (count($locations) > 0) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $locations
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ],400);
    }

    public function show($id)
    {
        $location = Location::find($id);

        if(!is_null($location)) {
            return response([
                'message' => 'Retrieve Location Success',
                'data' => $location
            ], 200); 
        }

        return response([
            'message' => 'Location Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData=$request->all();
        $validate=Validator::make($storeData, [
            'title' => 'required', 
            'description' => 'required', 
            'urlPhoto' => 'required',
        ]); 
        
        if($validate->fails())
            return response(['message' => $validate->errors()], 400); 

        $location=Location::create($storeData);
        return response([
            'message' => 'Add Location Success',
            'data' => $location
        ], 200); 
    }

    public function destroy($id)
    {
        $location = Location::find($id);

        if(is_null($location)) {
            return response([
                'message' => 'Location Not Found',
                'data' => null
            ], 404);
        }

        if($location->delete()) {
            return response([
                'message' => 'Delete Location Success',
                'data' => $location
            ], 200); 
        }

        return response([
            'message' => 'Delete Location Failed',
            'data' => null,
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $location=Location::find($id);
        if(is_null($location)) {
            return response([
                'message' => 'Location Not Found',
                'data' => null
            ], 404);
        }

        $updateData=$request->all();
        $validate=Validator::make($updateData, [
            'title' => 'required', 
            'description' => 'required', 
            'urlPhoto' => 'required',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $location->title=$updateData['title'];
        $location->description=$updateData['description'];
        $location->urlPhoto=$updateData['urlPhoto'];

        if($location->save()) {
            return response([
                'message' => 'Update Location Success',
                'data' => $location
            ], 200);
        }

        return response([
            'message' => 'Update Location Failed',
            'data' => null,
        ], 400);
    }
}
