<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Registered;
use App\Models\User;
use Validator;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $registrationData = $request->all();
        $validate = Validator::make($registrationData, [
            'name' => 'required|max:60',
            'email' => 'required|email:rfc,dns|unique:users',
            'password' => 'required'
        ]); //membuat rule validasi input

        if ($validate->fails())
            return response(['message' => $validate->errors()], 400); //return error validasi input
        
        $registrationData['password'] = bcrypt($request->password); //enkripsi password
        $user = User::create($registrationData);

        $user->sendApiEmailVerificationNotification();

        return response([
            'message' => 'Register Success',
            'user' => $user
        ], 200); //return data user dalam bentuk json
    }

    public function login(Request $request)
    {
        $loginData = $request->all();
        $validate = Validator::make($loginData, [
            'email' => 'required|email:rfc,dns',
            'password' => 'required'
        ]); //membuat rule validasi input

        if ($validate->fails())
            return response(['message' => $validate->error()], 400); //return error validasi input
        
        if (!Auth::attempt($loginData))
            return response(['message' => 'Invalid Credentials'], 401); //return error gagal login

        $user = Auth::user();
        if($user->email_verified_at == null){
            return response([
                'message'=> 'Verification Your Account'
            ],401);
        }

        $token = $user->createToken('Authentication Token')->accessToken; //generate token
        
        return response([
            'message' => 'Authenticated',
            'user' => $user,
            'token_type' => 'Bearer',
            'access_token' => $token
        ]); //return data user dan token dalam bentuk json
    }

    public function show($id)
    {
        $user = User::find($id);

        if(!is_null($user)) {
            return response([
                'message' => 'Retrieve User Success',
                'data' => $user
            ], 200); 
        }

        return response([
            'message' => 'User Not Found',
            'data' => null
        ], 404);
    }

    public function update(Request $request, $id)
    {
        $user=User::find($id);
        if(is_null($user)) {
            return response([
                'message' => 'User Not Found',
                'data' => null
            ], 404);
        }

        $updateData=$request->all();
        $validate=Validator::make($updateData, [
            'name' => 'required|max:60',
            'password' => 'required'
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $updateData['password'] = bcrypt($request->password); 
        $user->name=$updateData['name'];
        $user->password=$updateData['password'];

        if($user->save()) {
            return response([
                'message' => 'Update User Success',
                'data' => $user
            ], 200);
        }

        return response([
            'message' => 'Update User Failed',
            'data' => null,
        ], 400);
    }
}