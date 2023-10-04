<?php

class Patient extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('PatientModel', 'patient');
        $this->load->model('PatientPrescriptionModel', 'patient_prescription');
        $this->page_title = "Patient";
        $this->folder_name = "patient";
        $this->parent_action = "";
        $this->action_name = "patient";
    }
    

    public function index() {
        if ($this->sessionCheck()) {
            $this->data['main'] = 'admin/'.$this->folder_name.'/list';
            //$this->data['main'] = "admin/d";
            $this->data['page_name'] = $this->page_title.' List';
            $this->data['page_description'] = 'Whole websites statistics';
            $this->data['page_type'] = 'list';
            $this->data['parent_action'] = $this->parent_action;
            $this->data['action'] = $this->action_name;
            $this->load->vars($this->data);
            $this->load->view('admin/index');
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function indexByStatus($status) {
        if ($this->sessionCheck()) {
            $this->data['status'] = $status;
            $this->data['today_date'] = general_date_format();
            $this->data['main'] = 'admin/'.$this->folder_name.'/list';
            //$this->data['main'] = "admin/d";
            $this->data['page_name'] = $this->page_title.' List';
            $this->data['page_description'] = 'Whole websites statistics';
            $this->data['page_type'] = 'list';
            $this->data['parent_action'] = $this->parent_action;
            $this->data['action'] = $this->action_name;
            $this->load->vars($this->data);
            $this->load->view('admin/index');
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }
    
    public function table() {
        if ($this->sessionCheck()) {
            $start = $this->input->post('start');
            $length = $this->input->post('length');
            $data['draw'] = $this->input->post('draw');
            $keyword = isset($this->input->post('search')['value']) ? $this->input->post('search')['value'] : "";
            $columnId = isset($this->input->post('order')[0]['column']) ? $this->input->post('order')[0]['column'] : "";
            $orderType = isset($this->input->post('order')[0]['dir']) ? $this->input->post('order')[0]['dir'] : "";
            $fieldName = isset($this->input->post('columns')[$columnId]['data']) ? $this->input->post('columns')[$columnId]['data'] : "";
            
            $date_filter = $this->input->post('date_filter') ? $this->input->post('date_filter') : "";
            $request_status = $this->input->post('request_status') ? $this->input->post('request_status') : "";
            $where_attr = array();
            if ($date_filter!="") {
                $where_attr["appointment_date"]=$date_filter;
            }
            if ($request_status!="") {
                $where_attr["status"]=$request_status;
            }
            $data['recordsTotal'] = count($this->patient->table(null, null, $keyword, 'null', null, $where_attr));
            $data['recordsFiltered'] = $data['recordsTotal'];
            $data['data'] = $this->patient->table($start, $length, $keyword, $fieldName, $orderType, $where_attr);
            header("Content-Type:application/json");
            echo json_encode($data);
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function table_prescription() {
        if ($this->sessionCheck()) {
            $start = $this->input->post('start');
            $length = $this->input->post('length');
            $data['draw'] = $this->input->post('draw');
            $keyword = isset($this->input->post('search')['value']) ? $this->input->post('search')['value'] : "";
            $columnId = isset($this->input->post('order')[0]['column']) ? $this->input->post('order')[0]['column'] : "";
            $orderType = isset($this->input->post('order')[0]['dir']) ? $this->input->post('order')[0]['dir'] : "";
            $fieldName = isset($this->input->post('columns')[0]['data']) ? $this->input->post('columns')[0]['data'] : "";
            $where_attr = array();
            $data['recordsTotal'] = count($this->patient->table(null, null, $keyword, 'null', null, $where_attr));
            $data['recordsFiltered'] = $data['recordsTotal'];
            $data['data'] = $this->patient->table($start, $length, $keyword, $fieldName,$orderType, $where_attr);
            header("Content-Type:application/json");
            echo json_encode($data);
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }
    
    
    public function add() {
        if ($this->sessionCheck()) {
            if (!empty($this->input->post())) {
                
                $this->form_validation->set_rules('name', 'Patient Name', 'required|trim');
                $this->form_validation->set_rules('appointment_date', 'Appointment Date', 'required|trim');
                $this->form_validation->set_rules('start_time', 'Start Time', 'required|trim');
                $this->form_validation->set_rules('mobile_no', 'Mobile No', 'required|trim');
                $this->form_validation->set_rules('gender', 'Gender', 'required|trim');
                $this->form_validation->set_rules('status', 'Status', 'required|trim');
                $this->form_validation->set_rules('amount', 'Amount', 'required|trim');
                $this->form_validation->set_rules('payment_mode', 'Payment Mode', 'required|trim');

                if ($this->form_validation->run() == TRUE) {
                    
                    $where = array(
                        'mobile_no'=>$this->input->post('mobile_no')
                    );
                    // $whereAnd = array(
                    //     'appointment_date '=>$this->input->post('appointment_date'),
                    //     'start_time'=>$this->input->post('start_time')
                    // );                    
                    $mobile_no = $this->input->post('mobile_no');
                    $appointment_date = $this->input->post('appointment_date');
                    $start_time = $this->input->post('start_time');
                    $is_emergency = $this->input->post('is_emergency') ? 1 : 0;
                    //pf($start_time);
                    //$query = "mobile_no = '".$mobile_no."' OR ( appointment_date = '".$appointment_date."' AND start_time = '".$start_time."' )";
                    $query = "appointment_date = '".$appointment_date."' AND start_time = '".$start_time."'";
                    $checkDuplicateBoth = $this->patient->checkDuplicate($query, (int)0);
                    $checkDuplicate = $this->patient->checkDuplicate($where, (int)0);
                    //$checkDuplicateAnd = $this->patient->checkDuplicateAnd($whereAnd, (int)0);
                    if ($checkDuplicate){
                        if ($checkDuplicateBoth || $is_emergency == 0){
                            $data = array(
                                'name' => $this->input->post('name'),
                                'email_id' => $this->input->post('email_id'),
                                'mobile_no' => $this->input->post('mobile_no'),
                                'age' => $this->input->post('age'),
                                'gender' => $this->input->post('gender'),
                                'relative_name' => $this->input->post('relative_name'),
                                'address' => $this->input->post('address'),
                                'city' => $this->input->post('city'),
                                'pincode' => $this->input->post('pincode'),
                                'appointment_date' => $this->input->post('appointment_date'),
                                'start_time' => ($this->input->post('is_emergency') != '') ? '23:59:00' : $this->input->post('start_time'),
                                'slot_no' => $this->input->post('start_time'),
                                'is_emergency' => ($this->input->post('is_emergency') != '') ? 1:0,
                                'is_active' => 1,
                                "created_by" => $this->userId
                            );
                            $result = $this->patient->add($data);
                            if ($result > 0) {
                                $insert_id = $this->db->insert_id();
                                $pre_data = array(
                                    'patient_id' => $insert_id,
                                    'treatment_type_id' => $this->input->post('treatment_type_id'),
                                    'amount' => $this->input->post('amount'),
                                    'payment_mode' => $this->input->post('payment_mode'),
                                    'remarks' => $is_emergency==1?"Emergency Admitted":"Scheduled Appointed",
                                    "created_by" => $this->userId
                                );
                                $result = $this->patient_prescription->add($pre_data);
                                
                                $this->last_insert_id = $insert_id;
                                $this->status = 1;
                                $this->message = sprintf(success_insert);
                            } else {
                                $this->status = 0;
                                $this->message = sprintf(error_insert);
                            }
                        }else{
                            $this->status = 0;
                            $this->message = "There is time duplicate, Please try again..";
                        }
                    }
                    else{
                        $this->status = 0;
                        //$this->message = "There is mobile no or time is duplicate, Please try again..";
                        $this->message = "There is mobile no duplicate, Please try again..";
                    }
                    $this->response = array("status" => $this->status,"message" => $this->message);
                    // $this->response = array("status" => 0,"message" => $this->message);
                    $this->session->set_flashdata('status', $this->status);
                    $this->session->set_flashdata('message', $this->message);
                } else {
                    $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                    $this->session->set_flashdata('message', "Error");
                }
                $this->printOutput();
            } else {
                $this->data['main'] = 'admin/'.$this->folder_name.'/add';
                $this->data['page_name'] = 'Add '.$this->page_title;
                $this->data['page_description'] = 'Add '.$this->page_title;
                $this->data['page_type'] = 'form';
                $this->data['parent_action'] = $this->parent_action;
                $this->data['action'] = $this->action_name;
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function edit($patientId) {
        if ($this->sessionCheck()) {
            if (!empty($this->input->post())) {
                $this->form_validation->set_rules('name', 'Patient Name', 'required|trim');
                $this->form_validation->set_rules('appointment_date', 'Appointment Date', 'required|trim');
                $this->form_validation->set_rules('start_time', 'Start Time', 'required|trim');
                $this->form_validation->set_rules('mobile_no', 'Mobile No', 'required|trim');
                $this->form_validation->set_rules('gender', 'Gender', 'required|trim');
                $this->form_validation->set_rules('status', 'Status', 'required|trim');

                if ($this->form_validation->run() == TRUE) {
                    
                    $where = array('mobile_no'=>$this->input->post('mobile_no'));
                    $checkDuplicate = $this->patient->checkDuplicate($where, (int)$patientId);

                    $appointment_date = $this->input->post('appointment_date');
                    $start_time = $this->input->post('start_time');
                    $query = "appointment_date = '".$appointment_date."' AND start_time = '".$start_time."'";
                    $checkDuplicateBoth = $this->patient->checkDuplicate($query, (int)$patientId);
                    $is_emergency = $this->input->post('is_emergency')?1:0;
                    if ($checkDuplicate){
                        if ($checkDuplicateBoth || $is_emergency == 0){
                            $rec = array(
                                'name' => $this->input->post('name'),
                                'email_id' => $this->input->post('email_id'),
                                'mobile_no' => $this->input->post('mobile_no'),
                                'age' => $this->input->post('age'),
                                'gender' => $this->input->post('gender'),
                                'relative_name' => $this->input->post('relative_name'),
                                'address' => $this->input->post('address'),
                                'city' => $this->input->post('city'),
                                'pincode' => $this->input->post('pincode'),
                                'appointment_date' => $this->input->post('appointment_date'),
                                'start_time' => ($this->input->post('is_emergency') != '') ? '23:59:00' : $this->input->post('start_time'),
                                'slot_no' => $this->input->post('slot_no'),
                                'status' => $this->input->post('status'),
                                'is_emergency' => ($this->input->post('is_emergency') != '') ? 1:0,
                                'is_active' => $this->input->post('is_active'),
                                "u_date" => general_date_format('Y-m-d H:i:s'),
                                "updated_by" => $this->userId
                            );
                            
                            $result = $this->patient->edit($rec, $patientId);
                            if ($result > 0) {
                                $this->status = 1;
                                $this->message = sprintf(success_update);
                            } else {
                                $this->status = 0;
                                $this->message = sprintf(error_on_update);
                            }
                        }else{
                            $this->status = 0;
                            $this->message = "There is time duplicate, Please try again..";
                        }
                    }else{
                        $this->status = 0;
                        $this->message = "There is mobile no duplicate, Please try again..";
                    }
                    
                    $this->response = array("status" => $this->status, "message" => $this->message);
                    $this->session->set_flashdata('status', $this->status);
                    $this->session->set_flashdata('message', $this->message);
                } else {
                    $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                    $this->session->set_flashdata('message', "Error");
                }
                $this->printOutput();
            } else {
                $this->data['main'] = 'admin/'.$this->folder_name.'/edit';
                $this->data['details'] = $this->patient->getDetails($patientId);
                $this->data['page_name'] = 'Edit '.$this->page_title;
                $this->data['page_description'] = 'Edit '.$this->page_title;
                $this->data['page_type'] = 'form';
                $this->data['parent_action'] = $this->parent_action;
                $this->data['action'] = $this->action_name;
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }
    
    public function view($patientId) {
        if ($this->sessionCheck()) {            
            $this->data['main'] = 'admin/'.$this->folder_name.'/view';
            $this->data['details'] = $this->patient->getDetails($patientId);
            $this->data['page_name'] = 'View '.$this->page_title;
            $this->data['page_description'] = 'View '.$this->page_title;
            $this->data['page_type'] = 'form';
            $this->data['parent_action'] = $this->parent_action;
            $this->data['action'] = $this->action_name;
            $this->load->vars($this->data);
            $this->load->view('admin/index');
            
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }
    
    
    
    public function list() {
        $this->response = $this->patient->list();
        $this->printOutput();
    }
    
    public function payment() {
        if ($this->sessionCheck()) {
            $this->data['main'] = 'admin/'.$this->folder_name.'/payment_collection_list';
            //$this->data['main'] = "admin/d";
            $this->data['page_name'] = 'Payment Collection History';
            $this->data['page_description'] = 'Whole websites statistics';
            $this->data['page_type'] = 'list';
            $this->data['parent_action'] = $this->parent_action;
            $this->data['action'] = $this->action_name;
            $this->load->vars($this->data);
            $this->load->view('admin/index');
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function table_patient_prescription($patientId) {
        if ($this->sessionCheck()) {
            $start = $this->input->post('start');
            $length = $this->input->post('length');
            $data['draw'] = $this->input->post('draw');
            $keyword = isset($this->input->post('search')['value']) ? $this->input->post('search')['value'] : "";
            $columnId = isset($this->input->post('order')[0]['column']) ? $this->input->post('order')[0]['column'] : "";
            $orderType = isset($this->input->post('order')[0]['dir']) ? $this->input->post('order')[0]['dir'] : "";
            $fieldName = isset($this->input->post('columns')[0]['data']) ? $this->input->post('columns')[0]['data'] : "";
            $where_attr = array("patient_id" =>$patientId);
            $data['recordsTotal'] = count($this->patient_prescription->table(null, null, $keyword, 'null', null, $where_attr));
            $data['recordsFiltered'] = $data['recordsTotal'];
            $data['data'] = $this->patient_prescription->table($start, $length, $keyword, $fieldName, $orderType, $where_attr);
            header("Content-Type:application/json");
            echo json_encode($data);
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function add_patient_prescription() {
        if ($this->sessionCheck()) {
            if (!empty($this->input->post())) {
                
                $this->form_validation->set_rules('amount', 'Amount', 'required|trim');
                $this->form_validation->set_rules('payment_mode', 'Payment Mode', 'required|trim');

                if ($this->form_validation->run() == TRUE) {
                    
                    // $where = array('mobile_no'=>$this->input->post('mobile_no'));
                    // $checkDuplicate = $this->patient->checkDuplicate($where, (int)0);
                    // if ($checkDuplicate){
                        $data = array(
                            'patient_id' => $this->input->post('patient_id'),
                            'treatment_type_id' => $this->input->post('treatment_type_id'),
                            'amount' => $this->input->post('amount'),
                            'payment_mode' => $this->input->post('payment_mode'),
                            'remarks' => $this->input->post('remarks'),
                            "created_by" => $this->userId
                        );
                        $result = $this->patient_prescription->add($data);
                        if ($result > 0) {
                            $insert_id = $this->db->insert_id();
                            $this->last_insert_id = $insert_id;
                            $this->status = 1;
                            $this->message = sprintf(success_insert);
                        } else {
                            $this->status = 0;
                            $this->message = sprintf(error_insert);
                        }
                    // }else{
                    //     $this->status = 0;
                    //     $this->message = duplicate_record;
                    // }
                    $this->response = array("status" => $this->status,"last_insert_id"=>$insert_id, "message" => $this->message);
                    $this->session->set_flashdata('status', $this->status);
                    $this->session->set_flashdata('message', $this->message);
                } else {
                    $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                    $this->session->set_flashdata('message', "Error");
                }
                $this->printOutput();
            } else {
                $this->data['main'] = 'admin/'.$this->folder_name.'/add';
                $this->data['page_name'] = 'Add '.$this->page_title;
                $this->data['page_description'] = 'Add '.$this->page_title;
                $this->data['page_type'] = 'form';
                $this->data['parent_action'] = $this->parent_action;
                $this->data['action'] = $this->action_name;
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function list_single_patient_prescription($patient_details_id) {
        $this->response = $this->patient_prescription->getDetails($patient_details_id);
        //$this->response = $this->patient_prescription->list();
        $this->printOutput();
    }

    public function edit_patient_prescription($patient_details_id) {
        if ($this->sessionCheck()) {
            if (!empty($this->input->post())) {
                $this->form_validation->set_rules('amount', 'Amount', 'required|trim');
                $this->form_validation->set_rules('payment_mode', 'Payment Mode', 'required|trim');

                if ($this->form_validation->run() == TRUE) {
                    
                    // $where = array('mobile_no'=>$this->input->post('mobile_no'));
                    // $checkDuplicate = $this->patient->checkDuplicate($where, (int)$patient_details_id);
                    // if ($checkDuplicate){
                        $patient_details_id = $this->input->post('patient_details_id');
                        $patient_rec = array(
                            'treatment_type_id' => $this->input->post('treatment_type_id'),
                            'amount' => $this->input->post('amount'),
                            'payment_mode' => $this->input->post('payment_mode'),
                            'remarks' => $this->input->post('remarks'),
                            "u_date" => date('Y-m-d H:i:s'),
                            "updated_by" => $this->userId
                        );
                        
                        $result = $this->patient_prescription->edit($patient_rec, $patient_details_id);
                        if ($result > 0) {
                            $this->status = 1;
                            $this->message = sprintf(success_update);
                        } else {
                            $this->status = 0;
                            $this->message = sprintf(error_on_update);
                        }
                    // }else{
                    //     $this->status = 0;
                    //     $this->message = duplicate_record;
                    // }
                    
                    $this->response = array("status" => $this->status, "message" => $this->message,"patient_rec"=>$patient_rec);
                    $this->session->set_flashdata('status', $this->status);
                    $this->session->set_flashdata('message', $this->message);
                } else {
                    $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                    $this->session->set_flashdata('message', "Error");
                }
                $this->printOutput();
            } else {
                // $this->data['main'] = 'admin/'.$this->folder_name.'/edit';
                // $this->data['details'] = $this->patient->getDetails($patientId);
                // $this->data['page_name'] = 'Edit '.$this->page_title;
                // $this->data['page_description'] = 'Edit '.$this->page_title;
                // $this->data['page_type'] = 'form';
                // $this->data['parent_action'] = $this->parent_action;
                // $this->data['action'] = $this->action_name;
                // $this->load->vars($this->data);
                // $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function delete_patient_prescription(){
        if ($this->sessionCheck()) {
            
            $patient_details_id = $this->input->post('delete_id');
            $result = $this->patient_prescription->delete($patient_details_id);
            if ($result > 0) {
                $this->status = 1;
                $this->message = sprintf(success_delete);
            } else {
                $this->status = 0;
                $this->message = sprintf(error_on_delete);
            }
            $this->response = array("status" => $this->status, "message" => $this->message);
            $this->session->set_flashdata('status', $this->status);
            $this->session->set_flashdata('message', $this->message);
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }

        $this->printOutput();
        
    }
    
    public function delete_patient(){
        if ($this->sessionCheck()) {
            
            $patient_id = $this->input->post('delete_id');
            $result = $this->patient->delete($patient_id);
            if ($result > 0) {
                $this->status = 1;
                $this->message = sprintf(success_delete);
            } else {
                $this->status = 0;
                $this->message = sprintf(error_on_delete);
            }
            $this->response = array("status" => $this->status, "message" => $this->message);
            $this->session->set_flashdata('status', $this->status);
            $this->session->set_flashdata('message', $this->message);
            
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }

        $this->printOutput();
        
    }

    public function getTimeSlot(){
        
        if ($this->sessionCheck()) {
            $start = "00:00"; //you can write here 00:00:00 but not need to it
            $end = "21:00";
            $stauts_Arr ='';

            $date_filter = $this->input->post('date_filter') ? $this->input->post('date_filter') : "";
            $existing_slot_no = $this->input->post('slot_no') ? $this->input->post('slot_no') : "";

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
                $where_attr = array();
                $where_attr["appointment_date"]=$date_filter;
                for($mins=0; $mins<60; $mins+=$time_lap)
                { 
                    $starttime = str_pad($hours,2,'0',STR_PAD_LEFT).':'.str_pad($mins,2,'0',STR_PAD_LEFT).':00';
                    $Endtime = str_pad($hours + 1,2,'0',STR_PAD_LEFT).':'.str_pad($mins,2,'0',STR_PAD_LEFT).':00';
                    $am_pm = 'AM';
                    if ($hours > 11) {
                        $am_pm = 'PM';
                    }
                 
                    $where_attr["slot_no"]=$slotNo;
                    $row = $this->patient->table(null, null, '', 'null', null, $where_attr);
                    $stauts_Arr .= '<option value="'.$slotNo.'" '.((count($row) == $disabledSlotLimit)? 'disabled':'').' '.($existing_slot_no == $slotNo?'selected':'').'>'.date("h:i",strtotime($starttime))." ".$am_pm." - ".date("h:i",strtotime($Endtime))." ".$am_pm.'</option>';
                    $slotNo++;
                }
            }
            // $stauts_Arr["21:00:00"]= date("h:i",strtotime("21:00:00"))." PM";
           
            // $data['recordsTotal'] = count($this->patient->table(null, null, '', 'null', null, $where_attr));
            // $data['recordsFiltered'] = $data['recordsTotal'];
            $data['data'] = $stauts_Arr;
            header("Content-Type:application/json");
            echo json_encode($data);
        }
    }
    
}
