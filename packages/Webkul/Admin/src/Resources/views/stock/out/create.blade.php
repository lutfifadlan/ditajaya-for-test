<x-admin::layouts>
    <!-- Page Title -->
    <x-slot:title>
        Create Stock Out
    </x-slot>

    {!! view_render_event('admin.settings.warehouses.create.form.before') !!}

    <form action="{{ route('admin.stock.stockout.store') }}" method="POST">
        @csrf
        <div class="flex flex-col gap-4">
            <div
                class="flex items-center justify-between rounded-lg border border-gray-200 bg-white px-4 py-2 text-sm dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300">
                <div class="flex flex-col gap-2">
                    <div class="flex cursor-pointer items-center">
                        {!! view_render_event('admin.settings.warehouses.create.breadcrumbs.before') !!}

                        <!-- Breadcrumbs -->
                        <x-admin::breadcrumbs name="stock.stockout.create" />

                        {!! view_render_event('admin.settings.warehouses.create.breadcrumbs.after') !!}
                    </div>

                    <div class="text-xl font-bold dark:text-white">
                        Create Stock Out
                    </div>
                </div>

                <div class="flex items-center gap-x-2.5">
                    <div class="flex items-center gap-x-2.5">
                        {!! view_render_event('admin.settings.warehouses.create.save_button.before') !!}

                        <!-- Create button for person -->
                        <button type="submit" class="primary-button">
                            Save Stock Out
                        </button>

                        {!! view_render_event('admin.settings.warehouses.create.save_button.after') !!}
                    </div>
                </div>
            </div>

            <div class="flex gap-2.5 max-xl:flex-wrap">
                <!-- Left sub-component -->
                <div class="flex flex-1 flex-col gap-2 max-xl:flex-auto">
                    <div
                        class="box-shadow rounded-lg border border-gray-200 bg-white p-4 dark:border-gray-800 dark:bg-gray-900">
                        <p class="mb-4 text-base font-semibold text-gray-800 dark:text-white">
                            Stock Out Information
                        </p>
                        <div class="grid grid-cols-3 gap-4">
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="no_inv">Title</label>
                                <input type="text" name="no_inv" required
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="no_inv" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="date">Date</label>
                                <input type="date" name="date" required
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="date" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="warehouse_location_id">Warehouse Location</label>
                                <select name="warehouse_location_id" id="warehouse_location_id" required
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <option value="">Select a Warehouse Location</option>
                                    @foreach ($warehouseLocations as $location)
                                        <option value="{{ $location->id }}">{{ $location->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            {{-- <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="product_id">Product</label>
                                <select name="product_id" id="product_id" required
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <option value="">Select a Product</option>
                                    @foreach ($products as $product)
                                        <option value="{{ $product->id }}">{{ $product->name }}</option>
                                    @endforeach
                                </select>
                            </div> --}}

                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="product_id">Product ID</label>
                                <input type="text" name="product_id" required onkeydown="onKeyDown(event, this)"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="product_id" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="product_id">Scanned Products</label>
                                <ul class="list-disc" id="scan-list">

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right sub-component -->
            </div>
        </div>
    </form>

    {!! view_render_event('admin.settings.warehouses.create.form.after') !!}
    <script>
        document.getElementById("product_id").addEventListener("keydown", function(e) {
            if (e.key === "Enter") {
                console.log("Enter key pressed!");
            }
            console.log(e.key)
        });

        async function onKeyDown(event, input) {

            if (event.key === "Enter") {
                event.preventDefault();
                const id = input.value;
                await fetch(`{{ url('api/product/get-barcode/') }}/` + id).then(response => response.json())
                    .then(data => {
                        console.log(data)
                        const list = document.getElementById("scan-list");
                        list.insertAdjacentHTML("beforeend", `<li>${data.product.name}</li>`);
                        list.insertAdjacentHTML("beforeend",
                            `<input type="hidden" name="stock_id[]" value="${data.id}" />`);
                    }).catch((error) => {
                        alert("Product not found");
                        console.log(error)
                    });

            }
        }
    </script>
</x-admin::layouts>
