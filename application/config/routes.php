<?php

defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'Web';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

//------------------------------------------------ Admin Module ----------------------------------------------------
$route['admin'] = 'admin/Admin';
$route['admin/login'] = 'admin/Admin/Login';
$route['admin/dashboard'] = 'admin/Admin/Dashboard';
$route['admin/logout'] = 'admin/Admin/Logout';
$route['admin/profile'] = 'admin/Admin/Profile';

$route['admin/locations'] = 'admin/Locations';
$route['admin/locations/add'] = 'admin/Locations/add';
$route['admin/locations/edit/(:num)'] = 'admin/Locations/edit/$1';
$route['admin/locations/table'] = 'admin/Locations/table';
$route['admin/locations/list'] = 'admin/Locations/list';

$route['admin/treatment_type'] = 'admin/TreatmentType';
$route['admin/treatment_type/add'] = 'admin/TreatmentType/add';
$route['admin/treatment_type/edit/(:num)'] = 'admin/TreatmentType/edit/$1';
$route['admin/treatment_type/table'] = 'admin/TreatmentType/table';
$route['admin/treatment_type/list'] = 'admin/TreatmentType/list';

$route['admin/patient'] = 'admin/Patient';
$route['admin/patient/status/(:any)'] = 'admin/Patient/indexByStatus/$1';
$route['admin/patient/add'] = 'admin/Patient/add';
$route['admin/patient/edit/(:num)'] = 'admin/Patient/edit/$1';
$route['admin/patient/table'] = 'admin/Patient/table';
$route['admin/patient/list'] = 'admin/Patient/list';
$route['admin/patient/view/(:num)'] = 'admin/Patient/view/$1';
$route['admin/patient/payment'] = 'admin/Patient/payment';


$route['admin/patient/table_patient_prescription/(:num)'] = 'admin/Patient/table_patient_prescription/$1';
$route['admin/patient/patient_prescription/add'] = 'admin/Patient/add_patient_prescription';
$route['admin/patient/patient_prescription/edit/(:num)'] = 'admin/Patient/edit_patient_prescription/(:num)';
$route['admin/patient/patient_prescription/list_single_patient_prescription/(:num)'] = 'admin/Patient/list_single_patient_prescription/$1';
$route['admin/patient/patient_prescription/delete_patient_prescription'] = 'admin/Patient/delete_patient_prescription';

$route['admin/patient/report'] = 'admin/PatientReport';
$route['admin/patient/report/table'] = 'admin/PatientReport/table';

//upload files
$route['upload/upload'] = 'upload/Upload/upload';
$route['upload/updateFile'] = 'upload/Upload/updateFile';
$route['upload/removeFile'] = 'upload/Upload/removeFile';