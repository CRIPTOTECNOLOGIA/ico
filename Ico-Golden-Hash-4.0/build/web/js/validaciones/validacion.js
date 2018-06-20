/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//funcion para que solo acepte valores numericos
function soloNumeros(e) {
    var key = window.Event ? e.which : e.keyCode
    return ((key >= 48 && key <= 57) || (key == 8))
}

// funcion para conertir todo en mayusculas
function mayus(e) {
    e.value = e.value.toUpperCase();
}
//Validacion del checkbox
function check(checkbox1, checkbox2) {
    if ($(checkbox1).prop('checked')) {
         $(checkbox2).prop('checked', false);
         if(checkbox1 === "#btc") placeholderPago1();
         if(checkbox1 === "#eth") placeholderPago2();
    }
}

function checkDiv(checkbox1, checkbox2) {
    $(checkbox1).prop('checked', true);
    $(checkbox2).prop('checked', false);
    if(checkbox1 === "#btc") placeholderPago1();
    if(checkbox1 === "#eth") placeholderPago2();
}

function placeholderPago1() {
    var texto = "Contribución mínima de 0.01 BTC";
    texto = decodeURIComponent(escape(texto));
    $("#cantidad_btc").attr("placeholder", "BTC");
    document.getElementById("h2_contribucion").innerHTML = texto;
    document.getElementById("cantidad_btc").value = "0.01";
    verificar_seleccionado(0.01);
    document.getElementById("img-qr-pago").src = "img/qr-bitcoin.png";
    document.getElementById("hash-billetera").value = "1L338vcUVqCEnAP2okFkcBHTpm2YmJMYAd";
    var contribuciones = decodeURIComponent(escape("Envíe sus contribuciones BTC a la siguiente dirección o código QR."+
                    "NO envíe BTC de un intercambio, debe ser enviado desde "+
                    "su billetera."));
    document.getElementById("textobtc").innerHTML = contribuciones;
}

function placeholderPago2() {
    var texto = "Contribución mínima de 0.125 ETH";
    texto = decodeURIComponent(escape(texto));
    verificar_seleccionado(0.125);
    $("#cantidad_btc").attr("placeholder", "ETH");
    document.getElementById("h2_contribucion").innerHTML = texto;
    document.getElementById("cantidad_btc").value = "0.125";
    document.getElementById("img-qr-pago").src = "img/qr-ethereum.png";
    document.getElementById("hash-billetera").value = "0xe98Bc967D9a9d9DE25b653fda81Bc2Ce90808Ea2";
    var contribuciones = decodeURIComponent(escape("Envíe sus contribuciones ETH a la siguiente dirección o código QR."+
                    "NO envíe ETH de un intercambio, debe ser enviado desde "+
                    "su billetera."));
    document.getElementById("textobtc").innerHTML = contribuciones;
    
}

//function copyCilpboard() {
//  var copyText = document.getElementById("hash-billetera");
//  copyText.select();
//  document.execCommand("copy");
//  alert("Hash copiado: " + copyText.value);
//}