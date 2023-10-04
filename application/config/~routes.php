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
$route['admin/patient/add'] = 'admin/Patient/add';
$route['admin/patient/edit/(:num)'] = 'admin/Patient/edit/$1';
$route['admin/patient/table'] = 'admin/Patient/table';
$route['admin/patient/list'] = 'admin/Patient/list';

//upload files
$route['upload/upload'] = 'upload/Upload/upload';
$route['upload/updateFile'] = 'upload/Upload/updateFile';
$route['upload/removeFile'] = 'upload/Upload/removeFile';