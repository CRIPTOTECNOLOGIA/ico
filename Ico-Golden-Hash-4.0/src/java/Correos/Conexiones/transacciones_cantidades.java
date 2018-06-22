/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexiones;

import java.sql.PreparedStatement;

/**
 * @authors
 * David Casadiegos - david.2818@outlook.com / Backend
 * Luis Gelvis - luisgelvis123@gmail.com / Frontend
 */

public class transacciones_cantidades extends conexionSQL{
    private String id_transaccion;
    private String cantidad_btc;
    private String cantidad_xgh;
    private String id_usurio_transaccion;
    private String fecha_hora_transaccion;
    
    public transacciones_cantidades(){
        
    }

    public String getId_transaccion() {
        return id_transaccion;
    }

    public void setId_transaccion(String id_transaccion) {
        this.id_transaccion = id_transaccion;
    }

    public String getCantidad_btc() {
        return cantidad_btc;
    }

    public void setCantidad_btc(String cantidad_btc) {
        this.cantidad_btc = cantidad_btc;
    }

    public String getCantidad_xgh() {
        return cantidad_xgh;
    }

    public void setCantidad_xgh(String cantidad_xgh) {
        this.cantidad_xgh = cantidad_xgh;
    }

    public String getFecha_hora_transaccion() {
        return fecha_hora_transaccion;
    }

    public void setFecha_hora_transaccion(String fecha_hora_transaccion) {
        this.fecha_hora_transaccion = fecha_hora_transaccion;
    }

    public String getId_usurio_transaccion() {
        return id_usurio_transaccion;
    }

    public void setId_usurio_transaccion(String id_usurio_transaccion) {
        this.id_usurio_transaccion = id_usurio_transaccion;
    }
    
    public transacciones_cantidades(String id_transaccion, String cantidad_btc, String cantidad_xgh, String id_ususario_transaccion, String fecha_hora_transaccion) {
        this.id_transaccion = id_transaccion;
        this.cantidad_btc = cantidad_btc;
        this.cantidad_xgh = cantidad_xgh;
        this.id_usurio_transaccion = id_ususario_transaccion;
        this.fecha_hora_transaccion = fecha_hora_transaccion;
    }
    
    public boolean registrar_transaccion_cantidad(String cantidad_btc, String cantidad_xgh, String id_usuario_transaccion){
        PreparedStatement pst = null;
        try {
            String consultaSQL = "insert into transacciones_cantidades(cantidad_btc_transaccion_cantidad, cantidad_xgh_transaccion_cantidad, fecha_hora_transaccion_cantidad, id_usuario) values (?,?, Now(),?)";
            pst =  getConnection().prepareStatement(consultaSQL);
            pst.setString(1, cantidad_btc);
            pst.setString(2, cantidad_xgh);
            pst.setString(3, id_usuario_transaccion);
            
            if(pst.executeUpdate() == 1){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error 1: "+ e.getMessage());
            e.getMessage();
        }finally{
            try {
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println("Error 2"+ e.getMessage());
                e.getMessage();
            }
        }
        
        return false;
    }
    
    public boolean registrar_baucher_usuario(String cedula_usuario, String nombre_imagen){
        System.out.println("CEDULA REGISTRAR BAUCHER USUARIO:: "+cedula_usuario);
        PreparedStatement pst = null;
        try {
            String consultaSQL = "insert into imagenes_transferencias "
                    + "(id_usuario_usuarios, nombre_imagen_transferencia, fecha_hora_imagen_transferencia) "
                    + "values (?,?, now())";
            pst =  getConnection().prepareStatement(consultaSQL);
            pst.setString(1, cedula_usuario);
            pst.setString(2, nombre_imagen);
            
            if(pst.executeUpdate() == 1){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error 1: "+ e.getMessage());
            e.getMessage();
        }finally{
            try {
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println("Error 2"+ e.getMessage());
                e.getMessage();
            }
        }
        
        return false;
    }
    
}
