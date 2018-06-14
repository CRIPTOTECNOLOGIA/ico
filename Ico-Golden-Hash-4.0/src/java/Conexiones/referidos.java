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
public class referidos extends conexionSQL{
    private String id_referido;
    private String id_usuario_referente;
    private String id_usuario_referido;
    
    public referidos(){
        
    }

    public String getId_referido() {
        return id_referido;
    }

    public void setId_referido(String id_referido) {
        this.id_referido = id_referido;
    }

    public String getId_usuario_referente() {
        return id_usuario_referente;
    }

    public void setId_usuario_referente(String id_usuario_referente) {
        this.id_usuario_referente = id_usuario_referente;
    }

    public String getId_usuario_referido() {
        return id_usuario_referido;
    }

    public void setId_usuario_referido(String id_usuario_referido) {
        this.id_usuario_referido = id_usuario_referido;
    }

    public referidos(String id_referido, String id_usuario_referente, String id_usuario_referido) {
        this.id_referido = id_referido;
        this.id_usuario_referente = id_usuario_referente;
        this.id_usuario_referido = id_usuario_referido;
    }
    
    public boolean registrar_referidos(String id_usuario_referente, String id_usuario_referido){
        
        PreparedStatement pst = null;
        
        try {
            String consultaSQL = "insert into referidos (id_usuario_referente, id_usuario_referido) values (?,?)";
            pst = getConnection().prepareStatement(consultaSQL);
            pst.setString(1, id_usuario_referente);
            pst.setString(2, id_usuario_referido);
            
            if(pst.executeUpdate() == 1){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error 1: "+ e.getMessage());
        }finally{
            try {
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println("Error 2:"+ e.getMessage());
            }
        }
        
        return false;
    }
    
    public referidos consulta_id_referente(String codigo){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consultaSQL = "select id_usuario from codigo_referidos where id_codigo_referido = ?";
            pst = getConnection().prepareStatement(consultaSQL);
            pst.setString(1, codigo);
            rs = pst.executeQuery();
            
            if(rs.next()){
                referidos ref = new referidos();
                ref.setId_usuario_referente(rs.getString(1));
                return ref;
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
}
