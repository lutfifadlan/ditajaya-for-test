<x-admin::layouts>

    <!-- Page Content -->
    <div class="flex flex-col gap-4">
        <div
            class="flex items-center justify-between rounded-lg border border-gray-200 bg-white px-4 py-2 text-sm dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300">
            <div class="flex flex-col gap-2">
                <div class="flex cursor-pointer items-center">
                    {!! view_render_event('admin.settings.roles.index.breadcrumbs.before') !!}

                    <!-- Breadcumbs -->
                    <x-admin::breadcrumbs name="technician.index" />

                    {!! view_render_event('admin.settings.roles.index.breadcrumbs.after') !!}
                </div>

                <div class="text-xl font-bold dark:text-white">
                    <!-- title -->
                    Technician Activity
                </div>
            </div>

            <div class="flex items-center gap-x-2.5">
                <!-- Create button Roles -->
                <div class="flex items-center gap-x-2.5">
                    {!! view_render_event('admin.settings.roles.index.create_button.before') !!}

                    @if (bouncer()->hasPermission('technician'))
                        <a href="{{ route('admin.technician.create') }}" class="primary-button">
                            Create Technician Activity
                        </a>
                    @endif

                    {!! view_render_event('admin.settings.roles.index.create_button.after') !!}
                </div>
            </div>
        </div>

        <x-admin::datagrid :src="route('admin.technician.index')">
            <!-- DataGrid Shimmer -->
            <x-admin::shimmer.datagrid />
        </x-admin::datagrid>
    </div>
</x-admin::layouts>
