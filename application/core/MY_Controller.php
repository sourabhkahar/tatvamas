<?php

if (!defined('BASEPATH'))

    exit('No direct script access allowed');

date_default_timezone_set('Asia/Kolkata');
// include_once APPPATH . '/third_party/sendsms/sample.php';


class MY_Controller extends CI_Controller {

    var $response = array();

    var $data = array();

    function __construct() {

        parent::__construct();

        $this->load->database();

        //helpers

        $this->load->helper('url');

        $this->load->helper('form');

        //libraries

        $this->load->library('session');

        $this->load->library('upload');

        $this->load->library('image_lib');

        $this->load->library('form_validation');

        $this->load->library('user_agent');

        $this->load->model('ErrorLogModel', 'error_log');

        $this->load->model('SettingsModel', 'settings');

    }



    public function printOutput() {

        $this->output->set_content_type('application/json')->set_output(json_encode($this->response));

    }



    public function setErrorLog($title, $message) {

        $this->load->model("ErrorLogModel", "error_log");

        $this->error_log->add(array("session_id" => $this->session->session_id,

            "ip_address" => $this->input->ip_address(),

            'tag_title' => $title,

            "log_message" => $message, "created_by" => 1));

    }

}

class Admin_Controller extends MY_Controller {

    var $encrypted;
    var $keySize = 128;
    var $iterationCount = 1000;
    var $isAdmin;
    var $userId;
    var $userRole;
    var $userName;
    var $userProfile;
    var $pages = array();
    var $can_add;
    var $can_edit;
    var $can_delete;

    function __construct() {

        parent::__construct();

        $this->load->model("AdminModel", "admin");

        $session_data = $this->session->userdata("admin_details");

        $this->pages = json_decode($this->session->userdata("pages"), TRUE);

        if (isset($session_data)) {

            $this->isAdmin = $session_data->is_admin;

            $this->userId = $session_data->admin_id;

            $this->userName = $session_data->name;

            $this->userRole = $session_data->role_id;

            if($this->userRole == 1){

                $this->session_menu = (isset($_SESSION['session_menu']) && $_SESSION['session_menu'] != '') ? $_SESSION['session_menu'] : 1;

            }else{

                $this->session_menu = 2;

            }

            $this->userRoleName = $this->admin->getRoleName($session_data->role_id);

            if ($session_data->profile_picture != '') {

                $this->userProfile = SITE_BASE_URL . "uploads/user_profile/" . $session_data->profile_picture;

            } else {

                $this->userProfile = SITE_ADMIN_ASSETS . "img/user_profile.jpg";

            }

        }

    }

    public function encyrpt($salt, $iv, $password, $text) {

        $salt1 = hex2bin($salt);

        $IVbytes = hex2bin($iv);

        $hash = openssl_pbkdf2($password, $salt1, $this->keySize, $this->iterationCount, 'sha1');

        $encrypted = openssl_encrypt($text, 'AES-128-CBC', $hash, OPENSSL_RAW_DATA, substr($IVbytes, 0, ($this->keySize / 8)));

        return base64_encode($encrypted);

    }

    public function decrypt($salt, $iv, $password, $text) {

        $salt1 = hex2bin($salt);

        $IVbytes = hex2bin($iv);

        $hash = openssl_pbkdf2($password, $salt1, $this->keySize, $this->iterationCount, 'sha1');

        $decrypted = openssl_decrypt(base64_decode($text), 'AES-128-CBC', $hash, OPENSSL_RAW_DATA, substr($IVbytes, 0, ($this->keySize / 8)));

        return $decrypted;

    }

    public function sessionCheck() {
        if ($this->agent->is_browser() OR $this->agent->is_mobile()) {
            $session_data = $this->session->userdata("admin_details");
            if (isset($session_data)) {
                if($session_data->admin_id > 0){
                    return true;
                }else{
                    return false;
                }
            }else{
                return false;
            }
        } else {
            redirect(base_url() . "404");
        }
    }

    public function accessCheck($uri_string = "") {

        if ($this->agent->is_browser() OR $this->agent->is_mobile()) {

            $pages = json_decode($this->session->userdata("pages"), true);

            if ($uri_string != '') {

                return in_array_r($uri_string, $pages) ? true : false;

            } else {

                return false;

            }

        } else {

            redirect(base_url() . "404");

        }

    }

    public function getRightsByUriString($string) {
        $this->admin->getUserRightsByPageURL($this->session->userdata('role_id'), $string);
    }
    
    // Send SMS
    public function sendSms($mobile,$txt){
        
        $sms_url = $this->settings->get('SMS_URL');
        $sms_api_key = $this->settings->get('SMS_API_KEY');
        $sms_sender_id = $this->settings->get('SMS_SENDER_ID');
        
        $url = $sms_url.'?apikey='.$sms_api_key."&sender=".$sms_sender_id."&mobileno=".$mobile."&text=".rawurlencode($txt);
        
        /*---- DEMO :- https://www.smsalert.co.in/api/push.json?apikey=5dd7cd37e7239&sender=VIEWIT&mobileno=8010551055&text=Hello%20Cozy ----- */
        $status = 0;
        if($mobile != '' && $txt != ''){
            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => $url,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",  
            ));

            $response = curl_exec($curl);
            
            curl_close($curl);
            $data['response'] = $response;

            $status = 1;
            $message = "Send message successfully.";
        }else{
            $message = "Required field is missing.";
        }
        $data['status'] = $status;
        $data['message'] = $message;
        return $data;
    }

}
