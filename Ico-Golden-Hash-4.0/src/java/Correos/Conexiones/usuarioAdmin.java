/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexiones;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @authors
 * David Casadiegos - david.2818@outlook.com / Backend
 * Luis Gelvis - luisgelvis123@gmail.com / Frontend
 */

public class usuarioAdmin extends conexionSQL {

    private String nombre;
    private String usuario;
    private String contrasena;

    public usuarioAdmin() {

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public usuarioAdmin(String nombre, String usuario, String contrasena) {
        this.nombre = nombre;
        this.usuario = usuario;
        this.contrasena = contrasena;
    }

    public boolean RegistrarUsuario(String nombre, String usuario, String contrasena) {
        PreparedStatement pst = null;
        try {
            String consultasSQL = "insert into usuarioadmi(nombre,usuario,contrasena) values (?,?,?)";
            pst = getConnection().prepareStatement(consultasSQL);
            pst.setString(1, nombre);
            pst.setString(2, usuario);
            pst.setString(3, contrasena);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
            e.getMessage();
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException e) {
                System.out.println("Error: " + e.getMessage());
                e.getMessage();
            }
        }
        return false;
    }

    public boolean iniciosesion(String usuario, String contrasena) {
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            if(usuario == "criptotecnologia" && contrasena == "CR1PT0"){
                return true;
            }
            //String consulta = "SELECT nombre_usuario_admin, CAST(AES_DECRYPT(contrasena_usuario_admin, 'CR1PT0') AS CHAR(50)) contrasena_usuario_admin  FROM usuarios_admin WHERE nombre_usuario_admin = ? AND contrasena_usuario_admin = AES_ENCRYPT('CR1PT0',?)";
            /*String consulta = "SELECT nombre_usuario_admin, contrasena_usuario_admin FROM usuarios_admin WHERE nombre_usuario_admin = ? AND contrasena_usuario_admin = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contrasena);
            rs = pst.executeQuery();*/
            //if (rs.next()) {
           //     return true;
            //}
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pst != null) pst.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
                System.err.println("Error 2: " + e.getMessage());
            }
        }

        return false;
    }
}
