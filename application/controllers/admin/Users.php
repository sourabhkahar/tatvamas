<?php

class Users extends Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('AdminModel', 'users');
    }

    public function index() {
        if ($this->sessionCheck()) {
            if ($this->isAdmin == 1 && $this->userRole == SUPERADMIN) {
                $this->data['main'] = 'admin/users/list';
                $this->data['page_name'] = 'Users Master';
                $this->data['page_description'] = 'Users Master';
                $this->data['page_type'] = 'list';
                $this->data['action'] = 'users';
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            } else {
                $this->data['main'] = 'admin/no_data';
                $this->data['page_name'] = 'You don\'t have permission to access this page';
                $this->data['page_description'] = 'No Data available';
                $this->data['page_type'] = 'list';
                $this->data['action'] = 'users';
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function table() {
        if ($this->sessionCheck()) {
            if ($this->isAdmin == 1 && $this->userRole == SUPERADMIN) {
                $start = $this->input->post('start');
                $length = $this->input->post('length');
                $data['draw'] = $this->input->post('draw');
                $keyword = isset($this->input->post('search')['value']) ? $this->input->post('search')['value'] : "";
                $columnId = isset($this->input->post('order')[0]['column']) ? $this->input->post('order')[0]['column'] : "";
                $orderType = isset($this->input->post('order')[0]['dir']) ? $this->input->post('order')[0]['dir'] : "";
                $fieldName = isset($this->input->post('columns')[0]['data']) ? $this->input->post('columns')[0]['data'] : "";
                $where_attr = array();
                $data['recordsTotal'] = count($this->users->table(null, null, $keyword, null, null, $where_attr));
                $data['recordsFiltered'] = $data['recordsTotal'];
                $data['data'] = $this->users->table($start, $length, $keyword, 'name', 'ASC', $where_attr);
            }else{
                $data['recordsTotal'] = 0;
                $data['recordsFiltered'] = $data['recordsTotal'];
                $data['data'] = array();   
            }
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
            if ($this->isAdmin == 1 && $this->userRole == SUPERADMIN) { // only if admin
                if (!empty($this->input->post())) {
                    $this->form_validation->set_rules('txt_name', 'Name', 'required|trim');
                    $this->form_validation->set_rules('txt_login', 'Login Name', 'required|trim');
                    $this->form_validation->set_rules('txt_password', 'Password', 'required|trim');
                    $this->form_validation->set_rules('status', 'User Status', 'required|trim');
                    
                    if ($this->form_validation->run() == TRUE) {
                        $userExists = $this->users->getDetailsByLoginNameOrEmail($this->input->post('txt_login'));
                        if (empty($userExists)) {
                            $data = array(
                                'name' => $this->input->post('txt_name'),
                                'login_name' => strtolower($this->input->post('txt_login')),
                                'login_password' => $this->input->post('txt_password'),
                                'txt_password' => $this->input->post('txt_password'),
                                'status' => $this->input->post('status'),
                                'role_id' => 2
                            );
                            $result = $this->users->add($data);
                            if ($result > 0) {
                                $this->status = 1;
                                $this->message = sprintf(success_insert);
                            } else {
                                $this->status = 0;
                                $this->message = sprintf(error_insert);
                            }
                            $this->response = array("status" => $this->status, "message" => $this->message);
                            $this->session->set_flashdata('status', $this->status);
                            $this->session->set_flashdata('message', $this->message);
                        } else {
                            $this->response = array("status" => 0, "message" => error_user_exists);
                            $this->session->set_flashdata('status', 0);
                            $this->session->set_flashdata('message', error_user_exists);
                        }
                    } else {
                        $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                        $this->session->set_flashdata('message', "Error");
                    }
                    $this->printOutput();
                } else {
                    $this->data['main'] = 'admin/users/add';
                    $this->data['page_name'] = 'Add User';
                    $this->data['page_description'] = 'Add User';
                    $this->data['page_type'] = 'form';
                    $this->data['parent_action'] = "";
                    $this->data['action'] = 'users';
                    $this->load->vars($this->data);
                    $this->load->view('admin/index');
                }
            } else {
                $this->data['main'] = 'admin/no_data';
                $this->data['page_name'] = 'No Data found';
                $this->data['page_description'] = 'No Data available';
                $this->data['page_type'] = 'list';
                $this->data['parent_action'] = "";
                $this->data['action'] = 'users';
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }

    public function edit($userId) {
        if ($this->sessionCheck()) {
            if ($this->isAdmin == 1 && $this->userRole == SUPERADMIN) { // only if admin
                if (!empty($this->input->post())) {
                    $this->load->model('AdminModel', 'users');
                    $this->form_validation->set_rules('txt_name', 'Name', 'required|trim');
                    $this->form_validation->set_rules('txt_login', 'Login Name', 'required|trim');
                    $this->form_validation->set_rules('txt_password', 'Password', 'required|trim');
                    $this->form_validation->set_rules('status', 'User Status', 'required|trim');
                    
                    if ($this->form_validation->run() == TRUE) {
                        $userSalt = $this->input->post('user_salt');
                        $userIv = $this->input->post('user_iv');
                        $userUniqueKey = $this->input->post('user_unique_key');
                        $tempPassword = $this->input->post('txt_password');
                        $password = $this->encyrpt($userSalt, $userIv, $userUniqueKey, $tempPassword);
                        
                        $data = array(
                            'name' => $this->input->post('txt_name'),
                            'login_name' => strtolower($this->input->post('txt_login')),
                            'login_password' => $password,
                            'txt_password' => $tempPassword,
                            'user_iv' => $userIv,
                            'user_salt' => $userSalt,
                            'unique_key' => $userUniqueKey,
                            'status' => $this->input->post('status'),
                            'role_id' => 2
                        );
                        $result = $this->users->edit($data, $userId);
                        if ($result > 0) {
                            $this->status = 1;
                            $this->message = sprintf(success_update);
                        } else {
                            $this->status = 0;
                            $this->message = sprintf(error_on_update);
                        }
                        $this->response = array("status" => $this->status, "message" => $this->message);
                        $this->session->set_flashdata('status', $this->status);
                        $this->session->set_flashdata('message', $this->message);
                    } else {
                        $this->response = array("status" => 0, "message" => trim(validation_errors()), "validate" => validation_errors());
                        $this->session->set_flashdata('message', "Error");
                    }
                    $this->printOutput();
                } else {
                    $this->data['main'] = 'admin/users/edit';
                    $this->data['page_name'] = 'Edit User';
                    $userdetails = $this->users->getDetails($userId);
                    $this->data['user_data'] = $this->users->getDetails($userId);
                    $this->data['user_password'] = $this->decrypt($userdetails->user_salt, $userdetails->user_iv, $userdetails->unique_key, $userdetails->login_password);
                    $this->data['page_description'] = 'Edit User';
                    $this->data['page_type'] = 'form';
                    $this->data['action'] = 'users';
                    $this->load->vars($this->data);
                    $this->load->view('admin/index');
                }
            } else {
                $this->data['main'] = 'admin/no_data';
                $this->data['page_name'] = 'No Data found';
                $this->data['page_description'] = 'No Data available';
                $this->data['action'] = 'users';
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
        $this->response = array();
        if ($this->isAdmin == 1 && $this->userRole == SUPERADMIN) { // only if admin
            $this->response = $this->users->list();
        }
        $this->printOutput();
    }
}