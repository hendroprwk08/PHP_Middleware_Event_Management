<?php
include "database.php";
include "upload.php";

$u = new Upload();

$u->hapusFile($_REQUEST["old"]);
$hasil = $u->uploadFile($_FILES["image"]);

$result = array();

if ($hasil["status"] == "0"){
    $result = array(
        "status" => "0",
        "result" => $hasil["info"]
    );    
}else{
    $d = new Database();
    $d->open();
    $sql = "update pengguna set foto = '". $hasil["info"] ."' where email = '".$_REQUEST["em"]."'";
    $d->execute($sql); 

    $result = array(
        "status" => "1",
        "result" => $hasil["info"]
    );
}

print json_encode($result);
?>