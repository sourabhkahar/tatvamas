<?php
class AdminModel extends MY_Model {

    var $sessionTable     = "ci_admin_session";
    var $tableName        = "mstr_admin";
    var $tableSubPageList = "mstr_sub_pages";
    var $tableUserRoles   = "mstr_user_roles";
    var $tableUserRights  = "tbl_user_rights";
    var $viewUserRights   = "view_user_rights";
    var $primary_key      = "admin_id";

    public function login($username, $password, $isEmail) {

        $this->db->select("*");
        $this->db->from($this->tableName);
        if ($isEmail) {
            $this->db->where("email_id", $username);
        } else {
            $this->db->where("login_name", $username);
        }

        $this->db->where('status', 1);
        $Q = $this->db->get();
        $result = $Q->row();
        if (!empty($result)) {
            $salt = $result->user_salt;
            $iv = $result->user_iv;
            $unique_key = $result->unique_key;
            if ($password == $this->decrypt($salt, $iv, $unique_key, $result->login_password)) {
                $session = $this->createSession($result->admin_id, $result->role_id);
                $data = array("session_id" => $session["session_token"]);
                $this->session->set_userdata("admin_details", $result);
                $this->session->set_userdata("pages", $session['pages']);
                unset($result);
                return $data;
            } else {
                unset($result);
                $result = array("status" => 0, "message" => error_wrong_password);
                return $result;
            }
        } else {
            return array("status" => 0, "message" => error_wrong_user_or_password);
        }
    }

    public function passwordCheck($username, $password) {
        $this->db->select("*");
        $this->db->from($this->tableName);
        $this->db->where("login_name", $username);
        $Q = $this->db->get();
        $result = $Q->row();
        if (!empty($result)) {
            $salt = $result->user_salt;
            $iv = $result->user_iv;
            $unique_key = $result->unique_key;
            if ($password == $this->decrypt($salt, $iv, $unique_key, $result->login_password)) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public function getUserRights($roleId) {
        $this->db->select("*");
        $this->db->from($this->viewUserRights);
        $this->db->where("role_id", $roleId);
        $this->db->group_by('page_id');
        $Q = $this->db->get();
        return $Q->result_array();
    }

    public function getSubPages($pageId, $roleId) {
        $this->db->select("*");
        $this->db->from($this->tableSubPageList);
        $this->db->where("page_id", $pageId);
        $this->db->where("sub_page_id IN (SELECT sub_page_id FROM " . $this->tableUserRights . " WHERE role_id = '" . $roleId . "')");
        $Q = $this->db->get();
        return $Q->result_array();
    }

    private function createSession($userId, $roleId) {
        $pages = $this->getUserRights($roleId);
        $pageIndex = array();
        foreach ($pages as $page) {
            if ($page['has_sub_page']) {
                $sub_pages = $this->getSubPages($page['page_id'], $roleId);
                $page['sub_page'] = $sub_pages;
                $pageIndex[] = $page;
            } else {
                $page['sub_page'] = [];
                $pageIndex[] = $page;
            }
        }

        $loginToken = array(
            "session_token" => $this->session->session_id,
            "user_id" => $userId,
            "ip_address" => $this->input->ip_address()
        );

        $this->db->select("user_id");
        $this->db->from($this->sessionTable);
        $this->db->where("user_id", $userId);
        $Q = $this->db->get();
        if ($Q->num_rows() > 0) {
            $this->db->where("user_id", $userId);
            $this->db->update($this->sessionTable, $loginToken);
        } else {
            $this->db->insert($this->sessionTable, $loginToken);
        }
        $result['session_id'] = $this->db->insert_id();
        $result['session_token'] = $loginToken['session_token'];
        $result['pages'] = json_encode($pageIndex);
        return $result;
    }

    public function getRoleName($roleId) {
        $this->db->select("name");
        $this->db->from($this->tableUserRoles);
        $this->db->where('role_id', $roleId);
        $Q = $this->db->get();
        $result = $Q->row();
        return ucfirst($result->name);
    }

    public function table($start = null, $length = null, $keyword = null, $fieldName = null, $orderType = null, $where_attr = array()) {
        $this->db->select("*");
        $this->db->from($this->tableName);
        if (!empty($where_attr)) {
            foreach ($where_attr as $key => $value) {
                $this->db->where($key, $value);
            }
        }
        // $this->db->where("admin_id <> 1 AND role_id != 1");
        if ($keyword !== null && $keyword != '') {
            $this->db->like("LOWER(login_name)", strtolower($keyword));
        }
        $this->db->limit($length, $start);
        if ($fieldName != null && $orderType != null) {
            $this->db->order_by($fieldName, $orderType);
        } else {
            $this->db->order_by($this->primary_key, 'desc');
        }
        $Q = $this->db->get();
        return $Q->result_array();
    }

    public function getDetailsByLoginNameOrEmail($loginName, $emailId="") {
        $this->db->select("*");
        $this->db->from($this->tableName);
        $this->db->where("login_name", $loginName);
        if($emailId != ""){
            $this->db->or_where("email_id", $emailId);
        }
        $Q = $this->db->get();
        return $Q->row();
    }

    public function add($data) {
        $data['unique_key'] = $this->generatePasswordKey($data['login_password']);
        $data['user_salt'] = $this->generateKey16Bit();
        $data['user_iv'] = $this->generateKey16Bit();
        $data['login_password'] = $this->encyrpt($data['user_salt'], $data['user_iv'], $data['unique_key'], $data['login_password']);
        $this->db->insert($this->tableName, $data);
        return $this->db->insert_id();
    }

    public function edit($data, $userId) {
        $this->db->where("admin_id", $userId);
        $this->db->update($this->tableName, $data);
        return 1;
    }

    public function delete($where) {
        $this->db->where($this->primary_key, $where);
        $this->db->delete($this->tableName);
        return $this->db->affected_rows();
    }
    
    public function getDetails($userId) {
        $this->db->select("*");
        $this->db->from($this->tableName);
        $this->db->where("admin_id", $userId);
        $Q = $this->db->get();
        return $Q->row();
    }

    public function list() {
        $this->db->select($this->primary_key . " as value, name");
        $this->db->from($this->tableName);
        $this->db->where('status', '1');
        $this->db->where('role_id', '2');
        $this->db->order_by('name', 'ASC');
        $Q = $this->db->get();
        return $Q->result_array();
    }
}