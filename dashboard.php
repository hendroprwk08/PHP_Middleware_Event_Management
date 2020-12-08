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
    $sql = "SELECT count(id) as jumlah FROM event";
    
    $result = array("result"=>$d->getAll($sql));

    print json_encode($result);
}elseif($action == "2"){
    $sql = "SELECT count(id) as jumlah FROM peserta";
    
    $result = array("result"=>$d->getAll($sql));

    print json_encode($result);
}elseif($action == "3"){
    $sql = "select event, date, time, count(id) as jumlah from veventpeserta group by event, date, time  order by count(id) desc limit 5";
    
    $result = array("result"=>$d->getAll($sql));

    print json_encode($result);
}elseif($action == "4"){
    $sql = "select name, institution, jumlah from vjumlaheventpeserta order by jumlah desc limit 5";
    
    $result = array("result"=>$d->getAll($sql));

    print json_encode($result);
}elseif($action == "5"){
    $sql = "select distinct( tahun ) from vrekapeventtahunan";
    
    $result = array("result"=>$d->getAll($sql));

    print json_encode($result);
}elseif($action == "6"){
    $sql = "select * from vrekapeventtahunan where tahun = ". $_REQUEST['thn'];
    
    $result = array("result"=>$d->getAll($sql));

    print json_encode($result);
}
?>
