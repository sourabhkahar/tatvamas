<?php

ini_set('upload_max_filesize', '200M');

ini_set('post_max_size', '200M');

ini_set('max_input_time', 300000);

ini_set('max_execution_time', 300000);



class Upload extends Admin_Controller {

    

    function __construct() {

        parent::__construct();

    }



    public function upload() {

        $directoryPath = $this->input->post('directory_path');

        if (isset($_FILES['image']) && $_FILES['image']['name'] != "") {

            $path = FCPATH . $directoryPath;

            if (!is_dir($path)) {

                mkdir($path, 0777, true);

            }

            // die('sss');

            $config['upload_path'] = $path;

            // $config['allowed_types'] = 'jpeg|jpg|png|gif|webp';
            // $config['allowed_types'] = 'jks|jpg|png|gif|webp';
           $config['allowed_types'] = '*';

            $config['max_size'] = 0;

            $config['overwrite'] = false;

            $config['encrypt_name'] = TRUE;

            $this->load->library('upload', $config);

            $this->upload->initialize($config);

            if (!$this->upload->do_upload('image')) {

                $error = array('error' => $this->upload->display_errors());

                $this->session->set_flashdata('upload_error', $error['error']);

                $data = array("status" => 0, "message" => $error['error']);

                header("Content-Type:application/json");

                echo json_encode($data);

            } else {

                $data = array('upload_data' => $this->upload->data());

                $response_data = array("status" => 1, "message" => "file uploaded successfully", "file_name" => $data['upload_data']['file_name']);

                header("Content-Type:application/json");

                echo json_encode($response_data);

            }

        } else {

            header("Content-Type:application/json");

            echo json_encode(array("status" => 0, "message" => "File not selected to upload"));

        }

    }



    public function removeFile() {

        $status = -1;

        $file_name = "";

        $directoryPath = $this->input->post('directory_path');

        if ($this->input->post('image_name') !== null) {

            $path = FCPATH . $directoryPath;

            if (is_file($path . $this->input->post('image_name'))) {

                unlink(FCPATH . $directoryPath . $this->input->post('image_name'));

                $status = 1;

            } else {

                $status = 0;

                $error = "File Not Removed from" . $path;

            }

            if ($status == 1) {

                header("Content-Type:application/json");

                echo json_encode(array("status" => 1, "message" => "file updated successfully", "file_name" => $file_name));

            } else {

                header("Content-Type:application/json");

                echo json_encode(array("status" => 0, "message" => $error));

            }

        } else {

            header("Content-Type:application/json");

            echo json_encode(array("status" => 0, "message" => "File not selected to delete"));

        }

    }



    public function updateFile() {

        $status = -1;

        $file_name = "";

        $directoryPath = $this->input->post('directory_path');

        $oldFileName = $this->input->post('old_file_name');



        if (isset($_FILES['image']) && $_FILES['image']['name'] != "") {

            $path = FCPATH . $directoryPath;

            if (!is_dir($path)) {

                mkdir($path, 0777);

            }

            $config['upload_path'] = $path;

            $config['allowed_types'] = 'jpeg|jpg|png|gif|webp';

            $config['max_size'] = 0;

            $config['overwrite'] = false;

            $config['encrypt_name'] = TRUE;

            $this->load->library('upload', $config);

            $this->upload->initialize($config);

            if (!$this->upload->do_upload('image')) {

                $error = array('error' => $this->upload->display_errors());

                $this->session->set_flashdata('error', $error['error']);

                $status = 0;

            } else {

                $data = array('upload_data' => $this->upload->data());

                $file_name = $data['upload_data']['file_name'];

                $status = 1;

            }

            if (is_file(FCPATH . $directoryPath . $oldFileName)) {

                unlink(FCPATH . $directoryPath . $oldFileName);

            }

            if ($status == 1) {

                header("Content-Type:application/json");

                echo json_encode(array("status" => 1, "message" => "file updated successfully", "file_name" => $file_name));

            } else {

                header("Content-Type:application/json");

                echo json_encode(array("status" => 0, "message" => $error));

            }

        } else {

            header("Content-Type:application/json");

            echo json_encode(array("status" => 0, "message" => "File not selected to upload"));

        }

    }

}

