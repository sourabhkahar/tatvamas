<?php

class TreatmentType extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('TreatmentTypeModel', 'treatment_type');
    }

    public function index() {
        if ($this->sessionCheck()) {
            $this->data['main'] = 'admin/treatment_type/list';
            $this->data['page_name'] = 'Treatment Type List';
            $this->data['page_description'] = 'Whole websites statistics';
            $this->data['page_type'] = 'list';
            $this->data['parent_action'] = "";
            $this->data['action'] = 'treatment_type';
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
            $data['recordsTotal'] = count($this->treatment_type->table(null, null, $keyword, 'null', null, $where_attr));
            $data['recordsFiltered'] = $data['recordsTotal'];
            $data['data'] = $this->treatment_type->table($start, $length, $keyword, 'name', 'ASC', $where_attr);
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
                
                $this->form_validation->set_rules('name', 'Treatment Type Name', 'required|trim');
                $this->form_validation->set_rules('amount', 'Account Type', 'required|trim|is_numeric');
                $this->form_validation->set_rules('is_active', 'Is Active', 'required|trim');
                
                if ($this->form_validation->run() == TRUE) {
                    
                    $where = array('name'=>$this->input->post('name'));
                    $checkDuplicate = $this->treatment_type->checkDuplicate($where, (int)0);
                    if ($checkDuplicate){
                        $data = array(
                            "name" => $this->input->post('name'),
                            "amount" => $this->input->post('amount'),
                            "is_active" => $this->input->post('is_active'),
                            "created_by" => $this->userId
                        );
                        $result = $this->treatment_type->add($data);
                        if ($result > 0) {
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
                    $this->response = array("status" => $this->status, "message" => $this->message);
                    $this->session->set_flashdata('status', $this->status);
                    $this->session->set_flashdata('message', $this->message);
                } else {
                    $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                    $this->session->set_flashdata('message', "Error");
                }
                $this->printOutput();
            } else {
                $this->data['main'] = 'admin/treatment_type/add';
                $this->data['page_name'] = 'Add Treatment Type';
                $this->data['page_description'] = 'Add Treatment Type';
                $this->data['page_type'] = 'form';
                $this->data['parent_action'] = "";
                $this->data['action'] = 'treatment_type';
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function edit($treatmentTypeId) {
        if ($this->sessionCheck()) {
            if (!empty($this->input->post())) {
                $this->form_validation->set_rules('name', 'Treatment Type Name', 'required|trim');
                $this->form_validation->set_rules('amount', 'Account Type', 'required|trim|is_numeric');
                $this->form_validation->set_rules('is_active', 'Is Active', 'required|trim');

                if ($this->form_validation->run() == TRUE) {
                    
                    $where = array('name'=>$this->input->post('name'));
                    $checkDuplicate = $this->treatment_type->checkDuplicate($where, (int)$treatmentTypeId);
                    if ($checkDuplicate){
                        
                        $data = array(
                            "name" => $this->input->post('name'),
                            "amount" => $this->input->post('amount'),
                            "is_active" => $this->input->post('is_active'),
                            "u_date" => general_date_format('Y-m-d H:i:s'),
                            "updated_by" => $this->userId
                        );

                        $result = $this->treatment_type->edit($data, $treatmentTypeId);
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
                $this->data['main'] = 'admin/treatment_type/edit';
                $this->data['details'] = $this->treatment_type->getDetails($treatmentTypeId);
                $this->data['page_name'] = 'Edit Treatment Type';
                $this->data['page_description'] = 'Edit Treatment Type';
                $this->data['page_type'] = 'form';
                $this->data['parent_action'] = "";
                $this->data['action'] = 'treatment_type';
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
        $this->response = $this->treatment_type->list();
        $this->printOutput();
    }
}
