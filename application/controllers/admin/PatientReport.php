<?php

class PatientReport extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('PatientModel', 'patient_report');
    }

    public function index() {
        if ($this->sessionCheck()) {
            $this->data['main'] = 'admin/patient/report';
            $this->data['page_name'] = 'Patient Report List';
            $this->data['page_description'] = 'Whole websites statistics';
            $this->data['page_type'] = 'list';
            $this->data['action'] = 'report';
            $this->load->vars($this->data);
            $this->load->view('admin/index');
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }
    
    // If You change anything in table function please change also next total_time function
    public function table() {
        if ($this->sessionCheck()) {
            $where = "";
            $where_attr = array();
            $start_date = ($this->input->post('start_date')) ? date('Y-m-d', strtotime($this->input->post('start_date'))) : null;
            $end_date = ($this->input->post('end_date')) ? date('Y-m-d', strtotime($this->input->post('end_date'))) : null;
            
            $i=1;
            $j=0;
            $response = array();

            $cash = $this->patient_report->report("SUM(amount) as total_amount, c_date", $start_date, $end_date, "payment_mode='cash'", $where_attr, 'CAST(c_date AS DATE)', true);
            if(!empty($cash)){
                foreach ($cash as $key => $value) {
                    $response[$j]['no'] = $i;
                    $response[$j]['name'] = 'Cash';
                    $response[$j]['date'] = $value['c_date'];
                    $response[$j]['total'] = $value['total_amount'];
                    $i++;
                    $j++;
                }
            }

            $upi = $this->patient_report->report("SUM(amount) as total_amount, c_date", $start_date, $end_date, "payment_mode='upi'", $where_attr, 'CAST(c_date AS DATE)', true);
            if(!empty($upi)){
                foreach ($upi as $key => $value) {
                    $response[$j]['no'] = $i;
                    $response[$j]['name'] = 'UPI';
                    $response[$j]['date'] = $value['c_date'];
                    $response[$j]['total'] = $value['total_amount'];
                    $i++;
                    $j++;
                }
            }

            $net_banking = $this->patient_report->report("SUM(amount) as total_amount, c_date", $start_date, $end_date, "payment_mode='net_banking'", $where_attr, 'CAST(c_date AS DATE)', true);
            if(!empty($net_banking)){
                foreach ($net_banking as $key => $value) {
                    $response[$j]['no'] = $i;
                    $response[$j]['name'] = 'Net Banking';
                    $response[$j]['date'] = $value['c_date'];
                    $response[$j]['total'] = $value['total_amount'];
                    $i++;
                    $j++;
                }
            }

            $bank_transfer = $this->patient_report->report("SUM(amount) as total_amount, c_date", $start_date, $end_date, "payment_mode='bank_transfer'", $where_attr, 'CAST(c_date AS DATE)', true);
            if(!empty($bank_transfer)){
                foreach ($bank_transfer as $key => $value) {
                    $response[$j]['no'] = $i;
                    $response[$j]['name'] = 'Bank Transfer';
                    $response[$j]['date'] = $value['c_date'];
                    $response[$j]['total'] = $value['total_amount'];
                    $i++;
                    $j++;
                }
            }
            
            $data['data'] = $response;
            $data['status'] = 1;
            $data['message'] = "Get Record Successfully";
            header("Content-Type:application/json");
            echo json_encode($data);
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

}