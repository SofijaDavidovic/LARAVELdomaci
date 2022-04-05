<?php

namespace App\Http\Controllers;

use App\Http\Resources\TipResurs;
use App\Models\Tip;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class TipController extends BaseController
{
    public function index()
    {
        $tipovi = Tip::all();
        return $this->uspesnoOdgovor(TipResurs::collection($tipovi), 'Vraceni svi podaci o tipovima aviona!');
    }


    public function store(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'tip' => 'required',
        ]);
        if($validator->fails()){
            return $this->greskaOdgovor($validator->errors());
        }

        $tipovi = Tip::create($input);

        return $this->uspesnoOdgovor(new TipResurs($tipovi), 'Novi tip je kreiran.');
    }


    public function show($id)
    {
        $tipovi = Tip::find($id);
        if (is_null($tipovi)) {
            return $this->greskaOdgovor('Tip sa zadatim id-em ne postoji.');
        }
        return $this->uspesnoOdgovor(new TipResurs($tipovi), 'Tip sa zadatim id-em je vracen.');
    }


    public function update(Request $request, $id)
    {
        $tipovi = Tip::find($id);
        if (is_null($tipovi)) {
            return $this->greskaOdgovor('Tip sa zadatim id-em ne postoji.');
        }

        $input = $request->all();

        $validator = Validator::make($input, [
            'tip' => 'required',
        ]);

        if($validator->fails()){
            return $this->greskaOdgovor($validator->errors());
        }

        $tipovi->tip = $input['tip'];
        $tipovi->save();

        return $this->uspesnoOdgovor(new TipResurs($tipovi), 'Tip je azuriran.');
    }

    public function destroy($id)
    {
        $tipovi = Tip::find($id);
        if (is_null($tipovi)) {
            return $this->greskaOdgovor('Tip sa zadatim id-em ne postoji.');
        }

        $tipovi->delete();
        return $this->uspesnoOdgovor([], 'Tip je obrisan.');
    }
}
