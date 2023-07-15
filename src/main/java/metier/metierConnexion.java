/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package metier;

import com.mysql.cj.protocol.Resultset;
import connexion.connexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modele.modeleconnexion;



/**
 *
 * @author Administrateur
 */
public class metierConnexion  {


    public modeleconnexion seco(String mail,String mdp){
        modeleconnexion mc= new modeleconnexion();
    Connection conn= connexion.getConnection();
    String sql="SELECT * FROM eleve WHERE `mailElv`=? AND `mdpElv`=?";
    try{
     PreparedStatement ps=conn.prepareStatement(sql);
     ps.setString(1, mail);
     ps.setString(2, mdp);
            ResultSet rs=ps.executeQuery();
        while(rs.next()){

            mc.setMail(rs.getString("mailElv"));
            mc.setMdp("mdpElv");
        }
    }catch(SQLException e){e.printStackTrace();}
        
        return mc;
    }

public static void main (String[] args){
metierConnexion mco= new metierConnexion();
modeleconnexion mdc=mco.seco("test@gmail.com", "123456");
System.out.println(mdc.getMail());
}
}
