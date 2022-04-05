<?php

namespace App\Http\Controllers;

use App\Http\Resources\ZemljaResurs;
use App\Models\Zemlja;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ZemljaController extends BaseController
{
    public function index()
    {
        $zemlje = Zemlja::all();
        return $this->uspesnoOdgovor(ZemljaResurs::collection($zemlje), 'Vraceni svi podaci o zemlji porekla aviona..');
    }


    public function store(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'zemlja' => 'required',
        ]);
        if($validator->fails()){
            return $this->greskaOdgovor($validator->errors());
        }

        $zemlja = Zemlja::create($input);

        return $this->uspesnoOdgovor(new ZemljaResurs($zemlja), 'Nova zemlja porekla je kreiran.');
    }


    public function show($id)
    {
        $zemlja = Zemlja::find($id);
        if (is_null($zemlja)) {
            return $this->greskaOdgovor('Zemlja sa zadatim id-em ne postoji.');
        }
        return $this->uspesnoOdgovor(new ZemljaResurs($zemlja), 'Zemlja sa zadatim id-em je vracena.');
    }


    public function update(Request $request, $id)
    {
        $zemlja = Zemlja::find($id);
        if (is_null($zemlja)) {
            return $this->greskaOdgovor('Zemlja sa zadatim id-em ne postoji.');
        }

        $input = $request->all();

        $validator = Validator::make($input, [
            'zemlja' => 'required',
        ]);

        if($validator->fails()){
            return $this->greskaOdgovor($validator->errors());
        }

        $zemlja->zemlja = $input['zemlja'];
        $zemlja->save();

        return $this->uspesnoOdgovor(new ZemljaResurs($zemlja), 'Zemlja je azurirana.');
    }

    public function destroy($id)
    {
        $zemlja = Zemlja::find($id);
        if (is_null($zemlja)) {
            return $this->greskaOdgovor('Zemlja sa zadatim id-em ne postoji.');
        }
        $zemlja->delete();
        return $this->uspesnoOdgovor([], 'Zemlja porekla je obrisana.');
    }
}
