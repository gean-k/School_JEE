/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modele;

import java.sql.Date;

/**
 *
 * @author Administrateur
 */
public class eleve {
private String mateleve;
private String nomeleve;
private String prenomeleve;
private Date  datenaisseleve;
private String lieunaiss;
private String photo;
private String maileleve;
private String mdpeleve;
private int idSexe;

    public eleve() {
    }

    public eleve(String mateleve, String nomeleve, String prenomeleve, Date datenaisseleve, String lieunaiss, String photo, String maileleve, String mdpeleve, int idSexe) {
        this.mateleve = mateleve;
        this.nomeleve = nomeleve;
        this.prenomeleve = prenomeleve;
        this.datenaisseleve = datenaisseleve;
        this.lieunaiss = lieunaiss;
        this.photo = photo;
        this.maileleve = maileleve;
        this.mdpeleve = mdpeleve;
        this.idSexe = idSexe;
    }

    public String getMateleve() {
        return mateleve;
    }

    public void setMateleve(String mateleve) {
        this.mateleve = mateleve;
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

    public Date getDatenaisseleve() {
        return datenaisseleve;
    }

    public void setDatenaisseleve(Date datenaisseleve) {
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
