<div>
    {{-- wire:poll.visible.750ms --}}
    <span class="badge rounded-pill bg-secondary" wire:poll.keep-alive wire:poll.750ms>
        {{ $count_likes }}
    </span>
</div>
