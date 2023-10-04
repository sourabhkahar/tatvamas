<?php

class SessionModel extends MY_Model {

    var $tableName = "ci_admin_session";
    var $tableUserSession = "ci_user_session";

    public function checkAdminSession($sessionId) {
        $this->db->select("user_id");
        $this->db->from($this->tableName);
        $this->db->where("session_token", $sessionId);
        $Q = $this->db->get();
        return $Q->row();
    }

    public function checkUserSession($sessionId) {
        $this->db->select("user_id");
        $this->db->from($this->tableUserSession);
        $this->db->where("session_token", $sessionId);
        $Q = $this->db->get();
        return $Q->row();
    }

}
