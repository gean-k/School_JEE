/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modele;

/**
 *
 * @author Administrateur
 */
public class enregistrementEleve {
private String nomeleve;
private String prenomeleve;
private String  datenaisseleve;
private String lieunaiss;
private String photo;
private String maileleve;
private String mdpeleve;
private int idSexe;

    public enregistrementEleve() {
    }

    public enregistrementEleve(String nomeleve, String prenomeleve, String datenaisseleve, String lieunaiss, String photo, String maileleve, String mdpeleve, int idSexe) {
        this.nomeleve = nomeleve;
        this.prenomeleve = prenomeleve;
        this.datenaisseleve = datenaisseleve;
        this.lieunaiss = lieunaiss;
        this.photo = photo;
        this.maileleve = maileleve;
        this.mdpeleve = mdpeleve;
        this.idSexe = idSexe;
    }

    public String getNomeleve() {
        return nomeleve;
    }

    public void setNomeleve(String nomeleve) {
        this.nomeleve = nomeleve;
    }

    public String getPrenomeleve() {
        return prenomeleve;
    }

    public void setPrenomeleve(String prenomeleve) {
        this.prenomeleve = prenomeleve;
    }

    public String getDatenaisseleve() {
        return datenaisseleve;
    }

    public void setDatenaisseleve(String datenaisseleve) {
        this.datenaisseleve = datenaisseleve;
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

    public String getMaileleve() {
        return maileleve;
    }

    public void setMaileleve(String maileleve) {
        this.maileleve = maileleve;
    }

    public String getMdpeleve() {
        return mdpeleve;
    }

    public void setMdpeleve(String mdpeleve) {
        this.mdpeleve = mdpeleve;
    }

    public int getIdSexe() {
        return idSexe;
    }

    public void setIdSexe(int idSexe) {
        this.idSexe = idSexe;
    }
    
    
}
