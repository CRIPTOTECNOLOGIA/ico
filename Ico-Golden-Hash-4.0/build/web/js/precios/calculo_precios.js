
/* 
 * Valor mínimo de compra del btc : 0.01
 * Valor mínimo de compra del eth: 0.125
 */

/**
 * funcion que calcula la cantidad de XGH si paga con btc
 */

$(document).ready(function () {
   document.getElementById("cantidad_btc").value = "0.01"; 
   verificar_seleccionado(0.01);
});

function valor_mayor_btc(valor){
    if(valor >= 0.01){
        return true;
    }
    return false;
}

function valor_mayor_eth(valor){
    if(valor >= 0.125){
        return true;
    }
    return false;
}

function verificar_seleccionado(cantidad) {
    if ($("#btc").prop('checked')) {
        
        if(cantidad >= 0.01){
            btc_xgh(cantidad);
            $('#mensaje_alerta').removeClass("show");
            $('#btn_comprar').removeAttr("disabled");
            return true;
        }else{
            $('#mensaje_alerta').addClass("show");
            $('#btn_comprar').attr("disabled","disabled");
        }  
    } else if ($("#eth").prop('checked')) {
        
        if(cantidad >= 0.125){
            eth_xgh(cantidad);
            $('#mensaje_alerta').removeClass("show");
            $('#btn_comprar').removeAttr("disabled");
            return true;
        }else{
            $('#mensaje_alerta').addClass("show");
            $('#btn_comprar').attr("disabled","disabled");
        }            
    }
}

function btc_xgh(cantidad) {
    var btc_actual = document.getElementById("valor_btc_bd").value;//7378.49;
    var btc_total = cantidad * btc_actual;
    var cantidad_XGH_btc_desc = btc_total / 0.25;
    //alert(cantidad_XGH_btc_desc);
    $("#cantidad_xgh").val(cantidad_XGH_btc_desc);
}
/**
 * funcion que calcula la cantidad de XGH si paga con eth
 */
function eth_xgh(cantidad) {
    var eth_actual = document.getElementById("valor_eth_bd").value;
    var eth_total = cantidad * eth_actual;
    var cantidad_XGH_eth_desc = eth_total / 0.25;
    //alert(cantidad_XGH_eth_desc);
    $("#cantidad_xgh").val(cantidad_XGH_eth_desc);
//   format("cantidad_btc");
//    format("cantidad_xgh");
}

function format(id) {
    var num = document.getElementById(id).value.replace(/\./g, '');
    if (!isNaN(num)) {
        num = num.toString().split('').reverse().join('').replace(/(?=\d*?\.?)(\d{3})/g, '$1.');
        num = num.split('').reverse().join('').replace(/^[\.]/, '');
        document.getElementById(id).value = num;
    }
}

//$("#cantidad_btc").on({
//    "focus": function (event) {
//        $(event.target).select();
//    },
//    "keyup": function (event) {
//        $(event.target).val(function (index, value ) {
//            return value.replace(/\D/g, "")
//                        .replace(/([0-9])([0-9]{2})$/, '$1.$2')
//                        .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
//        });
//    }
//});
//
//$("#cantidad_xgh").on({
//    "focus": function (event) {
//        $(event.target).select();
//    },
//    "keyup": function (event) {
//        $(event.target).val(function (index, value ) {
//            return value.replace(/\D/g, "")
//                        .replace(/([0-9])([0-9]{2})$/, '$1.$2')
//                        .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
//        });
//    }
//});