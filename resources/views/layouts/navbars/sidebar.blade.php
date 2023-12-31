<div class="sidebar" data-color="orange" data-background-color="white" data-image="{{ asset('material') }}/img/sidebar-1.jpg">
  <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
  -->
  <div class="logo">
    <a href="{{ route('home') }}" class="simple-text logo-normal">
      {{ __('TARE') }}
    </a>
  </div>
  <div class="sidebar-wrapper">
    <ul class="nav">
      <li class="nav-item{{ $activePage == 'dashboard' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('home') }}">
          <i class="material-icons">dashboard</i>
            <p>{{ __('Bienvenidos') }}</p>
        </a>
      </li>
      <li class="nav-item {{ ($activePage == 'profile' || $activePage == 'user-management') ? ' active' : '' }}">
        {{-- <a class="nav-link" data-toggle="collapse" href="#laravelExample" aria-expanded="true">
          <i><img style="width:25px" src="{{ asset('img/laravel.svg') }}"></i>
          <p>{{ __('Laravel Examples') }}
            <b class="caret"></b>
          </p>
        </a>
        <div class="collapse show" id="laravelExample">
          <ul class="nav">
            <li class="nav-item{{ $activePage == 'profile' ? ' active' : '' }}">
              <a class="nav-link" href="#">
                <span class="sidebar-mini"> UP </span>
                <span class="sidebar-normal">{{ __('User profile') }} </span>
              </a>
            </li>
            <li class="nav-item{{ $activePage == 'user-management' ? ' active' : '' }}">
              <a class="nav-link" href="#">
                <span class="sidebar-mini"> UM </span>
                <span class="sidebar-normal"> {{ __('User Management') }} </span>
              </a>
            </li>
          </ul>
        </div>
      </li> --}}
      @can('user_index')
      <li class="nav-item{{ $activePage == 'users' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('users.index') }}">
          <i class="material-icons">content_paste</i>
            <p>Usuarios</p>
        </a>
      </li>
      @endcan
      {{--PROPIEDAD--}}
      @can('propiedad_index')
      <li class="nav-item{{ $activePage == 'propiedads' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('propiedads.index') }}">
          <i class="material-icons">house</i>
            <p>{{ __('Inmuebles') }}</p>
        </a>
      </li>
      @endcan
      {{-- CATEGORIA INMUEBLE --}}
      @can('inmueble_index')
      <li class="nav-item{{ $activePage == 'inmuebles' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('inmuebles.index') }}">
          <i class="material-icons">view_carousel</i>
            <p>{{ __('Categoria Inmueble') }}</p>
        </a>
      </li>
      @endcan
        {{-- ESTADO PROPIEDAD --}}
      @can('estado_index')
      <li class="nav-item{{ $activePage == 'estados' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('estados.index') }}">
          <i class="material-icons">panorama_horizontal</i>
            <p>{{ __('Estado Propiedad') }}</p>
        </a>
      </li>
      @endcan
      {{-- ESTADO PROPIEDAD --}}
      @can('documento_index')
      <li class="nav-item{{ $activePage == 'documentos' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('documentos.index') }}">
          <i class="material-icons">assignment_ind</i>
            <p>{{ __('Tipo Documentos') }}</p>
        </a>
      </li>
      @endcan

      {{--  --}}
      @can('post_index')
      <li class="nav-item{{ $activePage == 'posts' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('posts.index') }}">
          <i class="material-icons">library_books</i>
            <p>{{ __('Post') }}</p>
        </a>
      </li>
      @endcan
      @can('permission_index')
      <li class="nav-item{{ $activePage == 'permissions' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('permissions.index') }}">
          <i class="material-icons">bubble_chart</i>
          <p>{{ __('Permisos') }}</p>
        </a>
      </li>
      @endcan
      @can('role_index')
      <li class="nav-item{{ $activePage == 'roles' ? ' active' : '' }}">
        <a class="nav-link" href="{{ route('roles.index') }}">
          <i class="material-icons">location_ons</i>
            <p>{{ __('Roles') }}</p>
        </a>
      </li>
      @endcan
      {{-- <li class="nav-item{{ $activePage == 'notifications' ? ' active' : '' }}">
        <a class="nav-link" href="#">
          <i class="material-icons">notifications</i>
          <p>{{ __('Notifications') }}</p>
        </a>
      </li>
      <li class="nav-item{{ $activePage == 'language' ? ' active' : '' }}">
        <a class="nav-link" href="#">
          <i class="material-icons">language</i>
          <p>{{ __('RTL Support') }}</p>
        </a>
      </li> --}}
    </ul>
  </div>
</div>
