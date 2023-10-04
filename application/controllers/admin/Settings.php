<?php

class Settings extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('SettingsModel', 'settings');
    }

    public function index() {
        if ($this->sessionCheck()) {
            if (!empty($this->input->post())) {
                foreach ($this->input->post() as $key => $data) {
                    $this->settings->edit(array('v_value' => $data), $key);
                }
                $result = 1;
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
                $this->printOutput();
            } else {
                $this->data['main'] = 'admin/settings';
                $this->data['page_name'] = 'Settings';
                $this->data['page_description'] = 'Application Settings';
                $this->data['page_type'] = 'form';
                $settings =  $this->settings->getAllSettings();
                $count = round(count($settings)/2);
                $chunk_arr = array_chunk($settings, $count);
                $this->data['settings'] = $chunk_arr;
                $this->data['action'] = 'settings';
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
