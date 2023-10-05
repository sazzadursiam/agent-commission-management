<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
    <div class="app-brand demo">
        <a href="{{route('admin.dashboard')}}" class="app-brand-link">
            <span class="app-brand-logo demo">

            </span>
            <span class="app-brand-text demo menu-text fw-bolder ms-2">ACM</span>
        </a>

        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
    </div>

    <div class="menu-inner-shadow"></div>

    <ul class="menu-inner py-1">
        <li class="menu-item @yield('dashboard_menu_active')">
            <a href="{{route('admin.dashboard')}}" class="menu-link">
                <i class="menu-icon fa-solid fa-house"></i>
                <div>Dashboard</div>
            </a>
        </li>

        <li class="menu-item @yield('agent_menu_active')">
            <a href="{{route('admin.agents.index')}}" class="menu-link">
                <i class="menu-icon fas fa-users"></i>
                <div>Agents</div>
            </a>
        </li>

        <li class="menu-item @yield('product_menu_active')">
            <a href="{{route('admin.products.index')}}" class="menu-link">
                <i class="menu-icon fab fa-product-hunt"></i>
                <div>Products</div>
            </a>
        </li>

        <li class="menu-item @yield('knowledgebase_menu_active')">
            <a href="{{route('admin.knowledge-base.index')}}" class="menu-link">
                <i class="menu-icon fa-solid fa-book"></i>
                <div>Knowledgebase</div>
            </a>
        </li>
        <li class="menu-item @yield('stock_menu_active')">
            <a href="{{route('admin.stock.index')}}" class="menu-link">
                <i class="menu-icon fa-solid fa-cubes-stacked"></i>
                <div>Stock</div>
            </a>
        </li>
        <li class="menu-item @yield('warehouse_menu_active')">
            <a href="{{route('admin.warehouse-stock')}}" class="menu-link">
                <i class="menu-icon fa-solid fa-warehouse"></i>
                <div>Warehouse Stock</div>
            </a>
        </li>
        <li class="menu-item @yield('order_menu_active')">
            <a href="{{route('admin.orders.index')}}" class="menu-link">
                <i class="menu-icon fa-brands fa-first-order-alt"></i>
                <div>Orders</div>
            </a>
        </li>
        <li class="menu-item @yield('withdraw_request_menu_active')">
            <a href="{{route('admin.withdraw-request')}}" class="menu-link">
                <i class="menu-icon fa-solid fa-money-bill-transfer"></i>
                <div>Withdrawal Request</div>
            </a>
        </li>
        <li class="menu-item @yield('sales_report_request_menu_active')">
            <a href="{{route('admin.sales-report')}}" class="menu-link">
                <i class="menu-icon fa-solid fa-industry"></i>
                <div>Sales Report</div>
            </a>
        </li>

    </ul>
</aside>