<?php
include "database.php";

$d = new Database();
$d->open();

$result = array();

if (empty($_REQUEST['action'])){
    $result = array(
      "status" => "O",
      "result" => "Not OK"
    );
    
    print json_encode($result);
}elseif($_REQUEST['action'] == "1"){
    $sql = "update pengguna set password = '". md5($_REQUEST['pw'])."' where email = '". $_REQUEST['em'] ."'";
    $d->execute($sql);
	
    //send mail
    $message = "<html>
        <head>
            <title>Password Changed</title>
        </head>
        <body>
        <p>Your password changed to</p>
        <p style='padding:20 0; font-size:30px'><b>". $_REQUEST['pw'] ."</b></p>
        <p><small>This is automatic email response. Do not reply!</small></p>
        </body>
        </html>";
    
    // Always set content-type when sending HTML email
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $headers .= "X-Priority: 3\r\n";
    $headers .= "X-Mailer: PHP". phpversion() ."\r\n";
  
    // More headers
    $headers .= 'From: Auto Response LCC EM<no-reply@lcc.com>' . "\r\n";
    //$headers .= 'Cc: myboss@example.com' . "\r\n";
    
    mail($_REQUEST['em'], "Password changed, please keep this email", $message, $headers);

	$result = array(
      "status" => "1",
      "result" => "OK"
    );
    
    print json_encode($result);
}  
?>
