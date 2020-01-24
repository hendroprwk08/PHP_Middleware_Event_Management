<?php
include "database.php";

$d = new Database();
$d->open();

$sql = "insert into peserta (name, institution, whatsapp, phone, email) "
        . "values ('". $_REQUEST['nama']."', '". $_REQUEST['kampus']."', '". $_REQUEST['wa']."', "
        . "'". $_REQUEST['phone']."', '". $_REQUEST['email']."')";

$d->execute($sql);

$id = $d->getLastID();

$sql = "insert into pendaftaran (id_event, id_peserta, active) values (". $_REQUEST['event_id'].", ". $id. ", true)";

$d->execute($sql);
    
$myarray[] = array(
    "response" => $_REQUEST['nama']." registered"
);

$result = array("result"=>$myarray);
print json_encode($result);
?> 