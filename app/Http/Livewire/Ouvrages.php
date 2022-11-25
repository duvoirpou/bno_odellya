<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Ouvrages extends Component
{
    public $ouvrage;
    public $likeOrDislike;
    public $statutLike;

    public function updatingQuery()
    {
        $this->resetPage();
    }

    protected $listeners = [
        'refreshComponent' => '$refresh',
    ];

    public function rafraichir()
    {
        /* $this->emitSelf('refreshComponent'); */
        $this->emitTo('ouvrages', 'refreshComponent');
    }

    public function render()
    {
        if (auth()->user() && $this->ouvrage->isLikedByLoggedInUser()) {
            $this->likeOrDislike = '<i class="fa fa-thumbs-up fa-lg" aria-hidden="true"></i>';
            $this->statutLike = "vous aimez déjà";
            /* J'aime pas */
        } else {
            $this->likeOrDislike = '<i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i>';
            $this->statutLike = "cliquer pour aimer";
            /* J'aime */
        }
        return view('livewire.ouvrages');
    }
}
