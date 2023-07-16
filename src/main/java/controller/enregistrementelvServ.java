/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.metierEnreg;
import modele.enregistrementEleve;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "enregistrementelvServ", urlPatterns = {"/enregistrementelvServ"})
public class enregistrementelvServ extends HttpServlet {

      private static final String VUE_INDEX = "/connexion.jsp";


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        //Prendre les infos des champs
   String nomelv=request.getParameter("nom");
   String prenomelv=request.getParameter("prenom");
String email=request.getParameter("email");
String mdp=request.getParameter("password");
String datenaiss=request.getParameter("date_naissance");
String lieunaiss=request.getParameter("lieu_naissance");
String photo=request.getParameter("photo");
int idsexe= Integer.parseInt(request.getParameter("sexe"));

enregistrementEleve enrel= new enregistrementEleve();

enrel.setNomeleve(nomelv);
enrel.setPrenomeleve(prenomelv);
enrel.setMaileleve(email);
enrel.setMdpeleve(mdp);
enrel.setDatenaisseleve(datenaiss);
enrel.setLieunaiss(lieunaiss);
enrel.setPhoto(photo);
enrel.setIdSexe(idsexe);
   
metierEnreg merg= new metierEnreg();
        try {
            merg.Enregelv(enrel);
        } catch (SQLException ex) {
            Logger.getLogger(enregistrementelvServ.class.getName()).log(Level.SEVERE, null, ex);
        }
    //envoyer des attributs
  //  ServletContext context= request.getServletContext();
    //    context.setAttribute("enrel",enrel);
    //Appeler la vue
    this.getServletContext().getRequestDispatcher(VUE_INDEX).forward(request, response);
    
    
    }

    
    
}
