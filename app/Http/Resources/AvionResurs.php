<?php

namespace App\Http\Resources;

use App\Models\Tip;
use App\Models\Zemlja;
use Illuminate\Http\Resources\Json\JsonResource;

class AvionResurs extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $zemlja = Zemlja::find($this->zemljaId);
        $tip = Tip::find($this->tipId);

        return [
            'id' => $this->id,
            'model' => $this->model,
            'opis' => $this->opis,
            'zemlja' => $zemlja->zemlja,
            'tip' => $tip->tip
        ];
    }
}
