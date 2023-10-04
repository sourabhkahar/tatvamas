<?php

class PatientModel extends MY_Model {

    var $tableName = "mstr_patient";
    var $primary_key = "patient_id";
    var $viewName = "mstr_patient";
   
    public function add($data) {
        $this->db->insert($this->tableName, $data);
        return $this->db->insert_id();
    }

    public function edit($data, $where) {
        $this->db->where($this->primary_key, $where);
        $this->db->update($this->tableName, $data);
        return 1;
    }

    public function delete($where) {

        $this->db->where($this->primary_key, $where);
        $this->db->delete("tbl_patient_details");
        
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
            $this->db->or_like("mobile_no", strtolower($keyword));
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
    
    public function table_rescription($start = null, $length = null, $keyword = null, $fieldName = null, $orderType = null, $where_attr = array(), $start_date = null, $end_date = null, $debug = false) {
        $this->db->select("*");        
        $this->db->from($this->viewName);
        $this->db->join('tbl_patient_details','tbl_patient_details.patient_id = '.$this->viewName.'.patient_id');
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
    
    public function today_scheduled_appointments($start = null, $length = null, $keyword = null, $fieldName = null, $orderType = null, $where_attr = array(), $start_date = null, $end_date = null, $debug = false) {
        $this->db->select("*");        
        $this->db->from($this->viewName);
        //$this->db->join('tbl_patient_details','tbl_patient_details.patient_id = '.$this->viewName.'.patient_id');
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
        return $Q->num_rows();
    }
    
    public function today_admitted_patients($start = null, $length = null, $keyword = null, $fieldName = null, $orderType = null, $where_attr = array(), $start_date = null, $end_date = null, $debug = false) {
        $this->db->select("*");        
        $this->db->from($this->viewName);
        //$this->db->join('tbl_patient_details','tbl_patient_details.patient_id = '.$this->viewName.'.patient_id');
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
        return $Q->num_rows();
    }
    
    public function today_payment_collection($start = null, $length = null, $keyword = null, $fieldName = null, $orderType = null, $where_attr = array(), $start_date = null, $end_date = null, $debug = false) {
        // $this->db->select("*");        
        // $this->db->from($this->viewName);
        // $this->db->join('tbl_patient_details','tbl_patient_details.patient_id = '.$this->viewName.'.patient_id');
        //$this->db->group_by('tbl_patient_details.treatment_type_id'); 
        $this->db->select("*");        
        $this->db->from("tbl_patient_details");
        $this->db->where('DATE_FORMAT(c_date, "%Y-%m-%d") = DATE_FORMAT("'.date("Y-m-d").'", "%Y-%m-%d")');
        if (!empty($where_attr)) {
            foreach ($where_attr as $key => $value) {
                $this->db->where($key, $value);
            }
        }
        if ($keyword !== null && $keyword != '') {
            $this->db->like("LOWER(name)", strtolower($keyword));
        }
        //$this->db->limit($length, $start);
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
    
    public function checkDuplicateAnd($param, $id) {
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

    public function report($select = "*", $start_date = null, $end_date = null, $where = "", $where_attr = array(), $groupBy = null, $multipleRec = false, $debug = false) {
        $this->db->select($select);
        $this->db->from("tbl_patient_details");
        if (!empty($where_attr)) {
            foreach ($where_attr as $key => $value) {
                $this->db->where($key, $value);
            }
        }
        if ($where != '') {
            $this->db->where($where);
        }
        if ($start_date != null) {
            $this->db->where('DATE_FORMAT(c_date, "%Y-%m-%d") >= DATE_FORMAT("'.date("Y-m-d", strtotime($start_date)).'", "%Y-%m-%d")');
        }
        if ($end_date != null) {
            $this->db->where('DATE_FORMAT(c_date, "%Y-%m-%d") <= DATE_FORMAT("'.date("Y-m-d", strtotime($end_date)).'", "%Y-%m-%d")');
        }
        
        $this->db->order_by("patient_details_id", 'ASC');
        if ($groupBy != null) {
            $this->db->group_by($groupBy);
        }
        $Q = $this->db->get();
        if ($debug) {
            pf($this->db->last_query());
        }
        if ($multipleRec) {
            return $Q->result_array();
        } else {
            return $Q->row();
        }
    }
}


