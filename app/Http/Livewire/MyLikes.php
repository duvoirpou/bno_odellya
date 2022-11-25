<?php

namespace App\Http\Livewire;

use App\Models\Ouvrage;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithPagination;

class MyLikes extends Component
{
    use WithPagination;

    public function render()
    {
        $my_likes = Ouvrage::select('ouvrages.*', 'likes.user_id')
            ->join('likes', 'ouvrages.id', '=', 'likes.ouvrage_id')
            ->where('user_id', Auth::user()->id)
            ->get();
            
            /* ->paginate(6); */
        /* dd($my_likes); */
        return view('livewire.my-likes', [
            'ouvrages' => $my_likes ?? 0
        ]);
    }
}
