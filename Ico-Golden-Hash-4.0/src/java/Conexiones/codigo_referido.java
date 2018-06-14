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
public class codigo_referido extends conexionSQL{
    private String id_usuario;
    
    public codigo_referido(){
        
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public codigo_referido(String id_usuario) {
        this.id_usuario = id_usuario;
    }
    
    public boolean registrar_codigo_referido(String id_usuario){
        
        PreparedStatement pst = null;
        try {
            String consultaSQL = "insert into codigo_referidos (id_usuario) values (?)";
            pst = getConnection().prepareStatement(consultaSQL);
            pst.setString(1, id_usuario);
            
            if(pst.executeUpdate() == 1){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error 1: "+ e.getMessage());
        }finally{
            try {
                if(pst != null) pst.close();
            } catch (Exception e) {
            }
        }
        
        return false;
    }
    
     public String consulta_codigo_referido_usuario(String id_usuario){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consultaSQL = "select id_codigo_referido from codigo_referidos where id_usuario = ?";
            pst = getConnection().prepareStatement(consultaSQL);
            pst.setString(1, id_usuario);
            rs = pst.executeQuery();
            
            if(rs.next()){
                return rs.getString("id_codigo_referido");
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
    
    public static void main(String[] args) {
        codigo_referido cod = new codigo_referido();
        System.out.println(cod.registrar_codigo_referido("4"));   
    }
    
}
