<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/*
  |--------------------------------------------------------------------------
  | Display Debug backtrace
  |--------------------------------------------------------------------------
  |
  | If set to TRUE, a backtrace will be displayed along with php errors. If
  | error_reporting is disabled, the backtrace will not display, regardless
  | of this setting
  |
 */
defined('SHOW_DEBUG_BACKTRACE') OR define('SHOW_DEBUG_BACKTRACE', TRUE);

/*
  |--------------------------------------------------------------------------
  | File and Directory Modes
  |--------------------------------------------------------------------------
  |
  | These prefs are used when checking and setting modes when working
  | with the file system.  The defaults are fine on servers with proper
  | security, but you may wish (or even need) to change the values in
  | certain environments (Apache running a separate process for each
  | user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
  | always be used to set the mode correctly.
  |
 */
defined('FILE_READ_MODE') OR define('FILE_READ_MODE', 0644);
defined('FILE_WRITE_MODE') OR define('FILE_WRITE_MODE', 0666);
defined('DIR_READ_MODE') OR define('DIR_READ_MODE', 0755);
defined('DIR_WRITE_MODE') OR define('DIR_WRITE_MODE', 0755);

/*
  |--------------------------------------------------------------------------
  | File Stream Modes
  |--------------------------------------------------------------------------
  |
  | These modes are used when working with fopen()/popen()
  |
 */
defined('FOPEN_READ') OR define('FOPEN_READ', 'rb');
defined('FOPEN_READ_WRITE') OR define('FOPEN_READ_WRITE', 'r+b');
defined('FOPEN_WRITE_CREATE_DESTRUCTIVE') OR define('FOPEN_WRITE_CREATE_DESTRUCTIVE', 'wb'); // truncates existing file data, use with care
defined('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE') OR define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE', 'w+b'); // truncates existing file data, use with care
defined('FOPEN_WRITE_CREATE') OR define('FOPEN_WRITE_CREATE', 'ab');
defined('FOPEN_READ_WRITE_CREATE') OR define('FOPEN_READ_WRITE_CREATE', 'a+b');
defined('FOPEN_WRITE_CREATE_STRICT') OR define('FOPEN_WRITE_CREATE_STRICT', 'xb');
defined('FOPEN_READ_WRITE_CREATE_STRICT') OR define('FOPEN_READ_WRITE_CREATE_STRICT', 'x+b');

/*
  |--------------------------------------------------------------------------
  | Exit Status Codes
  |--------------------------------------------------------------------------
  |
  | Used to indicate the conditions under which the script is exit()ing.
  | While there is no universal standard for error codes, there are some
  | broad conventions.  Three such conventions are mentioned below, for
  | those who wish to make use of them.  The CodeIgniter defaults were
  | chosen for the least overlap with these conventions, while still
  | leaving room for others to be defined in future versions and user
  | applications.
  |
  | The three main conventions used for determining exit status codes
  | are as follows:
  |
  |    Standard C/C++ Library (stdlibc):
  |       http://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
  |       (This link also contains other GNU-specific conventions)
  |    BSD sysexits.h:
  |       http://www.gsp.com/cgi-bin/man.cgi?section=3&topic=sysexits
  |    Bash scripting:
  |       http://tldp.org/LDP/abs/html/exitcodes.html
  |
 */
defined('EXIT_SUCCESS') OR define('EXIT_SUCCESS', 0); // no errors
defined('EXIT_ERROR') OR define('EXIT_ERROR', 1); // generic error
defined('EXIT_CONFIG') OR define('EXIT_CONFIG', 3); // configuration error
defined('EXIT_UNKNOWN_FILE') OR define('EXIT_UNKNOWN_FILE', 4); // file not found
defined('EXIT_UNKNOWN_CLASS') OR define('EXIT_UNKNOWN_CLASS', 5); // unknown class
defined('EXIT_UNKNOWN_METHOD') OR define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT') OR define('EXIT_USER_INPUT', 7); // invalid user input
defined('EXIT_DATABASE') OR define('EXIT_DATABASE', 8); // database error
defined('EXIT__AUTO_MIN') OR define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX') OR define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code

//Success Messages
defined("success_insert")OR define("success_insert", "Record added successfully");
defined("success_update")OR define("success_update", "Record updated sucessfully");
defined("success_delete")OR define("success_delete", "Record deleted sucessfully");
defined("success_authentication") OR define("success_authentication", "Authentication successful");
defined("success_registration")OR define("success_registration", "You have registered successfully");
defined("success_list_populate")OR define("success_list_populate", "%s list populated successfully");
defined("success_login")OR define("success_login", "you have logged successfully");

//Error Messages
defined("error_db_not_conntected") OR define("error_db_not_conntected", "Database connection not established properly, Please contact server admin");
defined("error_insert")OR define("error_insert", "Record not added");
defined("error_insert_internal_problem")OR define("error_insert_internal_problem", "Record not added, please try again.");
defined("error_internal") OR define("error_internal", "Internal error, Please try again");
defined("error_on_update") OR define("error_on_update", "Record not updated");
defined("error_on_delete") OR define("error_on_delete", "Record not deleted");
defined("error_on_upload") OR define("error_on_upload", "File not uploaded");
defined("error_on_update_internal_problem")OR define("error_on_update_internal_problem", "Record not update, please try again");
defined("error_record_not_found")OR define("error_record_not_found", "%s records not found");
defined("error_no_user_found")OR define("error_no_user_found", "No User found for given credentials");
defined("error_wrong_user")OR define("error_wrong_user", "Wrong Username");
defined("error_wrong_password")OR define("error_wrong_password", "Wrong Password");
defined("error_wrong_user_or_password") OR define("error_wrong_user_or_password", "Wrong UserName Or Password");
defined("error_invalid_secret") OR define("error_invalid_secret", "Authentication failed, Invalid secret key");
defined("error_action_to_do")OR define("error_action_to_do", "Please select action to do");
defined("error_authentication_failed")OR define("error_authentication_failed", "Authentication Failed, Please check your authentication");
defined("error_authorization_failed")OR define("error_authorization_failed", "Authorization failed, please check your authentication credentials");
defined("error_parameter_missing")OR define("error_parameter_missing", "Some parameters are missing. please check and try again");
defined("error_file_input_require")OR define("error_file_input_require", "File selection required,please selcect file");
defined("error_base_authorization_failed")OR define("error_base_authorization_failed", "Base Authentication failed");
defined("error_query_parameter_not_found")OR define("error_query_parameter_not_found", "Query Parameter is missing. Please try again");
defined("error_user_exists")OR define("error_user_exists", "Entered User Name Already Exists.\nPlease try new User Name");
defined("error_user_not_exists")OR define("error_user_not_exists", "Entered User Not Exists.Please check and try again");
defined("error_enter_field_required") OR define("error_enter_field_required", "Please Enter %s");
defined("error_selection_required") OR define("error_selection_required", "Please select %s");
defined("error_sending_mail") OR define("error_sending_mail", "Mail Not sent, Please try again.");
defined("error_mail_error")OR define("error_mail_error", "Mail Not sent, Error Occured: %s");
defined("error_no_actions_found") OR define("error_no_actions_found", "No actions found in list to do");
defined("error_record_exists")OR define("error_record_exists", "Entered name already exists");
defined("error_passwor_not_match") OR define("error_passwor_not_match", "Please enter your new password and confirm password both same.");
defined("error_old_not_fount") OR define("error_old_not_fount", "Invalid OLD Password Please Try Again");
defined("error_enter_valid_data") OR define("error_enter_valid_data", "Please Enter Valid %s");
defined("error_in_login") OR define('error_in_login', 'Error in login, Please check your credentials');

defined("duplicate_record")OR define("duplicate_record", "Duplicate record found!");

defined('STATUS_SUCCESS') OR define('STATUS_SUCCESS',1);//SUCCESS RESPONSE
defined('STATUS_ERROR') OR define('STATUS_ERROR',0);//GENERAL ERRORS
defined('STATUS_NO_USER') OR define("STATUS_NO_USER",100);//NO USER FOUND
defined('STATUS_PARAMETERS_MISSING') OR define('STATUS_PARAMETERS_MISSING',101);// PARAMETERS MISSING
defined('STATUS_NO_RECORDS') OR define('STATUS_NO_RECORDS',102);

//User Roles
defined('SUPERADMIN') OR define('SUPERADMIN', 1);
defined('EMPLOYEE') OR define('EMPLOYEE', 2);

$image_allowd_type = array('jpg', 'jpeg', 'png', 'webp');
// $image_allowd_type = array('jks');
defined('IMAGE_ALLOWD_TYPE') OR define('IMAGE_ALLOWD_TYPE', $image_allowd_type);
defined('MAX_CHARACTERS') OR define('MAX_CHARACTERS', "Please Fill Only 255 Characters...");

defined('USER_PROFILE_NAME') OR define('USER_PROFILE_NAME', "user_profile.jpg");

defined('PARTY_TYPE_PARTY') OR define('PARTY_TYPE_PARTY', 1);
defined('PARTY_TYPE_CASH') OR define('PARTY_TYPE_CASH', 2);
defined('PARTY_TYPE_BANK') OR define('PARTY_TYPE_BANK', 3);

defined('TRANSACTION_TYPE') OR define('TRANSACTION_TYPE', array(0=>"Debit", 1=>'Credit'));