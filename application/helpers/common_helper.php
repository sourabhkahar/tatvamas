<?php
defined('BASEPATH') OR exit('No direct script access allowed');
    function pf($value='',$type=false,$debug=false)
    {
        echo "<pre>";
        if($type){
            print_r(var_dump($value));
        }else{
            print_r($value);
        }
        if(!$debug){
            exit();
        }
    }

    function get_status_option(){
        $stauts_Arr = ["1"=>'Yes', "0"=>'No'];
        return $stauts_Arr;
    }
    function get_timslot_option(){
        $start = "00:00"; //you can write here 00:00:00 but not need to it
        $end = "21:00";
        $stauts_Arr = [];

        // $tStart = strtotime($start);
        // $tEnd = strtotime($end);
        // $tNow = $tStart;
        // while($tNow <= $tEnd){
        //     $stauts_Arr[date("h:i:s",$tNow)]=date("h:i:s A",$tNow);
        //     $tNow = strtotime('+5 minutes',$tNow);
        // }
        $start = 8;
        $end = 20;
        $time_lap = 60;
        $slotNo = 1;
        $disabledSlotLimit = 2;

        // Accessing DB instance in helper function
        $ci=& get_instance();
        $ci->load->database(); 

        for($hours=$start; $hours<=$end; $hours++)
        {
            for($mins=0; $mins<60; $mins+=$time_lap)
            { 
                $starttime = str_pad($hours,2,'0',STR_PAD_LEFT).':'.str_pad($mins,2,'0',STR_PAD_LEFT).':00';
                $Endtime = str_pad($hours + 1,2,'0',STR_PAD_LEFT).':'.str_pad($mins,2,'0',STR_PAD_LEFT).':00';
                $am_pm = 'AM';
                if ($hours > 11) {
                    $am_pm = 'PM';
                }
                
                $sql = "SELECT * 
                FROM mstr_patient where slot_no = $slotNo AND appointment_date = cast(DATE_FORMAT(now(), '%y-%m-%d') as date) "; 
                $query = $ci->db->query($sql);
                $row = $query->result();

                $stauts_Arr[$slotNo]= [
                                        'date' => date("h:i",strtotime($starttime))." ".$am_pm." - ".date("h:i",strtotime($Endtime))." ".$am_pm,
                                        'active'=> (count($row) == $disabledSlotLimit)? 'disabled':'disabled'
                                      ];

                $slotNo++;
            }
        }
        // $stauts_Arr["21:00:00"]= date("h:i",strtotime("21:00:00"))." PM";

        return $stauts_Arr;
    }
    
    function get_patien_status_option(){
        $stauts_Arr = [ ""=>'Select Status',"appointed"=>'New Appointment', "admitted"=>'Appointment',"cancelled"=>'New Patient',"discharged"=>'Therapy'];
        return $stauts_Arr;
    }
    
    function get_transaction_type(){
        return TRANSACTION_TYPE;
    }
    
    function general_date_format($dt='',$format='Y-m-d'){
        if($dt != ''){
            $date = date($format, strtotime($dt));
        }else{
            $date = date($format);
        }
        return $date;
    }

    function cr_dr_str($x="0.00"){
        if (filter_var($x, FILTER_VALIDATE_FLOAT) && $x >= 0) {
            $str = " Cr";
        }else if((float)$x == 0.00){
            $str = " Cr";
        }else{
            $str = " Dr";
        }
        
        // Convert the number to a string using the floatval function
        $string = floatval(abs($x));
         
        // Use the number_format function to format the string
        $formatted = number_format($string, 2, '.', '');
        return $formatted.$str;
    }

    function general_num_format($num=0, $dec=2){
        return number_format(floatval($num), $dec, '.', '');;
    }
?>