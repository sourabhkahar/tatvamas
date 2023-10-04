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
    
    public function table() {
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
            $data['data'] = $this->patient->table($start, $length, $keyword, 'name', 'ASC', $where_attr);
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
            $data['data'] = $this->patient->table($start, $length, $keyword, 'name', 'ASC', $where_attr);
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

                if ($this->form_validation->run() == TRUE) {
                    
                    $where = array('mobile_no'=>$this->input->post('mobile_no'));
                    $checkDuplicate = $this->patient->checkDuplicate($where, (int)0);
                    if ($checkDuplicate){
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
                            'start_time' => $this->input->post('start_time'),
                            'status' => $this->input->post('status'),
                            'is_emergency' => ($this->input->post('is_emergency') != '') ? 1:0,
                            'is_active' => 1,
                            "created_by" => $this->userId
                        );
                        $result = $this->patient->add($data);
                        if ($result > 0) {
                            $insert_id = $this->db->insert_id();
                            $this->last_insert_id = $insert_id;
                            $this->status = 1;
                            $this->message = sprintf(success_insert);
                        } else {
                            $this->status = 0;
                            $this->message = sprintf(error_insert);
                        }
                    }else{
                        $this->status = 0;
                        $this->message = duplicate_record;
                    }
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
                    if ($checkDuplicate){
                        
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
                            'start_time' => $this->input->post('start_time'),
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
                        $this->message = duplicate_record;
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
    
    public function list() {
        $this->response = $this->patient->list();
        $this->printOutput();
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
            $data['data'] = $this->patient_prescription->table($start, $length, $keyword, 'patient_details_id', 'ASC', $where_attr);
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
                        
                        $rec = array(
                            'treatment_type_id' => $this->input->post('treatment_type_id'),
                            'amount' => $this->input->post('amount'),
                            'payment_mode' => $this->input->post('payment_mode'),
                            'remarks' => $this->input->post('remarks'),
                            "u_date" => general_date_format('Y-m-d H:i:s'),
                            "updated_by" => $this->userId
                        );
                        
                        $result = $this->patient_prescription->edit($rec, $patient_details_id);
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
                    
                    $this->response = array("status" => $this->status, "message" => $this->message);
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

    
}
