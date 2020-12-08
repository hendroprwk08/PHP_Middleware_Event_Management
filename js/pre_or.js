 $(document).ready(function ()
{
    var URL = "https://kode-kita.000webhostapp.com/";
    var id, res, id_participants = null, name, institution, whatsapp, phone, c_phone, email;

    $("#pendaftaran").hide();
    $("#check").show();                

    $('select').attr("class", "browser-default"); //menampilkan(render) select

    //load kegiatan
    $.ajax({
        url: URL + 'load_event.php?action=1', 

        success: function(result){
            //var json = JSON.parse(result);  
            var json = result;  

            res = ""; 
            $.each(json['result'], function(index, element) {
                res += "<option value='"+ element.id + "'>" + element.event +": "+ element.date + " "+ element.time +"</option>";                            
            });  

            $("select").append(res); 
        },

        fail: function(xhr, textStatus, errorThrown){
            console.log(textStatus + ": " + errorThrown);
        }
    });      

    $("#bt_check").click(function() {
        c_phone = $("#c_phone").val();

        if (c_phone.length == 0){
            Swal.fire({
                    type: 'info',
                    title: 'Perhatian',
                    text: 'Isi nomer ponselmu',
                    footer: ''
                });

            return;
        }

        $.ajax({
            url: URL + 'check_number.php?phone='+ c_phone ,

            success: function(result){
                console.log(result); 

                //var json = JSON.parse(result);  
                var json = result;  

                res = json['result'];

                console.log(res);
                if (res.length != 0){
                    $.each(res, function(index, element) {
                        id_participants = element.id;
                        $("#name").val(element.name);
                        $("#institusi").val(element.institution);
                        $("#wa").val(element.whatsapp);
                        $("#phone").val(element.phone);
                        $("#email").val(element.email);
                    });  


                }else{
                    console.log(c_phone);
                    id_participants = null;
                                                    $("#wa").val(c_phone);
                } 

                $("#pendaftaran").show();
                $("#check").hide();                         
            },

            fail: function(xhr, textStatus, errorThrown){
                Swal.fire({
                    type: 'error',
                    title: textStatus,
                    text: errorThrown,
                    footer: ''
                });

                $("#loader").hide();
                $("#submit").attr("disabled", false);
            }
        });           
    });

    $("#back").click(function() {
        $("#pendaftaran").hide();
        $("#check").show();   
    });

    $("#submit").click(function() {
        var name = $("#name").val();
        var institution = $("#institusi").val();
        var wa = $("#wa").val();
        var phone = $("#phone").val();
        var email = $("#email").val();
        var kegiatan = $("#kegiatan").val();                    

        if (kegiatan === null){
            Swal.fire({
                    type: 'info',
                    title: 'Pilih kegiatanmu',
                    text: 'Kamu belum memilih kegiatan yang akan dihadiri',
                    footer: ''
                })

            return;
        }   

        var reg  = /\S+@\S+\.\S+/;  
        if (name.length == 0 || institution.length == 0 || wa.length == 0 || kegiatan === null || !reg.test(email)){
            Swal.fire({
                    type: 'info',
                    title: 'Lengkapi data dengan benar',
                    text: 'Nama, institusi, whatsapp, email',
                    footer: ''
                })

            return;
        }                    

        $("#submit").attr("disabled", true);

        var action_url;

                            console.log("participants: " +id_participants);

        if (id_participants == null){
            action_url = URL + 'daftar_front.php?event_id='+ kegiatan +'&nama=' + name + '&kampus=' + institution + '&wa=' + wa + '&phone=' + phone + '&email=' + email+'&active=Yes';
        }else{
            action_url = URL + 'daftar_front_exist.php?event_id='+ kegiatan +'&id=' + id_participants; 
        }

                            console.log(action_url);

        $.ajax({
            url: action_url, 
            success: function(result){  
                Swal.fire({
                    type: 'success',
                    title: 'Data tersimpan',
                    text: name + ' disimpan',
                    footer: ''
                })

                $("#c_phone").val("");
                $("#name").val("");
                $("#institusi").val("");
                $("#wa").val("");
                $("#phone").val("");
                $("#email").val("");
                $("#kegiatan").val("");

                $("#back").click();
                $("#submit").attr("disabled", false);
            },

            fail: function(xhr, textStatus, errorThrown){
                Swal.fire({
                    type: 'error',
                    title: textStatus,
                    text: errorThrown,
                    footer: ''
                });

                $("#submit").attr("disabled", false);
            }
        });                  
    });
});