<?php

namespace App\Http\Livewire;

use App\Models\Like;
use App\Models\Ouvrage;
use Illuminate\Http\JsonResponse;
use Livewire\Component;

class FormLike extends Component
{
    public $ouvrage;
    public $recup_id;
    public $count;
    public $likeOrDislike;
    public $statutLike;

    protected $listeners = [
        'refreshComponent' => '$refresh',
    ];

    public function rafraichir(){
        $this->emitSelf('refreshComponent');
        /* $this->emitTo('ouvrages', 'refreshComponent'); */
    }

    public function store(): JsonResponse
    {
        
        // Store the message in the database
        $ouvrage = Ouvrage::find($this->recup_id);
        /* dd($ouvrage); */
        if ($ouvrage->isLikedByLoggedInUser()) {
            $result = Like::where([
                'user_id' => auth()->user()->id,
                'ouvrage_id' => $this->recup_id,
            ])->delete();

            if ($result) {
                return response()->json([
                    'count' => Ouvrage::find($this->recup_id)->likes->count()
                ]);
            }
        } else {
            $like = new Like();

            $like->user_id = auth()->user()->id;
            $like->ouvrage_id = $this->recup_id;
            $like->save();

            return response()->json([
                'count' => Ouvrage::find($this->recup_id)->likes->count()
            ]);
        }
    }

    public function render()
    {
        if (auth()->user() && $this->ouvrage->isLikedByLoggedInUser()){
            $this->likeOrDislike= '<i class="fa fa-heart"></i>';
            $this->statutLike= "vous aimez déjà";
            /* J'aime pas */
        }else{
            $this->likeOrDislike= '<i class="bi bi-heart"></i>';
            $this->statutLike= "cliquer pour aimer";
            /* J'aime */
        }
        return view('livewire.form-like');
    }
}
