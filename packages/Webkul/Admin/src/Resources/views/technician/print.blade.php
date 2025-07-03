@php
    use Carbon\carbon;
@endphp
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="{{ $locale = app()->getLocale() }}" dir="{{ in_array($locale, ['fa', 'ar']) ? 'rtl' : 'ltr' }}">

<head>
    <!-- meta tags -->
    <meta http-equiv="Cache-control" content="no-cache">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    @php
        $fontFamily = [
            'regular' => 'DejaVu Sans',
            'bold' => 'DejaVu Sans',
        ];
    @endphp

    <!-- lang supports inclusion -->
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            /* box-sizing: border-box; */
            font-family: {{ $fontFamily['regular'] }};
        }

        body {
            font-size: 10px;
            color: #091341;
            font-family: "{{ $fontFamily['regular'] }}";
        }

        b,
        th {
            font-family: "{{ $fontFamily['bold'] }}";
        }

        .page-content {
            padding: 12px;
        }

        .page-header {
            border-bottom: 1px solid #E9EFFC;
            text-align: center;
            font-size: 24px;
            text-transform: uppercase;
            color: #1d1d1d;
            padding: 24px 0;
            margin: 0;
        }

        .header-title {
            list-style: none;
        }

        .logo-container {
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .logo-container.rtl {
            left: auto;
            right: 20px;
        }

        .logo-container img {
            max-width: 100%;
            height: auto;
        }

        .page-header b {
            display: inline-block;
            vertical-align: middle;
        }

        .small-text {
            font-size: 7px;
        }

        table {
            width: 100%;
            border-spacing: 1px 0;
            border-collapse: separate;
            margin-bottom: 16px;
        }

        table thead th {
            background-color: #E9EFFC;
            color: #000DBB;
            padding: 6px 18px;
            text-align: left;
        }

        table.rtl thead tr th {
            text-align: right;
        }

        table tbody td {
            padding: 9px 18px;
            border-bottom: 1px solid #E9EFFC;
            text-align: left;
            vertical-align: top;
        }

        table.rtl tbody tr td {
            text-align: right;
        }

        .summary {
            width: 100%;
            display: inline-block;
        }

        .summary table {
            float: right;
            width: 250px;
            padding-top: 5px;
            padding-bottom: 5px;
            background-color: #E9EFFC;
            white-space: nowrap;
        }

        .summary table.rtl {
            width: 280px;
        }

        .summary table.rtl {
            margin-right: 480px;
        }

        .summary table td {
            padding: 5px 10px;
        }

        .summary table td:nth-child(2) {
            text-align: center;
        }

        .summary table td:nth-child(3) {
            text-align: right;
        }
    </style>
</head>

<body dir="{{ $locale }}">
    <div class="page">
        <!-- Header -->
        <div class="page-header">
            {{-- <img src="{{ asset('icon.png') }}" style="float: left;width:64px;" /> --}}
            <ul class="header-title">
                <li style="font-size: 16px">PT. DITAJAYA MITRA PERKASA</li>
                <li style="font-size: 12px;color:blue">www.ditajaya.com</li>
            </ul>
        </div>

        <div class="page-content">
            <table class="{{ app()->getLocale() }}">
                <tbody>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Service Visit Report
                            </b>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                {{ carbon::parse($technicianActivity->created_at)->format('d M Y') }}
                            </b>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- Invoice Information -->
            <table class="{{ app()->getLocale() }}">
                <tbody>

                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Customer :
                            </b>

                            <span>
                                {{ $technicianActivity->organization->name }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Contact Person :
                            </b>

                            <span>
                                {{ $technicianActivity->person->name }}
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Address :
                            </b>

                            <span>
                                {{ $technicianActivity->organization->address['address'] }}
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>

            <table class="{{ app()->getLocale() }}" style="border: 1px solid #E9EFFC; padding: 10px">
                <tbody>

                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Brand & Model :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->brand }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Voltage :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->voltage }}
                            </span>
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Machine S/N :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->mechine_sn }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Amp (Load) :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->amp }}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Running Hours :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->working_hours }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Amp (Unload) :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->unload }}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Load Hours :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->load_hours }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Motor Power :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->motor_power }}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Ambient Temp :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->ambient_temp }}
                                °C
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Max. Pressure :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->max_press }}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Ampere Power Line :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->amp_powerline }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Cut - Out :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->cut_out }} Bar
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;"></td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Cut - In :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->cut_in }} Bar
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table>
                <tbody>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                REMARKS
                            </b>
                        </td>

                    </tr>
                </tbody>
            </table>
            <table class="{{ app()->getLocale() }}" style="border: 1px solid #E9EFFC; padding: 10px">
                <tbody>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Motor Overload Setting :
                            </b>

                            @php
                                $data = json_decode($technicianActivity->motor_overload_setting);
                            @endphp
                            <span style="float: right">
                                {{ $data[0] }} <b>Ampere</b> <b>R</b> {{ $data[1] }} <b>S</b>
                                {{ $data[2] }} <b>T</b> {{ $data[3] }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                TEMPERATURE CHECK
                            </b>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">

                        </td>
                    </tr>

                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Inlet Screw
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->inlet_screw }} °C
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Inlet Air Cooler :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->inlet_air_cooler }} °C
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Outlet Screw
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->outlet_screw }} °C
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Outlet Air Cooler :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->outlet_air_cooler }} °C
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Inlet Oil Cooler
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->inlet_oil_cooler }} °C
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Outlet Compressor :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->outlet_compressor }} °C
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Outlet Oil Cooler
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->outlet_oil_cooler }} °C
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Refrigerant / Desiccant Type :
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->refrigerant_type }}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Inlet Dryer
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->inlet_dryer }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Dew Point
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->dew_point }}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Outlet Dryer
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->outlet_dryer }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;"></td>
                    </tr>
                </tbody>
            </table>
            <table class="{{ app()->getLocale() }}" style="border: 1px solid #E9EFFC; padding: 10px">
                <tbody>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Note
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->note }}
                            </span>
                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">

                            <b>
                                Suggestion
                            </b>

                            <span style="float: right">
                                {{ $technicianActivity->suggestion }}
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="{{ app()->getLocale() }}" style="border: 1px solid #E9EFFC; padding: 10px">
                <tbody>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <b>
                                Photos
                            </b>

                        </td>

                    </tr>
                    <tr>
                        @foreach ($photos as $item)
                            <td style="width: 20%;border: none;">
                                <img src="{{ $item }}" alt="" style="max-height: 60px">
                            </td>
                        @endforeach
                    </tr>
                </tbody>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <p>We certify that the work described above has been completed to our need and satisfaction.</p>

            <table class="{{ app()->getLocale() }}" style="border: 1px solid #E9EFFC; padding: 10px">
                <tbody>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <center>
                                <img src="{{ $technicianActivity->user_sign }}" alt=""
                                    style="max-height: 60px">
                            </center>

                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <center>
                                <img src="{{ $technicianActivity->cust_sign }}" alt=""
                                    style="max-height: 60px">
                            </center>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <center>
                                {{ auth()->user()->name }}
                            </center>

                        </td>
                        <td style="width: 50%; padding: 2px 18px;border:none;">
                            <center>
                                {{ $technicianActivity->person->name }}
                            </center>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- Billing & Shipping Address -->
            {{-- <table class="{{ $locale }}">
                <thead>
                    <tr>
                        @if ($quote->billing_address)
                            <th style="width: 50%;">
                                <b>
                                    @lang('admin::app.quotes.index.pdf.billing-address')
                                </b>
                            </th>
                        @endif

                        @if ($quote->shipping_address)
                            <th style="width: 50%">
                                <b>
                                    @lang('admin::app.quotes.index.pdf.shipping-address')
                                </b>
                            </th>
                        @endif
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        @if ($quote->billing_address)
                            <td style="width: 50%">
                                <div>{{ $quote->billing_address['address'] ?? '' }}</div>

                                <div>
                                    {{ $quote->billing_address['postcode'] ?? ('' . ' ' . $quote->billing_address['city'] ?? '') }}
                                </div>

                                <div>{{ $quote->billing_address['state'] ?? '' }}</div>

                                <div>{{ core()->country_name($quote->billing_address['country'] ?? '') }}</div>
                            </td>
                        @endif

                        @if ($quote->shipping_address)
                            <td style="width: 50%">
                                <div>{{ $quote->shipping_address['address'] ?? '' }}</div>

                                <div>
                                    {{ $quote->shipping_address['postcode'] ?? ('' . ' ' . $quote->shipping_address['city'] ?? '') }}
                                </div>

                                <div>{{ $quote->shipping_address['state'] ?? '' }}</div>

                                <div>{{ core()->country_name($quote->shipping_address['country'] ?? '') }}</div>
                            </td>
                        @endif
                    </tr>
                </tbody>
            </table> --}}

            <!-- Items -->
            {{-- <div class="items">
                <table class="{{ app()->getLocale() }}">
                    <thead>
                        <tr>
                            <th>
                                @lang('admin::app.quotes.index.pdf.sku')
                            </th>

                            <th>
                                @lang('admin::app.quotes.index.pdf.product-name')
                            </th>

                            <th>
                                @lang('admin::app.quotes.index.pdf.price')
                            </th>

                            <th>
                                @lang('admin::app.quotes.index.pdf.quantity')
                            </th>

                            <th>
                                @lang('admin::app.quotes.index.pdf.amount')
                            </th>

                            <th>
                                @lang('admin::app.quotes.index.pdf.discount')
                            </th>

                            <th>
                                @lang('admin::app.quotes.index.pdf.tax')
                            </th>

                            <th>
                                @lang('admin::app.quotes.index.pdf.grand-total')
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($quote->items as $item)
                            <tr>
                                <td>{{ $item->sku }}</td>

                                <td>
                                    {{ $item->name }}
                                </td>

                                <td>{!! core()->formatBasePrice($item->price, true) !!}</td>

                                <td class="text-center">{{ $item->quantity }}</td>

                                <td class="text-center">{!! core()->formatBasePrice($item->total, true) !!}</td>

                                <td class="text-center">{!! core()->formatBasePrice($item->discount_amount, true) !!}</td>

                                <td class="text-center">{!! core()->formatBasePrice($item->tax_amount, true) !!}</td>

                                <td class="text-center">{!! core()->formatBasePrice($item->total + $item->tax_amount - $item->discount_amount, true) !!}</td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div> --}}

            <!-- Summary Table -->
            {{-- <div class="summary">
                <table class="{{ app()->getLocale() }}">
                    <tbody>
                        <tr>
                            <td>@lang('admin::app.quotes.index.pdf.sub-total')</td>
                            <td>-</td>
                            <td>{!! core()->formatBasePrice($quote->sub_total, true) !!}</td>
                        </tr>

                        <tr>
                            <td>@lang('admin::app.quotes.index.pdf.tax')</td>
                            <td>-</td>
                            <td>{!! core()->formatBasePrice($quote->tax_amount, true) !!}</td>
                        </tr>

                        <tr>
                            <td>@lang('admin::app.quotes.index.pdf.discount')</td>
                            <td>-</td>
                            <td>{!! core()->formatBasePrice($quote->discount_amount, true) !!}</td>
                        </tr>

                        <tr>
                            <td>@lang('admin::app.quotes.index.pdf.adjustment')</td>
                            <td>-</td>
                            <td>{!! core()->formatBasePrice($quote->adjustment_amount, true) !!}</td>
                        </tr>

                        <tr>
                            <td><strong>@lang('admin::app.quotes.index.pdf.grand-total')</strong></td>
                            <td><strong>-</strong></td>
                            <td><strong>{!! core()->formatBasePrice($quote->grand_total, true) !!}</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div> --}}
        </div>
    </div>
</body>

</html>
