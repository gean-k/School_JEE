/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package metier;

import com.mysql.cj.protocol.Resultset;
import connexion.connexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modele.enregistrementEleve;

/**
 *
 * @author Administrateur
 */
public class metierEnreg {
    private String nom;
    private String prenom;
    private String email;
    private String mdp;
    private String datenaiss;
    private String lieunaiss;
    private String photo;
    private int sexe;
    
public void Enregelv(enregistrementEleve enr) throws SQLException{
//prendre nom, prenom, date, lieu, email,mdp,sexe et inserer dans la bd
nom=enr.getNomeleve();
prenom=enr.getPrenomeleve();
email=enr.getMaileleve();
mdp=enr.getMdpeleve();
datenaiss=enr.getDatenaisseleve();
lieunaiss=enr.getLieunaiss();
photo=enr.getPhoto();
sexe=enr.getIdSexe();

//effectuer la requete pour enregistrer
String sql = "INSERT INTO `eleve` (`nomElv`, `prenomElv`, `dateNaissElv`, `lieuNaissElv`, `photoElv`, `mailElv`, `mdpElv`, `idSexe`) VALUES (?,?,?,?,?,?,?,?)";
try {
    Connection conn = connexion.getConnection();
    PreparedStatement pst = conn.prepareStatement(sql);
    pst.setString(1,nom);
    pst.setString(2,prenom);
    pst.setString(3,datenaiss);  // Utilisez un format de date valide pour MySQL (AAAA-MM-JJ)
    pst.setString(4,lieunaiss);
    pst.setString(5,photo);
    pst.setString(6,email);
    pst.setString(7,mdp);
    pst.setInt(8,sexe);
    
    int rowsAffected = pst.executeUpdate();
    // Vérifiez la valeur de rowsAffected pour connaître le nombre de lignes affectées par l'insertion
    System.out.println("********************"+rowsAffected);
    pst.close();
    conn.close();
} catch (SQLException e) {
    e.printStackTrace();
}


}

public static void main(String[] args) throws SQLException{
enregistrementEleve enr=new enregistrementEleve();
metierEnreg mrg= new metierEnreg();


mrg.Enregelv(enr);

}
 
}
