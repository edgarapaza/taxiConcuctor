$(document).ready(function()
{

    $("#btnGuardar").click(function(e){
      e.preventDefault();


      //var dataString = 'name=' + name + '&password=' + password;
      var passwd1 = $("#passwd1").val();
      var passwd2 = $("#passwd2").val();
      
      if(passwd1 != passwd2){
        M.toast({html: '<p>Las contraseñas son diferentes</p>'})
        $('#message').html("<p>Las contraseñas son diferentes</p>");
      }else {
        
        var dataString = $('#create-account-form').serialize();

        $.ajax({
          url: 'Controller/wsRegistroCliente.php',
          type: 'POST',
          dataType: 'html',
          data: dataString,
          success: function(res){
            //$('#message').html(res);
            M.toast({html: '<h5>Tus datos han sido guardados correctamente!</h5>'})
            $("#create-account-form")[0].reset();
          },
          error: function(){
            M.toast({html: '<p>No se puede conectar al servidor</p>'})
            $('#message').html("<h2>No se puede conectar al servidor</h2>");
          }

        });
      }
    });

    $("#btnPedirMovilidad").click(function(e){
      e.preventDefault();
            
      var dataString2 = $('#PedirMovilidad-form').serialize();

        $.ajax({
          url: './Controller/wsPedirMovilidadRegistro.php',
          type: 'POST',
          dataType: 'html',
          data: dataString2,
          success: function(res){
            $("#mensaje").html(res);
            M.toast({html: '<p>Su pedido ha sido enviado. En breve lo atenderemos</p>'})
            $("#PedirMovilidad-form")[0].reset();
          },
          error: function(er){
            $("#mensaje").html("Error " + er);
          }
        });
      
        return false;
    });

    $("#btnDelivery").click(function(e){
      e.preventDefault();

      var dataString3 = $('#delivery-form').serialize();

        $.ajax({
          url: './Controller/wsDeliveryRegistro.php',
          type: 'POST',
          dataType: 'html',
          data: dataString3,
          success: function(res){
            //$("#mensaje").html(res);
            M.toast({html: '<p>Su pedido ha sido enviado. En breve lo atenderemos</p>'})
            $("#delivery-form")[0].reset();
          },
          error: function(er){
            $("#mensaje").html("Error " + er);
          }
        });
      
        return false;
    });

    $("#btnReservaMovilidad").click(function(e){
      e.preventDefault();

      var dataString4 = $('#reserva-form').serialize();

        $.ajax({
          url: './Controller/wsReservaRegistro.php',
          type: 'post',
          dataType: 'html',
          data: dataString4,
          success: function(res){
            $("#mensaje").html(res);
            M.toast({html: '<p>Su pedido ha sido enviado. En breve lo atenderemos</p>'})
            $("#reserva-form")[0].reset();
          },
          error: function(er){
            $("#mensaje").html("Error " + er);
          }
        });
      
        return false;
    });

});
