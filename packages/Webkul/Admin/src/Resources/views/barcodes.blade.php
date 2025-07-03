<!DOCTYPE html>
<html>

<head>
    <title>Barcodes</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <style>
        body {
            font-family: sans-serif;
            text-align: center;
        }

        .barcode-container {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            /* 5 barcodes per row */
            gap: 10px;
            page-break-inside: avoid;
        }

        .barcode {
            text-align: center;
            padding: 10px;
            border: 1px solid #000;
            /* Optional, for visual reference */
        }

        .page-break {
            page-break-after: always;
        }

        /* Print styles */
        @media print {
            body {
                font-family: Arial, sans-serif;
            }

            .barcode-container {
                grid-template-columns: repeat(5, 1fr);
                /* Adjust columns as needed */
                gap: 15px;
                page-break-inside: avoid;
            }

            .barcode {
                text-align: center;
                width: 100%;
                border: 1px solid #000;
                /* Optional */
            }

            .page-break {
                page-break-after: always;
            }
        }
    </style>
</head>

<body>
    <table style="width : 100%">
        @foreach ($barcodesChunks as $index => $barcodes)
            <tr>
                @foreach ($barcodes as $barcode)
                    <td style="padding: 10px">
                        <img src="data:image/png;base64,' . {{ $barcode['barcode'] }} . '" alt="barcode"
                            style="padding: 0px" />';
                        <p style="margin-top: -10px;text-align: center">{{ $barcode['id'] }}</p>
                    </td>
                @endforeach
            </tr>
        @endforeach
    </table>
</body>

</html>
