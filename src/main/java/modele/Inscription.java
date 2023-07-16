/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modele;

/**
 *
 * @author Administrateur
 */
public class Inscription {
String matricule;
int idniveau;
int idfiliere;
String date;

    public Inscription() {
    }

    public Inscription(String matricule, int idniveau, int idfiliere, String date) {
        this.matricule = matricule;
        this.idniveau = idniveau;
        this.idfiliere = idfiliere;
        this.date = date;
    }

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public int getIdniveau() {
        return idniveau;
    }

    public void setIdniveau(int idniveau) {
        this.idniveau = idniveau;
    }

    public int getIdfiliere() {
        return idfiliere;
    }

    public void setIdfiliere(int idfiliere) {
        this.idfiliere = idfiliere;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

  
    



    
}
