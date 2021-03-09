<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('admin') }}">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="icofont-electron"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Atom <sub>Technologies</sub></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
    <a class="nav-link" href="{{ route('admin') }}">
            <i class="icofont-imac"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('about_us') }}">
            <i class="icofont-ui-user"></i>
            <span>About Us</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('contect_us') }}">
            <i class="icofont-contacts"></i>
            <span>Contact Us</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('banner') }}">
            <i class="icofont-file-tiff"></i>
            <span>Banners</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('blog') }}">
            <i class="icofont-paper"></i>
            <span>Blog</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('galary') }}">
            <i class="icofont-multimedia"></i>
            <span>Galary</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('testimonial') }}">
            <i class="icofont-businessman"></i>
            <span>Testimonial</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('team') }}">
            <i class="icofont-users"></i>
            <span>Team</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('user') }}">
            <i class="icofont-user-alt-7"></i>
            <span>User</span>
        </a>
    </li>
    <hr class="sidebar-divider">
    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
            aria-controls="collapseTwo">
            <i class="icofont-cubes"></i>
            <span>Items</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Custom Components:</h6>
                <a class="collapse-item" href="#">Category</a>
                <a class="collapse-item" href="#">Product</a>
            </div>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('order') }}">
            <i class="icofont-grocery"></i>
            <span>Orders</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="{{ route('faq') }}">
            <i class="icofont-flag"></i>
            <span>FAQs</span>
        </a>
    </li>
    <hr class="sidebar-divider">
    <div class="sidebar-heading">
        Settings
    </div>
    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('seting') }}" data-toggle="collapse" data-target="#collapseUtilities"
            aria-expanded="true" aria-controls="collapseUtilities">
            <i class="icofont-gears"></i>
            <span>Settings</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Settings</h6>
                <a class="collapse-item" href="utilities-color.html">Setting</a>
                <h6 class="collapse-header">Templates</h6>
                <a class="collapse-item" href="#">Mail Template</a>
            </div>
        </div>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>