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

if(mdp.length()==4){
    Connection conn= connexion.getConnection();
    String sql="SELECT * FROM `gestionnaire` WHERE `mailGest`=? AND `mdpGest`=?";
    try{
     PreparedStatement ps=conn.prepareStatement(sql);
     ps.setString(1, mail);
     ps.setString(2, mdp);
            ResultSet rs=ps.executeQuery();
        while(rs.next()){
            mc.setMail(rs.getString(2));
            mc.setMdp(rs.getString(3));
            
        
        }
    }catch(SQLException e){e.printStackTrace();}
    
}else{
         
    Connection conn= connexion.getConnection();
    String sql="SELECT * FROM eleve WHERE `mailElv`=? AND `mdpElv`=?";
    try{
     PreparedStatement ps=conn.prepareStatement(sql);
     ps.setString(1, mail);
     ps.setString(2, mdp);
            ResultSet rs=ps.executeQuery();
        while(rs.next()){
            mc.setNom(rs.getString(3));
            mc.setPrenom(rs.getString(4));
            mc.setDatenaiss(rs.getString(5));
            mc.setLieunaiss(rs.getString(6));
            mc.setIdSexe(rs.getInt(10));
            mc.setPhoto(rs.getString(7));
            mc.setMail(rs.getString(8));
            mc.setMdp(rs.getString(9));
        
        }
         ps.close();
    conn.close();
    }catch(SQLException e){e.printStackTrace();}
    
}
   return mc;
        
       
         
   
    }

public static void main (String[] args){
metierConnexion mco= new metierConnexion();
modeleconnexion mdc=mco.seco("root@root.root", "root");
System.out.println(mdc.getMail());
}
}
