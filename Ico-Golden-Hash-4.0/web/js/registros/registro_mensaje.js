$(document).ready(function () {
    $('#enviar_mensaje').click(function (event) {

        var nombreVar = $('#contactName').val();
        var emailVar = $('#contactEmail').val();
        var temaVar = $('#contactSubject').val();
        var mensajeVar = $('#contactMessage').val();
        var estado = true;

        //Validacion de campo nombre
        if (nombreVar == "") {
            alert('Por favor digite tu nombre');
            estado = false;
        } 
        //Validacion del campo memail 
        if (emailVar == "") {
            alert('Por favor digite un email válido');
            estado = false;
        } 
        //Validacion del campo tema
        if (temaVar == "") {
            alert('Por favor digite un tema');
            estado = false;
        }
        //Validacion del campo mensaje
        if (mensajeVar == "") {
            alert('Por favor digite el mensaje a enviar');
            estado = false;
        }  
        
        if (estado) {
            //una vez se compruebe los campos se procedera al registro de los datos
            //Funcion para el registro de los datos
            $.post('nuevo_mensaje', {
                nombre: nombreVar,
                email: emailVar,
                tema: temaVar,
                mensaje: mensajeVar
            }, function (responseText) {
                if (responseText != "" ) {
                    alert('Se ha realizado el envío correctamente, en unos momentos uno de nuestros asesores se estará comunicando contigo vía correo electrónico');
                    location.href='index.jsp';
                } else {
                    alert("Por favor verifique que toda la informacion este correcta");
                }
            });
        }
    });
});
