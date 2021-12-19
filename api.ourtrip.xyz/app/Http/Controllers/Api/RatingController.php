<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Validator;
use App\Models\Rating;

class RatingController extends Controller
{
    public function index($id)
    {
        $ratings = Rating::where('idUser', $id)->first();

        if ($ratings != null) {
            return response([
                'message' => 'Retrieve All Success',
                'data' => $ratings
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ],400);
    }

    public function show($id)
    {
        $rating = Rating::find($id);

        if(!is_null($rating)) {
            return response([
                'message' => 'Retrieve Rating Success',
                'data' => $rating
            ], 200); 
        }

        return response([
            'message' => 'Rating Not Found',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData=$request->all();
        $validate=Validator::make($storeData, [
            'rating'  => 'required',
            'description' => 'required',
        ]); 
        
        if($validate->fails())
            return response(['message' => $validate->errors()], 400); 

        $rating=Rating::create($storeData);
        return response([
            'message' => 'Add Rating Success',
            'data' => $rating
        ], 200); 
    }

    public function destroy($id)
    {
        $rating = Rating::find($id);

        if(is_null($rating)) {
            return response([
                'message' => 'Rating Not Found',
                'data' => null
            ], 404);
        }

        if($rating->delete()) {
            return response([
                'message' => 'Delete Rating Success',
                'data' => $rating
            ], 200); 
        }

        return response([
            'message' => 'Delete Rating Failed',
            'data' => null,
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $rating=Rating::find($id);
        if(is_null($rating)) {
            return response([
                'message' => 'Rating Not Found',
                'data' => null
            ], 404);
        }

        $updateData=$request->all();
        $validate=Validator::make($updateData, [
            'rating'  => 'required',
            'description' => 'required',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $rating->rating=$updateData['rating'];
        $rating->description=$updateData['description'];

        if($rating->save()) {
            return response([
                'message' => 'Update Rating Success',
                'data' => $rating
            ], 200);
        }

        return response([
            'message' => 'Update Rating Failed',
            'data' => null,
        ], 400);
    }
}
