/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modele;

/**
 *
 * @author Administrateur
 */
public class modeleconnexion {
   private String nom;
private String prenom;
private String  datenaiss;
private String lieunaiss;
private String photo;
private String mail;
private String mdp;
private int idSexe;

    public modeleconnexion() {
    }

    public modeleconnexion(String nom, String prenom, String datenaiss, String lieunaiss, String photo, String mail, String mdp, int idSexe) {
        this.nom = nom;
        this.prenom = prenom;
        this.datenaiss = datenaiss;
        this.lieunaiss = lieunaiss;
        this.photo = photo;
        this.mail = mail;
        this.mdp = mdp;
        this.idSexe = idSexe;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getDatenaiss() {
        return datenaiss;
    }

    public void setDatenaiss(String datenaiss) {
        this.datenaiss = datenaiss;
    }

    public String getLieunaiss() {
        return lieunaiss;
    }

    public void setLieunaiss(String lieunaiss) {
        this.lieunaiss = lieunaiss;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public int getIdSexe() {
        return idSexe;
    }

    public void setIdSexe(int idSexe) {
        this.idSexe = idSexe;
    }

    
}
