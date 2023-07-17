/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.metierInsci;
import modele.Inscription;
import modele.modeleconnexion;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "inscriptionServ", urlPatterns = {"/inscriptionServ"})
public class inscriptionServ extends HttpServlet {
    
    private static final String VUE_INDEX = "/index.jsp";
    
 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
     String matricule=request.getParameter("matricule");
     int idniveau=Integer.parseInt(request.getParameter("niveau"));
     int filiere=Integer.parseInt(request.getParameter("filiere"));
     String date=request.getParameter("dateinsc");
        String email=request.getParameter("email");
        
        Inscription inscription = new Inscription();
    inscription.setMatricule(matricule);
    inscription.setIdniveau(idniveau);
    inscription.setIdfiliere(filiere);
    inscription.setDate(date);
    
    //Selectionner l'email de la personne connectee
   // ServletContext context= request.getServletContext();
     //   modeleconnexion mdco=(modeleconnexion) context.getAttribute("mdco");
   
        //PrintWriter out= response.getWriter();
    //out.println("<html><body><h1>"+mdco.getMail()+"</h1></body></html>");
     
     metierInsci misc= new metierInsci();
     //faire inscription
     misc.faireInsc(inscription);
     //modifier matricule
     misc.modifMat(matricule, email);
    this.getServletContext().getRequestDispatcher(VUE_INDEX).forward(request, response);

    }
    
}
