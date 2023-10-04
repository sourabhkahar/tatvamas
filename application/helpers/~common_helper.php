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

    // function get_status_option(){
    //     $stauts_Arr = ["1"=>'Yes', "0"=>'No'];
    //     return $stauts_Arr;
    // }
    
    function get_status_option(){
        $stauts_Arr = [ ""=>'Select Status',"appointed"=>'Appointed', "admitted"=>'Admitted',"cancelled"=>'Cancelled'];
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