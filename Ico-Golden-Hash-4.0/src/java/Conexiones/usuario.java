/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexiones;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author CRIPTOTECNOLOGIA
 */
public class usuario extends conexionSQL{
    private String id_usuario;
    private String cedula;
    private String nombre;
    private String apellido;
    private String email;
    private String llave_publica_envio;
    private String llave_publica_pago;
    private String fecha_hora;
    
    public usuario(){
        
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }
    
    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getllave_publica_envio() {
        return llave_publica_envio;
    }

    public void setllave_publica_envio(String llave_publica_envio) {
        this.llave_publica_envio = llave_publica_envio;
    }

    public String getLlave_publica_pago() {
        return llave_publica_pago;
    }

    public void setLlave_publica_pago(String llave_publica_pago) {
        this.llave_publica_pago = llave_publica_pago;
    }

    public String getFecha_hora() {
        return fecha_hora;
    }

    public void setFecha_hora(String fecha_hora) {
        this.fecha_hora = fecha_hora;
    }    
       
    public usuario(String id_usuario, String cedula, String nombre, String apellido, String email, String llave_publica_pago, String llave_publica_envio, String fecha_hora){
        this.id_usuario = id_usuario;
        this.cedula = cedula;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.llave_publica_pago = llave_publica_pago;
        this.llave_publica_envio = llave_publica_envio;
        this.fecha_hora = fecha_hora;
    }
    
    public boolean registrar_usuario(String cedula, String nombre, String apellido, String email, String llave_publica_pago, String llave_publica_envio){
        PreparedStatement pst = null;
        try {
            String consultaSQL = "insert into usuarios (cedula_usuario,nombre_usuario,apellido_usuario,email_usuario, llave_publica_pago, llave_publica_envio, fecha_hora_usuario ) values (?,upper(?),upper(?),upper(?),?,?, Now())";
            pst = getConnection().prepareStatement(consultaSQL);
            pst.setString(1, cedula);
            pst.setString(2, nombre);
            pst.setString(3, apellido);
            pst.setString(4, email);
            pst.setString(5, llave_publica_pago);
            pst.setString(6, llave_publica_envio);
            
            if(pst.executeUpdate() == 1){
                return true;
            }
        } catch (Exception e) {
            System.out.println("Error 1: "+ e.getMessage());
            e.getMessage();
        }finally{
            try {
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println("Error 2: "+ e.getMessage());
                e.getMessage();
            }
        }
        return false;
    }   
    
    public usuario consulta_id(String cedula_usuario){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String consultaSQL = "select id_usuario from usuarios where cedula_usuario = ? ORDER by fecha_hora_usuario DESC ";
            pst = getConnection().prepareStatement(consultaSQL);
            pst.setString(1, cedula_usuario);
            rs = pst.executeQuery();
            if(rs.next()){
                usuario usu = new usuario();
                usu.setId_usuario(rs.getString(1));
                return usu;
            }
        } catch (Exception e) {
            System.err.println("Error 1: "+ e.getMessage());
        }finally{
            try {
                if(pst != null ) pst.close();
                if(rs != null) rs.close();
            } catch (Exception e) {
                System.err.println("Error 2: "+ e.getMessage());
            }
        }
        return null;
    }
    
//    public static void main(String[] args) {
//        usuario usu = new usuario();
//        System.out.println(usu.consulta_id());   
//    }
}
