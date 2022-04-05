<?php

namespace App\Http\Controllers;

use App\Http\Resources\AvionResurs;
use App\Models\Avion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AvionController extends BaseController
{
    public function index()
    {
        $avioni = Avion::all();
        return $this->uspesnoOdgovor(AvionResurs::collection($avioni), 'Vraceni svi podaci o avionima!');
    }


    public function store(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'model' => 'required',
            'opis' => 'required',
            'tipId' => 'required',
            'zemljaId' => 'required',
        ]);
        if($validator->fails()){
            return $this->greskaOdgovor($validator->errors());
        }

        $avion = Avion::create($input);

        return $this->uspesnoOdgovor(new AvionResurs($avion), 'Novi avion je kreiran.');
    }


    public function show($id)
    {
        $avion = Avion::find($id);
        if (is_null($avion)) {
            return $this->greskaOdgovor('Avion sa zadatim id-em ne postoji.');
        }
        return $this->uspesnoOdgovor(new AvionResurs($avion), 'Avion sa zadatim id-em je vracen.');
    }


    public function update(Request $request, $id)
    {
        $avion = Avion::find($id);
        if (is_null($avion)) {
            return $this->greskaOdgovor('Avion sa zadatim id-em ne postoji.');
        }

        $input = $request->all();

        $validator = Validator::make($input, [
            'model' => 'required',
            'opis' => 'required',
            'tipId' => 'required',
            'zemljaId' => 'required',
        ]);

        if($validator->fails()){
            return $this->greskaOdgovor($validator->errors());
        }

        $avion->model = $input['model'];
        $avion->opis = $input['opis'];
        $avion->tipId = $input['tipId'];
        $avion->zemljaId = $input['zemljaId'];
        $avion->save();

        return $this->uspesnoOdgovor(new AvionResurs($avion), 'Avion je azuriran.');
    }

    public function destroy($id)
    {
        $avion = Avion::find($id);
        if (is_null($avion)) {
            return $this->greskaOdgovor('Avion sa zadatim id-em ne postoji.');
        }

        $avion->delete();
        return $this->uspesnoOdgovor([], 'Avion je obrisan.');
    }
}
