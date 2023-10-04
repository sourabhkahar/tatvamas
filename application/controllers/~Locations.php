<?php

class Locations extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('LocationsModel', 'location');
        $this->page_title = "Location";
        $this->folder_name = "location";
        $this->parent_action = "";
        $this->action_name = "locations";
    }

    public function index() {
        if ($this->sessionCheck()) {
            $this->data['main'] = 'admin/'.$this->folder_name.'/list';
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
            $data['recordsTotal'] = count($this->location->table(null, null, $keyword, 'null', null, $where_attr));
            $data['recordsFiltered'] = $data['recordsTotal'];
            $data['data'] = $this->location->table($start, $length, $keyword, 'name', 'ASC', $where_attr);
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
                $this->form_validation->set_rules('code', 'Code', 'required|trim');
                $this->form_validation->set_rules('is_active', 'Is Active', 'required|trim');
                
                if ($this->form_validation->run() == TRUE) {
                    
                    $where = array('name'=>$this->input->post('name'));
                    $checkDuplicate = $this->location->checkDuplicate($where, (int)0);
                    if ($checkDuplicate){
                        $data = array(
                            "name" => $this->input->post('name'),
                            "code" => $this->input->post('code'),
                            "description" => $this->input->post('description'),
                            "is_active" => $this->input->post('is_active'),
                            "created_by" => $this->userId
                        );
                        $result = $this->location->add($data);
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

    public function edit($locationId) {
        if ($this->sessionCheck()) {
            if (!empty($this->input->post())) {
                $this->form_validation->set_rules('name', 'Treatment Type Name', 'required|trim');
                $this->form_validation->set_rules('code', 'Code', 'required|trim');
                $this->form_validation->set_rules('is_active', 'Is Active', 'required|trim');

                if ($this->form_validation->run() == TRUE) {
                    
                    $where = array('name'=>$this->input->post('name'));
                    $checkDuplicate = $this->location->checkDuplicate($where, (int)$locationId);
                    if ($checkDuplicate){
                        
                        $data = array(
                            "name" => $this->input->post('name'),
                            "code" => $this->input->post('code'),
                            "description" => $this->input->post('description'),
                            "is_active" => $this->input->post('is_active'),
                            "u_date" => general_date_format('Y-m-d H:i:s'),
                            "updated_by" => $this->userId
                        );

                        $result = $this->location->edit($data, $locationId);
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
                    redirect(SITE_ADMIN_URL.'locations', 'refresh');
                } else {
                    $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                    $this->session->set_flashdata('message', "Error");
                    $this->printOutput();
                }
            } else {
                $this->data['main'] = 'admin/'.$this->folder_name.'/edit';
                $this->data['details'] = $this->location->getDetails($locationId);
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
        $this->response = $this->location->list();
        $this->printOutput();
    }
}
