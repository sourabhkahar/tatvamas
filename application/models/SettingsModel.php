<?php

class SettingsModel extends MY_Model {

    var $tableName = "mstr_site_settings";

    public function get($key) {
        $this->db->select("v_value");
        $this->db->from($this->tableName);
        $this->db->where("v_key", $key);
        $query = $this->db->get();
        return $query->row()->v_value;
    }

    public function getAllSettings() {
        $this->db->select("*");
        $this->db->from($this->tableName);
        $this->db->where('settings_id > 1');
        $query = $this->db->get();
        return $query->result();
    }

    public function edit($data, $key) {
        $this->db->where('v_key', $key);
        $this->db->update($this->tableName, $data);
        return $this->db->affected_rows();
    }

}
