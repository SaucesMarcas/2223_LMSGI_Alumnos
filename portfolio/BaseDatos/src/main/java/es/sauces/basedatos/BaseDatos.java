/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package es.sauces.basedatos;

import static es.sauces.basedatos.BaseDatos.createEquipo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

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
            //createEquipo(conexion,"BD10");
            //cargarEquipo(conexion,"BD10");
            //verEquipo(conexion,"BD10");
            //clientesPorRegion(conexion,"ebanca");
            clientesPorRegionYApellido(conexion,"ebanca");
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
    
    public static void cargarEquipo(Connection con, String nombreBD) throws SQLException {
            Statement stmt = null;
            try {
                stmt = con.createStatement();
            stmt.executeUpdate("insert into " + nombreBD + ".EQUIPOS VALUES (" + "1,'ESTEPONA','MONTERROSO','ESTEPONA','MALAGA','29680')");
            stmt.executeUpdate("insert into " + nombreBD + ".EQUIPOS VALUES (" + "2,'ALCORCON','SANTO DOMINGO','ALCORCON','MADRID','28924')");
            stmt.executeUpdate("insert into " + nombreBD + ".EQUIPOS VALUES (" + "3,'PORCUNA','SAN CRISTOBAL','PORCUNA','JAEN','23790')");
            } catch(SQLException e) {
                System.out.println(e.getMessage());
            }
    }
    
    public static void verEquipo(Connection con, String nombreBD) throws SQLException {
            Statement stmt = null;
            String consulta = "SELECT * FROM " + nombreBD + ".EQUIPOS";
            try {
                stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(consulta);
                while(rs.next()) {
                    int idEquipo = rs.getInt("IDEQUIPO");
                    String nombre = rs.getString("NOMBRE");
                    String estadio = rs.getString("ESTADIO");
                    String poblacion = rs.getString("POBLACION");
                    String provincia = rs.getString("PROVINCIA");
                    int codigoPostal = rs.getInt("CODPOSTAL");
                    System.out.println(idEquipo + " " + nombre + " " + estadio + " " + poblacion + " " + provincia + " " + codigoPostal);
                }
                
            } catch(SQLException e) {
                System.out.println(e.getMessage());
            }
    }
    
    public static void clientesPorRegion(Connection con, String nombreBD) throws SQLException{
        String consulta="select count(codigo_cliente) from "+ nombreBD + ".clientes "+
                "where region=?";
        try(PreparedStatement ps = con.prepareStatement(consulta)) {
            Scanner teclado = new Scanner(System.in);
            System.out.println("introduce la region: ");
            String region=teclado.nextLine();
            ps.setString(1,region);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                System.out.println(rs.getInt(1));
            }
        }
    }
    
    public static void clientesPorRegionYApellido(Connection con, String nombreBD) throws SQLException{
        String consulta="select count(codigo_cliente) from "+ nombreBD + ".clientes "+
                "where region=? and (LOWER (nombre) LIKE '?%')";
        try(PreparedStatement ps = con.prepareStatement(consulta)) {
            Scanner teclado = new Scanner(System.in);
            System.out.println("introduce la region: ");
            String region=teclado.nextLine();
            System.out.println("introduce la primera letra del apellido: ");
            String letra=teclado.nextLine();
            ps.setString(1,region);
            ps.setString(2, letra);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                System.out.println(rs.getInt(1));
            }
        }
    }
    
}
