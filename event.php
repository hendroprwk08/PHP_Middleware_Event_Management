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
    $result = array("result"=>"0");
    print json_encode($result);
}elseif($action == "1"){
    $sql = "insert into event (event, description, date, time, visible) "
            . "values ('". $_REQUEST['event']."', '". $_REQUEST['deskripsi']."', '". $_REQUEST['tgl']."', '". $_REQUEST['jam']."', ". $_REQUEST['visible'].")";
    $d->execute($sql);
         
    $myarray[] = array(
        "response" => $_REQUEST['event']." inserted"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "2"){
    $sql = "update event set event = '". $_REQUEST['event']."', "
            . "description = '". $_REQUEST['deskripsi']."', "
            . "date = '". $_REQUEST['tgl']."', "
            . "time = '". $_REQUEST['jam']."', "
            . "visible = ". $_REQUEST['visible']." "
            . "where id = ". $_REQUEST['id'];
    $d->execute($sql);

    $myarray[] = array(
        "response" => $_REQUEST['event']." updated"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "3"){
    $sql = "update event set visible = 0 where id = ". $_REQUEST['id'];
    $d->execute($sql);

    $myarray[] = array(
        "response" => $_REQUEST['id'] ." hidden"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($action == "4"){
    $sql = "select * from event order by id desc";
    
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "41"){
    $sql = "select * from event where visible = 1 order by id desc";
    
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}elseif($action == "5"){
    $sql = "select * from event where event like '%". $_REQUEST['find'] ."%'";
    
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}
?>
