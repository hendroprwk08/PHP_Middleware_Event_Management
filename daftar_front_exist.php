<?php
include "database.php";

$d = new Database();
$d->open();

$sql = "insert into pendaftaran (id_event, id_peserta, active) values (". $_REQUEST['event_id'].", ". $_REQUEST['id']. ", true)";

$d->execute($sql);
    
$myarray[] = array(
    "response" => "You are registered"
);

$result = array("result"=>$myarray);
print json_encode($result);
?> 