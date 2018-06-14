/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexiones;

import java.sql.PreparedStatement;

/**
 *
 * @author CRIPTOTECNOLOGIA
 */
public class mensaje extends conexionSQL{
    private String nombre;
    private String email;
    private String tema;
    private String menasje;

    public mensaje() {
    }

    public mensaje(String nombre, String email, String tema, String menasje) {
        this.nombre = nombre;
        this.email = email;
        this.tema = tema;
        this.menasje = menasje;
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

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public String getMenasje() {
        return menasje;
    }

    public void setMenasje(String menasje) {
        this.menasje = menasje;
    }
    
    public boolean registrar_mensaje(String nombre, String email, String tema, String mensaje){
        PreparedStatement pst = null;
        try {
            String consultaSQL = "insert into mensajes_contactanos "
                    + "(nombre_usuario_mensaje_contacto,email_mensaje_contacto,tema_mensaje_contacto,mensaje_mensaje_contacto, fecha_hora_mensaje_contacto) values (?,?,?,?, Now())";
            pst = getConnection().prepareStatement(consultaSQL);
            pst.setString(1, nombre);
            pst.setString(2, email);
            pst.setString(3, tema);
            pst.setString(4, mensaje);
            
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
}
