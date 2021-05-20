$(function (){
	var table, tempID;
	var baseUrl = "https://kode-kita.000webhostapp.com/";
    
	$('select').attr("class", "browser-default"); //menampilkan(render) select
	
	$("#input-form").hide();
	
	$( "#tgl" ).datepicker({
		dateFormat: "yy-mm-dd"
	});
  
	$("#jam").timepicker({
		timeFormat: 'HH:mm',
	});

	$("#tambah").click(function(){
		$("#input-form").show();
		$("#table-data").hide();
	});
	
	$("#tutup").click(function(){
		$("#input-form").hide();
		$("#table-data").show();
		
		$("table").DataTable().clear().destroy();
		loadGrid();
	});
		
	loadGrid();
	
	function loadGrid(){
        myUrl = baseUrl + "event.php?action=4";
		
		$.ajax({
            url: myUrl, 
            dataType: "json",
            beforeSend:function(){
                $("#loader").fadeIn();
			},
            success: function(result){ 
                var rows, json = result.result; //ambil object "result"
                
				//console.log(json);
				
                table = 
                $("table").DataTable( {
                   "language": {
                        "emptyTable": "Tak ada Data"
                    },
                    data: json,
                    columns: [
                        { 
                            data: null,
                            "width": "200px",
                            "bSortable": false,
                            "mRender": function (data) {
                                var s; 
                                
                                if( data.visible == "0" ){
                                    s ='<b>'+ data.event + '</b><br/><small>Inactive</small>';  
                                }else{
                                    s ='<b>'+ data.event + '</b><br/><small>Active</small>';  
                                }
                                
                               return '<font size="2">'+ s +'</font>';
                            }
                            
                        },
                        { 
                            data: null,
                            "mRender": function (data) {
                                var s = null;
                                var desc = data.description;
                                var words = desc.split(" ").length;
                                
                                if (words > 20) {
                                  // Split the string on first 200 words and rejoin on spaces
                                  var trimmed = desc.split(/\s+/, 20).join(" ");
                                  s = trimmed + "...";
                                }
                                else {
                                    s = desc
                                }
                                
                                return '<font size="2">'+ s +'</font>';
                            }
                        },
                        { 
                            data: null,
                            "width": "100px",
                            "bSortable": false,
                            "mRender": function (data) {
                                var s = data.date + '<br/><small>'+ data.time +'</small>';  
                                return '<font size="2">'+ s +'</font>';
                            }
                        },
                        { 
                            data: null,
                            "width": "20px",
                            "bSortable": false,
                            "mRender": function (data) {
                                var s ='<a href="#" id= ' + data.id + ' class="ubah">' + 'Edit' + '</a> <a href="#" id= ' + data.id + ' class="hapus">' + 'Inactive' + '</a>';  
                                return '<font size="2">'+ s +'</font>';
                            }
                        }
                    ],
                });

				$('table tbody').on( 'click', 'a', function () {
                
                    var data = table.row( $(this).parents('tr') ).data();
                    //console.log(data);

                    var jenis = $(this).attr('class');

                    if (jenis == "ubah"){
						tempID = data['id'] 
                        $("#event").val(data[ 'event' ]);
                        $("#desk").val(data[ 'description' ]);
                        $("#tgl").val(data[ 'date' ]);
                        $("#jam").val(data[ 'time' ]);
                        $("#active").val(data[ 'visible' ]);
						
						$("#input-form").fadeIn();
						$("#table-data").fadeOut();
						
						 $("#submit").attr("disabled", false);
                    }else if(jenis == "hapus"){
                        id = data['id'];

                        Swal.fire({
                            title: "Konfirmasi",
                            text: "Data yang telah dihapus tak dapat dikembalikan",
                            type:"warning",
                            showCancelButton: true,
                            confirmButtonText: "Hapus data",
                        })

                        .then((result) =>{
                            if (result){
                                $.ajax({
                                    url: baseUrl + "event.php?action=3&id="+id,
                                    dataType: "json",
                                    success: function(result){
                                        var obj = result.hasil; //ambil object hasil
                                        var psn;

                                        //ambil pesan dari json
                                        $.each(obj, function(key, val){
                                            console.log("key val "+ key + " " + val.pesan);
                                            psn = val.pesan;
                                        });

                                        Swal.fire("Konfirmasi", psn, "success");

                                        table.destroy();
                                        loadGrid();
                                    }
                                });
                            }else{
                                Swal.fire("Penghapusan data dibatalkan");
                            }
                        });
                    }
                });
				
				$("#loader").fadeOut();
            },

            fail: function(xhr, textStatus, errorThrown){
                Swal.fire(textStatus, errorThrown, "error");
            }
        });  
    };

	$("#reset").click(function(){
		$("#event").val("");
		$("#desk").val("");
		$("#tgl").val("");
		$("#jam").val("");
	});

	$("#submit").click(function(){
		var event = $("#event").val();
		var desk = $("#desk").val();
		var tgl = $("#tgl").val();
		var jam = $("#jam").val();
		var active = $("#active option:selected").index();
		
		if (event.length == 0 || desk.length == 0 || tgl.length == 0 || jam.length == 0  ){
            Swal.fire({
                    type: 'info',
                    title: 'Lengkapi data',
                    text: 'Data yang disimpan harus lengkap',
                    footer: ''
                })

            return;
        }   
		
		var myUrl;
		
		if (tempID == null || tempID == "" ){
			myUrl = baseUrl + "event.php?action=1&event=" + event + "&deskripsi=" + desk +
					"&tgl=" + tgl + "&jam=" + jam + "&active="+ active;
		}else{
			myUrl = baseUrl + "event.php?action=2&id="+ tempID +"&event=" + event + "&deskripsi=" + desk +
					"&tgl=" + tgl + "&jam=" + jam + "&active="+ active;
		}
		
		console.log( myUrl );
		
		$("#submit").attr("disabled", true);
           
		$.ajax({
            url: encodeURI(myUrl),
            success: function(result){  
                Swal.fire({
                    type: 'success',
                    title: 'Data tersimpan',
                    text: name + ' disimpan',
                    footer: ''
                })
                
                $("#reset").click();
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