<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

class Database{
    var $conn;
    var $host = "localhost";
    var $db = "id15623844_event";
    var $user = "id15623844_hendro";
    var $pass = "kik#W!n%]yRci=)4";
    
    public function open(){
        $this->conn = mysqli_connect ($this->host,
                                $this->user,
                                $this->pass,
                                $this->db) 
                or die(json_encode(array("status" => "0", "message" => mysqli_error($this->conn))));                
    }
   
    public function execute($sql){
        mysqli_query($this->conn, $sql) 
            or die (mysqli_error($this->conn));    
    }
    
    public function getAll($sql){
        $datas = Array();
        
        $query = mysqli_query($this->conn, $sql) or die (json_encode(array("status" => "0", "message" => mysqli_error($this->conn))));    
        
        while($row = mysqli_fetch_assoc($query)){
            $datas[] = $row;
        }
        
        return $datas;       
    }
    
    public function getOneData($sql){
        return null;
    }
	
    public function getLastID(){
        return mysqli_insert_id($this->conn);
    } 
}
?>

