package com.emergentes.utiles;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConexionDB {
    static String driver = "com.mysql.jdbc.Driver"; //cadena para conectarnos a la Base de Datos
    static    String url = "jdbc:mysql://localhost:3306/bd_eventos";//conectandonos a la base de datos
    static    String usuario = "root"; // el usuario
    static    String password = ""; //contraseña 
    Connection conn = null;
    public ConexionDB() {
        try {
            Class.forName(driver);
            
            conn = DriverManager.getConnection(url, usuario, password);
            
            if(conn != null){
                System.out.println("Conexión OK"+conn);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Connection conectar(){
        return conn;
    }
    public void desconectar(){
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
}
