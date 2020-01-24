<?php
include "database.php";

$d = new Database();
$d->open();

$action = null;

if (!isset($_REQUEST['action'])){
   $action = null; 
}else{
   $action = $_REQUEST['action'];  
}


$result = array();

if ($action == null){
    $sql = "select id, event, date, time from event order by id desc";
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}if ($action == 1){
    $sql = "select id, event, date, time from event where visible = 1 order by id desc";
    $result = array("result"=>$d->getAll($sql));
    print json_encode($result);
}
?> 