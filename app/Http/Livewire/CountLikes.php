<?php

namespace App\Http\Livewire;

use App\Models\Like;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class CountLikes extends Component
{
    public function render()
    {
        $count_likes = Like::where('user_id', Auth::user()->id)
                ->count();
        return view('livewire.count-likes', [
            'count_likes' => $count_likes ?? 0
        ]);
    }
}
