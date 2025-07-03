@push('styles')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/south-street/jquery-ui.css" rel="stylesheet">
    <style>
        .select2-container .select2-selection--single {
            height: 40px;
            display: flex;
            align-items: center;
        }

        .select2-container--default .select2-selection--single .select2-selection__arrow {
            top: unset;
        }

        .kbw-signature {
            width: 100%;
            height: 100px;
        }
    </style>
@endpush
@push('scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="{{ asset('signature/js/jquery.signature.min.js') }}"></script>
    <script>
        document.getElementById("product_id").addEventListener("keydown", function(e) {
            if (e.key === "Enter") {
                console.log("Enter key pressed!");
            }

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
        async function onSubmit() {

        }
    </script>
@endpush
<x-admin::layouts>
    <!-- Page Title -->
    <x-slot:title>
        Create Technician Activity
    </x-slot>

    {!! view_render_event('admin.settings.warehouses.create.form.before') !!}

    <form action="{{ route('admin.technician.store') }}" method="POST" enctype="multipart/form-data" onsubmit="">
        @csrf
        <div class="flex flex-col gap-4">
            <div
                class="flex items-center justify-between rounded-lg border border-gray-200 bg-white px-4 py-2 text-sm dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300">
                <div class="flex flex-col gap-2">
                    <div class="flex cursor-pointer items-center">
                        {!! view_render_event('admin.settings.warehouses.create.breadcrumbs.before') !!}

                        <!-- Breadcrumbs -->
                        <x-admin::breadcrumbs name="technician.create" />

                        {!! view_render_event('admin.settings.warehouses.create.breadcrumbs.after') !!}
                    </div>

                    <div class="text-xl font-bold dark:text-white">
                        Create Technician Activity
                    </div>
                </div>

                <div class="flex items-center gap-x-2.5">
                    <div class="flex items-center gap-x-2.5">
                        {!! view_render_event('admin.settings.warehouses.create.save_button.before') !!}

                        <!-- Create button for person -->
                        <button type="submit" class="primary-button">
                            Save Technician Activity
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
                            Technician Activity Information
                        </p>
                        <div class="grid grid-cols-3 max-sm:grid-cols-1 gap-x-4 gap-y-2">
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="organization_id">Organization</label>
                                <select name="organization_id" id="organization_id" required
                                    class="w-full select2 rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <option value="">Select an Organization</option>
                                    @foreach ($organizations as $organization)
                                        <option value="{{ $organization->id }}">{{ $organization->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="person_id">Person</label>
                                <select name="person_id" id="person_id" required
                                    class="w-full select2 rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <option value="">Select Person</option>
                                    @foreach ($persons as $person)
                                        <option value="{{ $person->id }}">{{ $person->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white required"
                                    for="product_id">Product</label>
                                <select name="product_id" id="product_id" required
                                    class="w-full select2 rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <option value="">Select Product</option>
                                    @foreach ($products as $product)
                                        <option value="{{ $product->id }}">{{ $product->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="brand">Brand & Model</label>
                                <input type="text" name="brand"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="brand" value="">
                            </div>

                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="mechine_sn">Machine S/N</label>
                                <input type="text" name="mechine_sn"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="mechine_sn" value="">
                            </div>

                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="running_hours">Running Hours</label>
                                <input type="text" name="running_hours"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="running_hours" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="load_hours">Load Hours</label>
                                <input type="text" name="load_hours"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="load_hours" value="">
                            </div>
                            {{-- <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="ambient_temp">Ambient Temperature</label>
                                <input type="text" name="ambient_temp"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="ambient_temp" value="">
                            </div> --}}
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="ambient_temp">Ambient Temperature</label>
                                <div>
                                    <input type="text" name="ambient_temp" id="ambient_temp"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="amp_powerline">Ampere Power Line</label>
                                <input type="text" name="amp_powerline"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="amp_powerline" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="voltage">Voltage</label>
                                <input type="text" name="voltage"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="voltage" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="amp">AMP. (Load)</label>
                                <input type="text" name="amp"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="amp" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="unload">(Unload)</label>
                                <input type="text" name="unload"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="unload" value="">
                            </div>
                            <div class="mb-4 w-full">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="motor_power">Motor Power</label>
                                <input type="text" name="motor_power"
                                    class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"
                                    id="motor_power" value="">
                            </div>

                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="max_press">
                                    Max. Pressure
                                </label>
                                <div>
                                    <input type="text" name="max_press" id="max_press"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        BAR</span>
                                </div>
                            </div>

                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="cut_out">CUT - OUT</label>
                                <div>
                                    <input type="text" name="cut_out" id="cut_out"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        BAR</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="cut_in">CUT - IN</label>
                                <div>
                                    <input type="text" name="cut_in" id="cut_in"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        BAR</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="cut_in">Motor Overload Setting</label>
                                <div class="flex flex-row gap-2 items-center">
                                    <span>Ampere</span>
                                    <input type="text" name="ampere" id="ampere"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span>R</span>
                                    <input type="text" name="r" id="r"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span>S</span>
                                    <input type="text" name="s" id="s"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span>T</span>
                                    <input type="text" name="t" id="t"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="inlet_screw">Inlet Screw</label>
                                <div>
                                    <input type="text" name="inlet_screw" id="inlet_screw"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="inlet_air_cooler">Inlet Air Cooler</label>
                                <div>
                                    <input type="text" name="inlet_air_cooler" id="inlet_air_cooler"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="inlet_oil_cooler">Inlet Oil Cooler</label>
                                <div>
                                    <input type="text" name="inlet_oil_cooler" id="inlet_oil_cooler"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="outlet_compressor">Outlet Compressor</label>
                                <div>
                                    <input type="text" name="outlet_compressor" id="outlet_compressor"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="inlet_dryer">Inlet Dryer</label>
                                <div>
                                    <input type="text" name="inlet_dryer" id="inlet_dryer"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="refrigerant_type">Refrigerant / Desiccant Type</label>
                                <div>
                                    <input type="text" name="refrigerant_type" id="refrigerant_type"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="level_oil_check">Level Oil Check</label>
                                <div>
                                    <input type="text" name="level_oil_check" id="level_oil_check"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="leakage_check">Leakage Check</label>
                                <div>
                                    <input type="text" name="leakage_check" id="leakage_check"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="outlet_screw">Outlet Screw</label>
                                <div>
                                    <input type="text" name="outlet_screw" id="outlet_screw"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="outlet_air_cooler">Outlet Air Cooler</label>
                                <div>
                                    <input type="text" name="outlet_air_cooler" id="outlet_air_cooler"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="outlet_oil_cooler">Outlet Oil Cooler</label>
                                <div>
                                    <input type="text" name="outlet_oil_cooler" id="outlet_oil_cooler"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="outlet_dryer">Outlet Dryer</label>
                                <div>
                                    <input type="text" name="outlet_dryer" id="outlet_dryer"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="dew_point">Dew Point</label>
                                <div>
                                    <input type="text" name="dew_point" id="dew_point"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                    <span
                                        class="absolute right-3 top-1/2 mt-3 -translate-y-1/2 flex items-center justify-center h-[38px] text-gray-500 dark:text-gray-400 text-sm">
                                        °C</span>
                                </div>
                            </div>

                            <div>
                            </div>
                            <div class="mb-4 w-full col-span-3">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="note">Notes</label>
                                <div>
                                    <textarea name="note" id="note"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"></textarea>
                                </div>
                            </div>
                            <div class="mb-4 w-full col-span-3">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="suggestion">Suggestion</label>
                                <div>
                                    <textarea name="suggestion" id="suggestion"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400"></textarea>
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="photos">Photos (multiple)</label>
                                <div>
                                    <input type="file" multiple accept="image/*" name="photos[]" id="photos"
                                        class="w-full rounded border border-gray-200 px-2.5 py-2 pr-10 text-sm font-normal text-gray-800 transition-all hover:border-gray-400 focus:border-gray-400 dark:border-gray-800 dark:bg-gray-900 dark:text-gray-300 dark:hover:border-gray-400 dark:focus:border-gray-400">
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="cust_sign">Customer Signature</label>
                                <div>
                                    <div id="customer_sig"></div>
                                    <input type="hidden" id="svgSigCustomer" name="cust_sign">
                                </div>
                            </div>
                            <div class="mb-4 w-full relative">
                                <label
                                    class="mb-1.5 flex items-center gap-1 text-sm font-normal text-gray-800 dark:text-white"
                                    for="user_sign">Technician Signature</label>
                                <div>
                                    <div id="sig"></div>
                                    <input type="hidden" id="svgSig" name="user_sign">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right sub-component -->
            </div>
        </div>
    </form>

    {!! view_render_event('admin.settings.warehouses.create.form.after') !!}

</x-admin::layouts>

{{-- 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/south-street/jquery-ui.css" rel="stylesheet">
    <link href="css/jquery.signature.css" rel="stylesheet">
    <style>
        .kbw-signature {
            width: 400px;
            height: 200px;
        }
    </style>
</head>

<body>
    <div id="sig"></div>
    <p style="clear: both;">
        <button id="disable">Disable</button>
        <button id="clear">Clear</button>
        <button id="json">To JSON</button>
        <button id="svg">To SVG</button>
    </p>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="{{ asset('signature/js/jquery.signature.min.js') }}"></script>
    <script>
        $(function() {
            var sig = $('#sig').signature();
            $('#disable').click(function() {
                var disable = $(this).text() === 'Disable';
                $(this).text(disable ? 'Enable' : 'Disable');
                sig.signature(disable ? 'disable' : 'enable');
            });
            $('#clear').click(function() {
                sig.signature('clear');
            });
            $('#json').click(function() {
                alert(sig.signature('toJSON'));
            });
            $('#svg').click(function() {
                alert(sig.signature('toSVG'));
            });
        });
    </script>
</body>

</html> --}}
