<?php
class Upload{
    var $target_directory = "uploads/"; //tempat penyimpanan file
    var $limit = 50000000; //batas ukuran file yang diupload
    var $error; //penampung error
    var $hasil; 

    public function uploadFile($file){
        $ukuran = $this->fileSize($file);

        if ($ukuran == 0) { //kalo filenya ga ada
            $this->hasil = array("status" => "1", "info" => null); 
        }else{ //kalo filenya ada
            //rename file
            $extention = $this->getFileExtention($file);
            $newname = "img_".date("Ymd_His").".".$extention;
            $target_file = $this->target_directory . $newname;

            // jika file sudah ada
            if (file_exists($target_file)) {
                $this->error = "file sudah ada";
            }
    
            // cek ukuran file
            if ($ukuran > $this->limit) {
                $this->error = "ukuran file melebihi ". $this->limit . " byte";
            }
    
            // Allow certain file formats
            if($extention != "jpg" && $extention != "png" && $extention != "jpeg"
            && $extention != "gif" ) {
                $this->error = "hanya JPG, JPEG, PNG & GIF yang diperbolehkan.";
            }
    
            // apakah ada error?
            if (strlen($this->error) > 0) {
                $this->hasil = array("status" => "0", "info" => "error : ".$this->error);
            } else { // jika tidak maka lanjutkan proses upload
                if (move_uploaded_file($file["tmp_name"], $target_file)) {
                    //$this->hasil = array("status" => "1", "info" => basename( $file["name"])); 
                    $this->hasil = array("status" => "1", "info" => $newname); 
                } else {
                    $this->hasil = array("status" => "0", "info" => "Gagal upload");
                }
            }
        }
        return $this->hasil;
    }

    public function getFileExtention($file){
        $tmp = explode('.', $file["name"]);
        $ext = end($tmp);
        return strtolower($ext);
    }

    public function fileSize($file){
        return $file["size"];
    }

    public function hapusFile($filename){
        //print_r($this->target_directory.$filename);
         
        // jika file sudah ada
        if (file_exists($this->target_directory.$filename)) {
            //print_r("exist");
            unlink($this->target_directory.$filename);
            $this->hasil = array("status" => "1", "info" => $filename. " dihapus.");
        }else{
            $this->hasil = array("status" => "0", "info" => $filename. " tak ditemukan.");
        }
        
        //die(print_r($this->hasil ));
        
        return $this->hasil;
    }
}
?>