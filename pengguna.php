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
    $sql = "insert into pengguna (username, password, email, phone, active, type) "
        . "values ('". $_REQUEST['username']."', '". md5($_REQUEST['password'])."', "
        . "'". $_REQUEST['email']."', '". $_REQUEST['phone']."', '". $_REQUEST['active']."', "
        . "'". $_REQUEST['type']."')";

    $d->execute($sql);
    
    $myarray[] = array(
        "response" => $_REQUEST['username']." inserted"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "2"){
    if ($_REQUEST['password'] == ""){
        $sql = "update pengguna set phone = '". $_REQUEST['phone']."', "
            . "email = '". $_REQUEST['email']."', "
            . "active = '". $_REQUEST['active']."', "
            . "type = '". $_REQUEST['type']."' "
            . "where username = '". $_REQUEST['username']."'";
    }else{
        $sql = "update pengguna set password = '". md5($_REQUEST['password'])."', "
            . "phone = '". $_REQUEST['phone']."', "
            . "email = '". $_REQUEST['email']."', "
            . "active = '". $_REQUEST['active']."', "
            . "type = '". $_REQUEST['type']."' "
            . "where username = '". $_REQUEST['username']."'";
    }
    $d->execute($sql);
    
    $myarray[] = array(
        "response" => $_REQUEST['username']." updated"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "3"){
    $sql = "delete from pengguna where username ='". $_REQUEST['username'] ."'";
    $d->execute($sql);
    
    $myarray[] = array(
        "response" => $_REQUEST['username']." deleted"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "4"){
    $sql = "select USERNAME, EMAIL, PHONE, ACTIVE, TYPE from pengguna";
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "5"){
    $sql = "select USERNAME, EMAIL, PHONE, ACTIVE, TYPE from pengguna where username like '%". $_REQUEST['find'] ."%'";
        $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}
?>
