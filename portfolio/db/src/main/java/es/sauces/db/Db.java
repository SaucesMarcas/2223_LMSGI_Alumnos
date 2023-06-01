/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package es.sauces.db;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author daw1
 */
public class Db {

    public static void main(String[] args) {
        /* try {
            Connection conexion = DriverManager.getConnection("jdbc:mysql://192.168.2.111:3306/test","usu1","usu1");
            Statement stmt = conexion.createStatement();
            ResultSet rs = stmt.executeQuery("select * from tablita");
            while (rs.next()){
                int pk = rs.getInt("campo1");
                String campo2 = rs.getString("campo2");
                float campo3 = rs.getFloat("campo3");
                System.out.println(pk+", "+campo2+", "+campo3);
            }
        } catch (SQLException  ex) {
            System.out.print("ERROR SQL");
        }
        
        try {
            Connection conexion = DriverManager.getConnection("jdbc:mysql://192.168.2.111:3306/test","usu1","usu1");
            Statement stmt = conexion.createStatement();
            stmt.executeUpdate("create database basededatos01");
        }   catch (SQLException ex) {
            Logger.getLogger(Db.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        
        try {
            Connection conexion = DriverManager.getConnection("jdbc:mysql://192.168.2.111:3306/basededatos01","usu1","usu1");
            Statement stmt = conexion.createStatement();
            stmt.executeUpdate("create table table01 (campo1 integer primary key not null, campo2 varchar(10), campo3 float)");
        } catch (SQLException  ex) {
            System.out.print("ERROR SQL");
        }
    }
}
