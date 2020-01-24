<?php
include "database.php";

$d = new Database();
$d->open();

$result = array();

if (empty($_REQUEST['action'])){
    $myarray[] = array(
        "response" => "0"
    );
    
    $result = array("result"=>$myarray);
    print json_encode($result);
}elseif($_REQUEST['action'] == "1"){
    $sql = "select USERNAME, PASSWORD, EMAIL, ACTIVE, TYPE from pengguna where email = '". $_REQUEST['em'] ."' and "
            ."password = '". md5($_REQUEST['pw'])."' and active='Yes'";
           
    $res = $d->getAll($sql);
	
	if (count($res) == 0){
	    $result = array(
          "status" => "0",
          "result" => $_REQUEST['em'] ." Not found"
        );    
	}else{
	     //send mail
    	$permitted_chars = '0123456789';
        $unique = substr(str_shuffle($permitted_chars), 0, 6);
    
    	$sql = "update pengguna set vericode = '".$unique."' where email = '". $_REQUEST['em'] ."'";
    	
    	$d->execute($sql);
    	
    	//send mail
        $message = "<html>
            <head>
                <title>Your Verification Code</title>
            </head>
            <body>
            <p>Please keep your one-time verification code</p>
            <p style='padding:20 0; font-size:30px'><b>". $unique ."</b></p>
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
        
        mail($_REQUEST['em'], "Your Verification Code", $message, $headers);
    
    
    	$result = array(
          "status" => "1",
          "msg" => "Verification code sent to ". $_REQUEST['em'],
          "result" => $res
        );
      
	}  
    print json_encode($result);
}elseif($_REQUEST['action']  == "11"){ //login and verification
    $sql = "select * from pengguna where email = '". $_REQUEST['em'] ."' and vericode = '". $_REQUEST['veri'] ."'";

    $res = $d->getAll($sql);

    if (count($res) == 0 ){
    	$result = array(
          "status" => "0",
          "result" => "Verification failed"
        );      
    }else{
        $sql = "update pengguna set vericode = '' where email = '". $_REQUEST['em'] ."'";
    	
    	$d->execute($sql);
    	
    	$result = array(
          "status" => "1",
          "msg" => "Let`s go",
          "result" => $res
        );  
    }
    
    print json_encode($result);
}
?>
