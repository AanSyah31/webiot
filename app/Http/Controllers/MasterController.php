<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


date_default_timezone_set("Asia/Jakarta");

class MasterController extends Controller
{
    function hari_ini($date){
        $hari = $date;
     
        switch($hari){
            case 'Sun':
                $hari_ini = "Minggu";
            break;
     
            case 'Mon':			
                $hari_ini = "Senin";
            break;
     
            case 'Tue':
                $hari_ini = "Selasa";
            break;
     
            case 'Wed':
                $hari_ini = "Rabu";
            break;
     
            case 'Thu':
                $hari_ini = "Kamis";
            break;
     
            case 'Fri':
                $hari_ini = "Jumat";
            break;
     
            case 'Sat':
                $hari_ini = "Sabtu";
            break;
            
            default:
                $hari_ini = "Tidak di ketahui";		
            break;
        }     
        return $hari_ini;     
    }
    public static function Dashboard()
    {
        $sel_aws = DB::table('weather_station_list')
            ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
            ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
            ->orderByDesc('weather_station.id')
            ->take(1)
            ->get();
        $sel_aws = json_decode(json_encode($sel_aws), true);

        $aws_loc = DB::table('weather_station_list')->get();
        $aws_loc = json_decode(json_encode($aws_loc), true);

        $aws_tanggal    = '';
        $aws_jam        = '';
        $aws_hari       = '';
        foreach ($sel_aws as $value) {
            $aws_tanggal    = date('d-m-Y', strtotime($value['datetime']));
            $aws_jam        = date('H:i:s', strtotime($value['datetime']));
            $aws_hari       = date('D', strtotime($value['datetime']));
        }
        $aws_hari       = app('App\Http\Controllers\MasterController')->hari_ini($aws_hari);
        $aws_terakhir   = [
            'tanggal'   => $aws_tanggal,
            'jam'       => $aws_jam,
            'hari'      => $aws_hari
        ];
        return view('welcome', ['aws' => $sel_aws, 'aws_loc' => $aws_loc, 'updateterakhir' => $aws_terakhir, '']);
    }
    public static function FillLokasi(Request $request)
    {
        $sel_aws = DB::table('weather_station_list')
            ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
            ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
            ->orderByDesc('weather_station.id')
            ->where('weather_station_list.id', '=', $request['lokasi'])
            ->take(1)
            ->get();
        $sel_aws = json_decode(json_encode($sel_aws), true);

        $aws_loc = DB::table('weather_station_list')->get();
        $aws_loc = json_decode(json_encode($aws_loc), true);

        $aws_tanggal    = '';
        $aws_jam        = '';
        $aws_hari       = '';
        foreach ($sel_aws as $value) {
            $aws_tanggal    = date('d-m-Y', strtotime($value['datetime']));
            $aws_jam        = date('H:i:s', strtotime($value['datetime']));
            $aws_hari       = date('D', strtotime($value['datetime']));
        }
        $aws_hari       = app('App\Http\Controllers\MasterController')->hari_ini($aws_hari);
        $aws_terakhir   = [
            'tanggal'   => $aws_tanggal,
            'jam'       => $aws_jam,
            'hari'      => $aws_hari
        ];
        return view('welcome', ['aws' => $sel_aws, 'aws_loc' => $aws_loc, 'updateterakhir' => $aws_terakhir, '']);
    }

    public static function Tabel()
    {
        $sel_aws = DB::table('weather_station_list')
            ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
            ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
            ->orderByDesc('weather_station.id')
            ->get();
        $sel_aws = json_decode(json_encode($sel_aws), true);

        return view('tabel', ['aws' => $sel_aws]);
    }

    public static function FilterTabel(Request $request)
    {
        $tglMulai       = $request->tglMulai;
        $tglSelesai     = $request->tglSelesai;
        
        $rules          = [
            'tglMulai'      => 'required|date',
            'tglSelesai'    => 'required|date'
        ];

        $message        = [
            'tglMulai.required'     => 'TANGGAL MULAI WAJIB DIISI',
            'tglMulai.date'         => 'FORMAT PENGISIAN HARUS DIISI DENGAN TANGGAL',
            'tglSelesai.required'   => 'TANGGAL SELESAI HARUS DIISI',
            'tglSelesai.date'       => 'FORMAT PENGISIAN HARUS DIISI DENGAN TANGGAL'
        ];
        
        $validator = Validator::make($request->all(), $rules, $message);

        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput($request->all())->with('error_select', 'Gagal');
        }
        else{
            $sel_aws = '';
            if(strtotime($tglMulai) < strtotime($tglSelesai)){ 
                $sel_aws = DB::table('weather_station_list')
                ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
                ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
                ->orderByDesc('weather_station.id')
                ->where(DB::raw("(DATE_FORMAT(weather_station.datetime,'%Y-%m-%d'))"), ">=", $tglMulai)
                ->where(DB::raw("(DATE_FORMAT(weather_station.datetime,'%Y-%m-%d'))"), "<=", $tglSelesai)
                ->get();
            }
            elseif(strtotime($tglMulai) > strtotime($tglSelesai)){
                $sel_aws = DB::table('weather_station_list')
                ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
                ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
                ->orderByDesc('weather_station.id')
                ->where(DB::raw("(DATE_FORMAT(weather_station.datetime,'%Y-%m-%d'))"), "<=", $tglMulai)
                ->where(DB::raw("(DATE_FORMAT(weather_station.datetime,'%Y-%m-%d'))"), ">=", $tglSelesai)
                ->get();
            }
            else{
                $sel_aws = DB::table('weather_station_list')
                ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
                ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
                ->orderByDesc('weather_station.id')
                ->where(DB::raw("(DATE_FORMAT(weather_station.datetime,'%Y-%m-%d'))"), "==", $tglMulai)
                ->get();
            }
           
            $sel_aws = json_decode(json_encode($sel_aws), true);            

            return view('tabel', ['aws' => $sel_aws]);
        }
    }

    public static function Grafik()
    {
        $sel_aws = DB::table('weather_station_list')
            ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
            ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
            ->orderByDesc('weather_station.id')
            ->get();
        $sel_aws = json_decode(json_encode($sel_aws), true);


        #PERBULAN
        $awsPerbulan        = '';
        $arrAwsPerbulan     = '';
        $filBulan           = date('m');

        #PERMINGGU
        $awsPerminggu       = '';
        $arrAwsPerminggu    = '';
        $filMinggu          = date('d-m-Y', strtotime("-2 week"));

        #PERHARIINI
        $awsPerhariini      = '';
        $arrAwsPerhariini   = '';
        $filHariini         = date('d-m-Y', strtotime("2021-11-13"));

        foreach ($sel_aws as $value) {
            $perBulan   = date('m', strtotime($value['datetime']));

            #PERHARIINI            
            $perHariini  = date('d-m-Y', strtotime($value['datetime']));

            if (strtotime($perHariini) > strtotime($filHariini)) {

                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                $awsPerhariini .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                      
                                ],";
            }

            #PERMINGGU
            $perMinggu  = date('d-m-Y', strtotime($value['datetime']));
            if (strtotime($perMinggu) > strtotime($filMinggu)) {
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                $awsPerminggu .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                
                                ],";
            }

            #PERBULAN
            if ($filBulan == $perBulan) {
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                $awsPerbulan .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                     
                                ],";
            }
        }
        $arrAwsPerhariini = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerhariini
        ];

        $arrAwsPerminggu = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerminggu
        ];

        $arrAwsPerbulan = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerbulan
        ];

        return view('grafik', [
            'arrAwsHariIni'     => $arrAwsPerhariini,
            'arrAwsPerminggu'   => $arrAwsPerminggu,
            'arrAwsPerbulan'    => $arrAwsPerbulan,
        ]);
    }

    public static function PerHari(Request $request)
    {
        $judulHariini       = '';
        if ($request['pilih_data'] == 'suhu_udara') {
            $judulHariini   = 'Suhu Udara';
        } elseif ($request['pilih_data'] == 'kelembaban_udara') {

            $judulHariini   = 'Kelembaban Udara';
        } else {
            $judulHariini   = 'Curah Hujan';
        }

        $sel_aws = DB::table('weather_station_list')
            ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
            ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
            ->orderByDesc('weather_station.id')
            ->get();
        $sel_aws = json_decode(json_encode($sel_aws), true);


        #PERHARIINI
        $awsPerhariini      = '';
        $arrAwsPerhariini   = '';
        $filHariini         = date('d-m-Y', strtotime("yesterday"));

        #PERMINGGU
        $awsPerminggu       = '';
        $arrAwsPerminggu    = '';
        $filMinggu          = date('d-m-Y', strtotime("-1 week"));

        #PERBULAN
        $awsPerbulan        = '';
        $arrAwsPerbulan     = '';
        $filBulan           = date('m');

        foreach ($sel_aws as $value) {
            $perBulan   = date('m', strtotime($value['datetime']));

            #PERHARIINI            
            $perHariini  = date('d-m-Y', strtotime($value['datetime']));

            if (strtotime($perHariini) > strtotime($filHariini)) {

                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                if ($request['pilih_data'] == 'suhu_udara') {
                    $awsPerhariini .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                      
                                    ],";
                } elseif ($request['pilih_data'] == 'kelembaban_udara') {
                    $awsPerhariini .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['h'] . ", f:'" . $value['h'] . " % " . $value['loc'] . "'}                                      
                                    ],";
                } else {
                    $awsPerhariini .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['r'] * $value['rain_cal'] . ", f:'" . $value['r'] * $value['rain_cal'] . " mm " . $value['loc'] . "'}                                      
                                    ],";
                }
            }

            #PERMINGGU
            $perMinggu  = date('d-m-Y', strtotime($value['datetime']));
            if (strtotime($perMinggu) > strtotime($filMinggu)) {
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                $awsPerminggu .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                
                                ],";
            }

            #PERBULAN
            if ($filBulan == $perBulan) {
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                $awsPerbulan .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                     
                                ],";
            }
        }
        $arrAwsPerhariini = [
            'judul'     => $judulHariini,
            'data'      => $awsPerhariini
        ];

        $arrAwsPerminggu = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerminggu
        ];

        $arrAwsPerbulan = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerbulan
        ];

        $reqfillHariini = array();
        $reqfillHariini = [
            'value' => $request['pilih_data'],
            'data'  => $judulHariini
        ];
        return view('grafik', [
            'arrAwsHariIni'     => $arrAwsPerhariini,
            'arrAwsPerminggu'   => $arrAwsPerminggu,
            'arrAwsPerbulan'    => $arrAwsPerbulan,
            'fillHariini'       => $reqfillHariini
        ]);
    }

    
    public static function PerMinggu(Request $request)
    {
        $judulMinggu       = '';
        if ($request['pilih_data'] == 'suhu_udara') {
            $judulMinggu   = 'Suhu Udara';
        } elseif ($request['pilih_data'] == 'kelembaban_udara') {

            $judulMinggu   = 'Kelembaban Udara';
        } else {
            $judulMinggu   = 'Curah Hujan';
        }

        $sel_aws = DB::table('weather_station_list')
            ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
            ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
            ->orderByDesc('weather_station.id')
            ->get();
        $sel_aws = json_decode(json_encode($sel_aws), true);


        #PERHARIINI
        $awsPerhariini      = '';
        $arrAwsPerhariini   = '';
        $filHariini         = date('d-m-Y', strtotime("yesterday"));

        #PERMINGGU
        $awsPerminggu       = '';
        $arrAwsPerminggu    = '';
        $filMinggu          = date('d-m-Y', strtotime("-1 week"));

        #PERBULAN
        $awsPerbulan        = '';
        $arrAwsPerbulan     = '';
        $filBulan           = date('m');

        foreach ($sel_aws as $value) {
            $perBulan   = date('m', strtotime($value['datetime']));

            #PERHARIINI            
            $perHariini  = date('d-m-Y', strtotime($value['datetime']));

            if (strtotime($perHariini) > strtotime($filHariini)) {
                if (strtotime($perHariini) > strtotime($filHariini)) {

                    $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                    $jam        = date('H:i', strtotime($value['datetime']));
                    $awsPerhariini .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                      
                                    ],";
                }
            }

            #PERMINGGU
            $perMinggu  = date('d-m-Y', strtotime($value['datetime']));
            if (strtotime($perMinggu) > strtotime($filMinggu)) {   
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                if ($request['pilih_data'] == 'suhu_udara') {                 
                    $awsPerminggu .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                
                                    ],";
                } elseif ($request['pilih_data'] == 'kelembaban_udara') {
                    $awsPerminggu .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['h'] . ", f:'" . $value['h'] . " % " . $value['loc'] . "'}                                      
                                    ],";
                } else {
                    $awsPerminggu .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['r'] * $value['rain_cal'] . ", f:'" . $value['r'] * $value['rain_cal'] . " mm " . $value['loc'] . "'}                                      
                                    ],";
                }
            }

            #PERBULAN
            if ($filBulan == $perBulan) {
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                $awsPerbulan .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                     
                                ],";
            }
        }
        $arrAwsPerhariini = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerhariini
        ];

        $arrAwsPerminggu = [
            'judul'     => $judulMinggu,
            'data'      => $awsPerminggu
        ];

        $arrAwsPerbulan = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerbulan
        ];

        $reqfillMinggu = array();
        $reqfillMinggu = [
            'value' => $request['pilih_data'],
            'data'  => $judulMinggu
        ];
        return view('grafik', [
            'arrAwsHariIni'     => $arrAwsPerhariini,
            'arrAwsPerminggu'   => $arrAwsPerminggu,
            'arrAwsPerbulan'    => $arrAwsPerbulan,
            'fillMinggu'       => $reqfillMinggu
        ]);
    }

    public static function PerBulan(Request $request)
    {
        $judulBulan       = '';
        if ($request['pilih_data'] == 'suhu_udara') {
            $judulBulan   = 'Suhu Udara';
        } elseif ($request['pilih_data'] == 'kelembaban_udara') {

            $judulBulan   = 'Kelembaban Udara';
        } else {
            $judulBulan   = 'Curah Hujan';
        }

        $sel_aws = DB::table('weather_station_list')
            ->join('weather_station', 'weather_station_list.id', '=', 'weather_station.idws')
            ->select('weather_station.*', 'weather_station_list.rain_cal as rain_cal', 'weather_station_list.loc as loc')
            ->orderByDesc('weather_station.id')
            ->get();
        $sel_aws = json_decode(json_encode($sel_aws), true);


        #PERHARIINI
        $awsPerhariini      = '';
        $arrAwsPerhariini   = '';
        $filHariini         = date('d-m-Y', strtotime("yesterday"));

        #PERMINGGU
        $awsPerminggu       = '';
        $arrAwsPerminggu    = '';
        $filMinggu          = date('d-m-Y', strtotime("-1 week"));

        #PERBULAN
        $awsPerbulan        = '';
        $arrAwsPerbulan     = '';
        $filBulan           = date('m');

        foreach ($sel_aws as $value) {
            $perBulan   = date('m', strtotime($value['datetime']));

            #PERHARIINI            
            $perHariini  = date('d-m-Y', strtotime($value['datetime']));

            if (strtotime($perHariini) > strtotime($filHariini)) {
                if (strtotime($perHariini) > strtotime($filHariini)) {

                    $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                    $jam        = date('H:i', strtotime($value['datetime']));
                    $awsPerhariini .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                      
                                    ],";
                }
            }

            #PERMINGGU
            $perMinggu  = date('d-m-Y', strtotime($value['datetime']));
            if (strtotime($perMinggu) > strtotime($filMinggu)) {
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                $awsPerminggu .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                
                                ],";
            }

            #PERBULAN
            if ($filBulan == $perBulan) {
                $tanggal    = date('H:i d-m-Y', strtotime($value['datetime']));
                $jam        = date('H:i', strtotime($value['datetime']));
                if ($request['pilih_data'] == 'suhu_udara') {                 
                    $awsPerbulan .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['t'] . ", f:'" . $value['t'] . " °C " . $value['loc'] . "'}                                
                                    ],";
                } elseif ($request['pilih_data'] == 'kelembaban_udara') {
                    $awsPerbulan .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['h'] . ", f:'" . $value['h'] . " % " . $value['loc'] . "'}                                      
                                    ],";
                } else {
                    $awsPerbulan .= "[{v: '" . $jam . "', f:'" . $tanggal . "'}, {v:" . $value['r'] * $value['rain_cal'] . ", f:'" . $value['r'] * $value['rain_cal'] . " mm " . $value['loc'] . "'}                                      
                                    ],";
                }
            }
        }
        $arrAwsPerhariini = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerhariini
        ];

        $arrAwsPerminggu = [
            'judul'     => 'Suhu Udara',
            'data'      => $awsPerminggu
        ];

        $arrAwsPerbulan = [
            'judul'     => $judulBulan,
            'data'      => $awsPerbulan
        ];

        $reqfillBulan = array();
        $reqfillBulan = [
            'value' => $request['pilih_data'],
            'data'  => $judulBulan
        ];
        return view('grafik', [
            'arrAwsHariIni'     => $arrAwsPerhariini,
            'arrAwsPerminggu'   => $arrAwsPerminggu,
            'arrAwsPerbulan'    => $arrAwsPerbulan,
            'fillBulan'         => $reqfillBulan
        ]);
    }
}
