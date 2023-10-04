<?php

class Admin extends Admin_Controller {

    public function index() {
        if ($this->sessionCheck()) {
            $this->load->model("AdminModel", "admin");            
            redirect(base_url() . "admin/dashboard");
        } else {
            redirect(base_url() . "admin/login");
        }
    }

    public function Login() {
        if ($this->sessionCheck()) {
            $this->data['main'] = 'admin/dashboard';
            $this->data['page_name'] = 'Dashboard';
            $this->data['page_description'] = 'Whole websites statistics';
            $this->data['page_type'] = 'dashboard';
            $this->data['parent_action'] = "";
            $this->data['action'] = 'dashboard';
            $this->load->vars($this->data);
            $this->load->view('admin/index');
        } else {
            if (!empty($this->input->post())) {
                $this->form_validation->set_rules('login_username', 'User Name', 'required|trim');
                $this->form_validation->set_rules('login_password', 'Password', 'required');
                if ($this->form_validation->run() == TRUE) {
                    $username = $this->input->post('login_username');
                    $password = $this->input->post('login_password');
                    $isValidEmail = filter_var($this->input->post('login_username'), FILTER_VALIDATE_EMAIL);
                    if ($isValidEmail) {
                        $isEmail = TRUE;
                    } else {
                        $isEmail = FALSE;
                    }
                    $this->response = $this->admin->login($username, $password, $isEmail);
                    if (!empty($this->response) && isset($this->response['session_id'])) {
                        $this->session->set_userdata('session_key', $this->response["session_id"]);
                        $type_load = "admin/dashboard";
                        $session_load = $this->session->userdata("admin_details");
                        if($session_load->role_id > 1){
                            $type_load = "admin/account";
                        }
                        $this->response = array("status" => 1, "message" => "Login successfull", "type" => $type_load);
                    } else {
                        $this->response = array("status" => 0, "message" => $this->response['message']);
                        $this->session->set_flashdata('message', "Error");
                    }
                } else {
                    $this->response = array("status" => 0, "message" => "Field required", "validate" => validation_errors());
                    $this->session->set_flashdata('message', "Error");
                }
                $this->printOutput();
            } else {
                $data['message'] = 'please login to continue';
                $this->load->vars($data);
                $this->load->view('admin/login');
            }
        }
    }

    public function Dashboard() {
        if ($this->sessionCheck()) {
            if ($this->isAdmin == 1 && $this->userRole == SUPERADMIN) { // only if admin
                $this->load->model('PatientModel', 'patient');
                
                $this->data['main'] = 'admin/dashboard';
                $this->data['page_name'] = 'Dashboard';
                $this->data['page_description'] = 'Whole websites statistics';
                $this->data['page_type'] = 'dashboard';
                $this->data['parent_action'] = "";
                $this->data['action'] = 'dashboard';

                //$where_attr = array('appointment_date'=>date("Y-m-d"));
                $where_attr = array(
                    'appointment_date'=>date("Y-m-d"),
                    'status'=>"appointed",
                );
                $this->data['today_scheduled_appointments'] = $this->patient->today_scheduled_appointments(0, 100000, "", 'name', 'ASC', $where_attr);
                
                $where_attr = array(
                    'appointment_date'=>date("Y-m-d"),
                    'status'=>"admitted",
                );
                $this->data['today_admitted_patients'] = $this->patient->today_admitted_patients(0, 100000, "", 'name', 'ASC', $where_attr);
                
                $where_attr = array();
                $this->data['today_payment_collection'] = $this->patient->today_payment_collection("", "", "", 'c_date', 'ASC', $where_attr);
                
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }else{
                $this->data['main'] = 'admin/no_data';
                $this->data['page_name'] = 'No Data found';
                $this->data['page_description'] = 'No Data available';
                $this->data['page_type'] = 'list';
                $this->data['parent_action'] = "";
                $this->data['action'] = 'dashboard';
                $this->load->vars($this->data);
                $this->load->view('admin/index');
            }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }
    
    public function logout() {
        //DO logout
        $this->session->unset_userdata('admin_id', array());
        $this->session->sess_destroy();
        redirect(SITE_ADMIN_URL);
    }

    public function Profile() {
        if ($this->sessionCheck()) {
                $profileId = $this->userId;
                $this->load->model('AdminModel', 'users');
                if (!empty($this->input->post())) {    
                    $this->form_validation->set_rules('txt_name', 'Name', 'required|trim');
                    $this->form_validation->set_rules('txt_login', 'Login Name', 'required|trim');
                    $this->form_validation->set_rules('txt_password', 'Password', 'required|trim');
                    
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
                            'unique_key' => $userUniqueKey
                        );
                        $result = $this->users->edit($data, $profileId);
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
                    $this->data['main'] = 'admin/profile';
                    $this->data['page_name'] = 'Edit Profile';
                    $userdetails = $this->users->getDetails($profileId);
                    $this->data['user_data'] = $userdetails;
                    $this->data['user_password'] = $this->decrypt($userdetails->user_salt, $userdetails->user_iv, $userdetails->unique_key, $userdetails->login_password);
                    $this->data['page_description'] = 'Edit Profile';
                    $this->data['page_type'] = 'form';
                    $this->data['action'] = 'profile';
                    $this->load->vars($this->data);
                    $this->load->view('admin/index');
                }
        } else {
            $data['message'] = 'please login to continue';
            $this->load->vars($data);
            $this->load->view('admin/login');
        }
    }
}
