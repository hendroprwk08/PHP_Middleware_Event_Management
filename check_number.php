<?php
include "database.php";

$d = new Database();
$d->open();

$result = array();
$sql = "select id, name, institution, whatsapp, phone, email from peserta 
        where whatsapp = '". $_REQUEST['phone'] ."' or phone = '". $_REQUEST['phone'] ."' limit 1";

$result = array("result"=>$d->getAll($sql));
print json_encode($result);
?>