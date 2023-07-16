/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package metier;

import connexion.connexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modele.Inscription;

/**
 *
 * @author Administrateur
 */
public class metierInsci {

   
    public void modifMat(String matricule,String mail){
    //Modifier le matricule
String sqli = "UPDATE `eleve` SET `matElv` =?  WHERE `eleve`.`mailElv` =?";
try {
    Connection connn = connexion.getConnection();
    PreparedStatement pst = connn.prepareStatement(sqli);
    pst.setString(1,matricule);
    pst.setString(2, mail);
   int rowsAffected = pst.executeUpdate();
    // Vérifiez la valeur de rowsAffected pour connaître le nombre de lignes affectées par l'insertion
    System.out.println("********************"+rowsAffected);
 
} catch (SQLException e) {
    e.printStackTrace();
}

    }
    
    
    public void faireInsc(Inscription insc) {
String matricule=insc.getMatricule();
int idniveau=insc.getIdniveau();
int idfiliere=insc.getIdfiliere();
String date=insc.getDate();

//remplir table inscription

String sql = "INSERT INTO `inscrit` (`matElv`, `idNiveau`, `idFiliere`, `DateInscription`, `status_Inscription`) VALUES (?,?,?,?,'0')";

try {
    Connection conn = connexion.getConnection();
    PreparedStatement pst = conn.prepareStatement(sql);
    pst.setString(1,matricule);
    pst.setInt(2,idniveau);
    pst.setInt(3,idfiliere);  // Utilisez un format de date valide pour MySQL (AAAA-MM-JJ)
    pst.setString(4,date);
 
    int rowsAffected = pst.executeUpdate();
    // Vérifiez la valeur de rowsAffected pour connaître le nombre de lignes affectées par l'insertion
    System.out.println("********************"+rowsAffected);
  
} catch (SQLException e) {
    e.printStackTrace();
}

        
    }

    public static void main(String[] args) {
 Inscription inscription = new Inscription();
    inscription.setMatricule("4444");
    inscription.setIdniveau(4);
    inscription.setIdfiliere(74);
    inscription.setDate("44-44-444");
     
     
     metierInsci misc= new metierInsci();
     //faire inscription
     misc.faireInsc(inscription);
     //modifier matricule
     misc.modifMat("AZERTY", "z@z.c");
    }
}
