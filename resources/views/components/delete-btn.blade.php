    <!-- Smile, breathe, and go slowly. - Thich Nhat Hanh -->
    @if($CheckPermision->delete == 1)
    <a href="{{ route($route, $id) }}" class="btn btn-danger btn-sm">
        {{-- <i class="fas fa-trash"></i> --}}
        <i class="icofont-trash"></i>
    </a>
    @endif