<?php
include "database.php";

$action = null;

if (!isset($_REQUEST['action'])){
   $action = null; 
}else{
   $action = $_REQUEST['action'];  
}

$d = new Database();
$d->open();

$result = array();

if ($action == null){
    $myarray[] = array(
        "response" => "0"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "1"){
    $sql = "insert into peserta (name, institution, whatsapp, phone, email, active) "
            ."values ('". $_REQUEST['name']."', '". $_REQUEST['institution']."', "
            ."'". $_REQUEST['whatsapp']."', '". $_REQUEST['phone']."', '". $_REQUEST['email']."', '". $_REQUEST['active']."')";
    $d->execute($sql);
    
    $myarray[] = array(
        "response" => $_REQUEST['name']." inserted"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "2"){
    $sql = "update peserta set name = '". $_REQUEST['name']."', "
            . "institution  = '". $_REQUEST['institution']."', "
            . "whatsapp = '". $_REQUEST['whatsapp']."', "
            . "phone = '". $_REQUEST['phone']."', "
            . "email = '". $_REQUEST['email']."', "
            . "active = '". $_REQUEST['active']."' "
            . "where id = ". $_REQUEST['id'];
    $d->execute($sql);
    
    $myarray[] = array(
        "response" => $_REQUEST['name']." updated"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "3"){
    $sql = "update peserta set active ='No' where id = ". $_REQUEST['id'];
    $d->execute($sql);
    
    $myarray[] = array(
        "response" => $_REQUEST['id']." inactivated"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "4"){
    $sql = "select ID, NAME, INSTITUTION, WHATSAPP, PHONE, EMAIL, ACTIVE, INPUT from peserta";
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "41"){
    $sql = "select ID, NAME, INSTITUTION, WHATSAPP, PHONE, EMAIL, ACTIVE, INPUT "
            ."FROM vpendaftaranpeserta WHERE id_event = ". $_REQUEST['id'];
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "5"){
    $sql = "select ID, NAME, INSTITUTION, WHATSAPP, PHONE, EMAIL, ACTIVE, INPUT from peserta where NAME like '%". $_REQUEST['find'] ."%'"
            ." or INSTITUTION like '%". $_REQUEST['find'] ."%'";
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "6"){
    $sql = "select ID, NAME, INSTITUTION, WHATSAPP, PHONE, EMAIL, ACTIVE, INPUT from peserta where id = ". $_REQUEST['id'];
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "7"){
    $sql = "select id_event, event, date, time from veventpeserta where id = ". $_REQUEST['id'];
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "8"){
    $sql = "select id, name, institution, whatsapp, phone, email, active, jumlah from vjumlaheventpeserta order by jumlah desc";
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "9"){
    $sql = "select id, name, institution, whatsapp, phone, email, active, jumlah from vjumlaheventpeserta where name like '%". $_REQUEST['find'] ."%' or whatsapp like '%". $_REQUEST['find'] ."%' or phone like '%". $_REQUEST['find'] ."%' or email like '%". $_REQUEST['find'] ."%' or institution like '%". $_REQUEST['find'] ."%' order by jumlah, name desc ";
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}
?>
