<div>
    <form >
        <input type="hidden" value="{{ $recup_id }}">
        <button type="submit" wire:click.prevent='store()' class="btn btn-sm btn-dark circle" wire:loading.attr='disabled' wire:click='rafraichir' data-toggle="tooltip" data-placement="top" title="{!! $statutLike !!}">
            <b>
                {!! $likeOrDislike !!}
                {{-- <span class="badge badge-dark" id="count-js">{{ $ouvrage->likes->count() }}</span> --}}
            </b>
        </button>
    </form>
</div>
