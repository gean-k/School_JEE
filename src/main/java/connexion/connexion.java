/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connexion;

import jakarta.servlet.jsp.tagext.TryCatchFinally;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Administrateur
 */
public class connexion {
private static Connection connection;    

static{ try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/etudiants_jee","root","");
    System.out.println("connexion avec succes");
}catch(ClassNotFoundException | SQLException e){
    e.printStackTrace();
    System.out.println("connexion insucces");
}
}

public static Connection getConnection(){
    return connection;
    
}
public static void main (String[] args){
Connection c= connexion.getConnection();
}
}
