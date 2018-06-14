$(document).ready(function () {
    $('#submit').click(function (event) {

        var cedulaVar = $('#cedula').val();
        var nombreVar = $('#nombre').val();
        var apellidoVar = $('#apellido').val();
        var emailVar = $('#email').val();
        var llave_publicaPagoVar = $('#llave_publica_pago').val();
        var llave_publicaEnvioVar = "";//$('#llave_publica_envio').val();
        var cantidad_btcVar = $('#formulario_cantidad_btc').val();
        var cantidad_xghVar = $('#formuario_cantidad_xgh').val();
        var codigo_referente = $('#codigo_referente').val();
        var estado = true;

        //Expresión para validar un correo electrónico
        var expr = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
        // --- Condicionales anidados ----
        //Si cedula está vacío
        //Muestra el mensaje
        //Con false sale de los if's y espera a que sea pulsado de nuevo el botón de enviar
        if (cedulaVar == "") {
            $("#mensaje1").fadeIn("slow");
            estado = false;
        } else {
            $("#mensaje1").fadeOut();
        }

        //Validacion del campo nombre 
        if (nombreVar == "") {
            $("#mensaje2").fadeIn("slow");
            estado = false;
        } else {
            $("#mensaje2").fadeOut();
        }
        //Validacion del campo apellido
        if (apellidoVar == "") {
            $("#mensaje3").fadeIn("slow");
            estado = false;
        } else {
            $("#mensaje3").fadeOut("slow");
        }
        
        //Validacion del la llave publica de pago
        if (llave_publicaPagoVar == "") {
            $("#mensaje5").fadeIn("slow");
            estado = false;
        } else {
            $("#mensaje5").fadeOut("slow");
        }
        
        //Validacion del campo correo
        if (emailVar == "" || !expr.test(emailVar)) {
            $("#mensaje4").fadeIn("slow");
            estado = false;
        } else {
            $("#mensaje4").fadeOut();
        }
        
        
        /*if (llave_publicaEnvioVar == "") {
            $("#mesanje6").fadeIn("slow");
            estado = false;
        } else {
            $("#mesanje6").fadeOut("slow");
        }*/
        
        if (cantidad_btcVar == "") {
            $("#mesanje7").fadeIn("slow");
            estado = false;
        } else {
            $("#mesanje7").fadeOut("slow");
        }
        
        if (cantidad_xghVar == "") {
            $("#mesanje8").fadeIn("slow");
            estado = false;
        } else {
            $("#mesanje8").fadeOut("slow");
        }
        
        if (estado) {
            //una ves se compruebe los campos se procedera al registro de los datos
            //Funcion para el registro de los datos
            $.post('nuevo_usuario', {
                cedula: cedulaVar,
                nombre: nombreVar,
                apellido: apellidoVar,
                email: emailVar,
                llave_publica_pago: llave_publicaPagoVar,
                llave_publica_envio: llave_publicaEnvioVar,
                cantidad_btc: cantidad_btcVar,
                cantidad_xgh: cantidad_xghVar,
                codigo_referente: codigo_referente
            }, function (responseText) {
                if (responseText != "") {
                    $('#myModal').modal('hide');
                    $('#comprar').modal({backdrop: 'static', keyboard: false})
                    document.getElementById("url_codigo").innerHTML = "<a href='https://icogoldenhash.com/compra.jsp?codigo=" + responseText + "'>https://icogoldenhash.com/compra.jsp?codigo=" + responseText + "</a>";
                    $('input[name="cedula_usuario_reg"]').val(cedulaVar);
                    //$('#cedula_usuario_reg').val(cedulaVar);
                } else {
                    alert("Por favor verifique que toda la informacion este correcta");
                }
            });
        }
    });
});


//   $('#finalizar_registro').click(function (event){
//        var formData = new FormData(document.getElementById("file_transsaccion"));
//        formData.append("dato", formData);
//
//       $.post('nuevo_usuario', {
//            
//        }, function (responseText) {
//            if(responseText != ""){
//                $('#myModal').modal('hide');
//                $('#comprar').modal({backdrop: 'static', keyboard: false})
//                document.getElementById("url_codigo").innerHTML = "<a href='https://icogoldenhash.com/index_comprar.jsp?codigo="+responseText+"'>https://icogoldenhash.com/index_comprar.jsp?codigo="+responseText+"</a>";
//            }else{
//                alert("Error de registro");
//            }            
//        });      
//   });