/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexiones;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author CRIPTOTECNOLOGIA
 */
public class conexionSQL {
    private String USERNAME = "root";
    private String PASSWORD = "";
    //private String PASSWORD = "F56gfd7)80+ez5&&7";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "goldenhash";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private java.sql.Connection con;
    protected java.sql.Statement stmt;
    
    public conexionSQL(){
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
            stmt=con.createStatement();
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR"+e);
        }catch (SQLException e){
            System.err.println("Error"+e);
        }
    }
    
    public java.sql.Connection getConnection(){
        return con;
    }
    
    
//    public static void main(String[] args) {
//        conexionSQL con = new conexionSQL();
//        System.out.println(con.getConnection());
//    }
}
