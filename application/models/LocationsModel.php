<?php

class LocationsModel extends MY_Model {

    var $tableName = "mstr_location";
    var $primary_key = "location_id";
    var $viewName = "mstr_location";
   
    public function add($data) {
        $this->db->insert($this->tableName, $data);
        return $this->db->insert_id();
    }

    public function edit($data, $where) {
        $this->db->where($this->primary_key, $where);
        $this->db->update($this->tableName, $data);
        return $this->db->affected_rows();
    }

    public function delete($where) {
        $this->db->where($this->primary_key, $where);
        $this->db->delete($this->tableName);
        return $this->db->affected_rows();
    }
    
    public function getDetails($which) {
        $this->db->select("*");
        $this->db->from($this->tableName);
        $this->db->where($this->primary_key, $which);
        $Q = $this->db->get();
        return $Q->row();
    }
    
    public function table($start = null, $length = null, $keyword = null, $fieldName = null, $orderType = null, $where_attr = array(), $start_date = null, $end_date = null, $debug = false) {
        $this->db->select("*");
        $this->db->from($this->viewName);
        if (!empty($where_attr)) {
            foreach ($where_attr as $key => $value) {
                $this->db->where($key, $value);
            }
        }
        if ($keyword !== null && $keyword != '') {
            $this->db->like("LOWER(name)", strtolower($keyword));
        }
        $this->db->limit($length, $start);
        if ($fieldName != null && $orderType != null) {
            $this->db->order_by($fieldName, $orderType);
        } else {
            $this->db->order_by($this->primary_key, 'desc');
        }
        $Q = $this->db->get();
        if ($debug) {
            pf($this->db->last_query());
        }
        return $Q->result_array();
    }
    
    public function checkDuplicate($param, $id) {
        $this->db->select("*");
        $this->db->from($this->tableName);
        $this->db->where($param);
        if (is_int($id)) {
            if ($id > 0) {
                $ignore = array($id);
                $this->db->where_not_in($this->primary_key, $id);
            }
        } else if (is_array($id) || is_string($id)) {
            $this->db->where($id);
        }
        $Q = $this->db->get();
        if ($Q->num_rows() > 0) {
            return false;
        } else {
            return true;
        }
    }
}


