<?php

class ErrorLogModel extends MY_Model {

    var $tableName = "tbl_error_log";
    var $apiTableName = "tbl_error_log_api";

    public function add($data) {
        $this->db->insert($this->tableName, $data);
        return $this->db->insert_id();
    }
    
    public function add_api($data) {
        $this->db->insert($this->apiTableName, $data);
        return $this->db->insert_id();
    }
}
