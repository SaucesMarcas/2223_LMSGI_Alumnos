/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package es.sauces.basedatos;

import static es.sauces.basedatos.BaseDatos.createEquipo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author daw1
 */
public class BaseDatos {

    public static void main(String[] args) {
        /*
        Statement stmt = null;
        String consulta = "select * from tablita";
        try {
            Connection conexion =DriverManager.getConnection("jdbc:mysql://192.168.2.111:3306/test","usu10","usu10");
            stmt = conexion.createStatement();
            ResultSet rs = stmt.executeQuery(consulta);
            
            while(rs.next()) {
                String nombre = rs.getString("campo1");
                System.out.println(nombre);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        */
       
        Statement stmt = null;
        
        try {
            Connection conexion =DriverManager.getConnection("jdbc:mysql://192.168.2.111:3306","usu10","usu10");
            stmt = conexion.createStatement();
            
            stmt = conexion.createStatement();
            stmt.executeUpdate("CREATE DATABASE IF NOT EXISTS BD10");
            createEquipo(conexion,"BD10");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        
        
    }
    
    public static void createEquipo(Connection con, String nombreBD) throws SQLException {
            Statement stmt = null;
            String consulta = "create table if not exists " + nombreBD + ".EQUIPOS " + "(IDEQUIPO integer NOT NULL," + "NOMBRE varchar(40) NOT NULL," + "ESTADIO varchar(40) NOT NULL," 
                + "POBLACION varchar(10) NOT NULL," + "PROVINCIA varchar(20) NOT NULL," + "CODPOSTAL char(5)," + "PRIMARY KEY (IDEQUIPO))";
            
            stmt = con.createStatement();
            stmt.executeUpdate(consulta);
        }
}
