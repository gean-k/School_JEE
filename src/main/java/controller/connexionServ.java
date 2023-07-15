/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import metier.metierConnexion;
import modele.modeleconnexion;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "connexionServ", urlPatterns = {"/connexionServ"})
public class connexionServ extends HttpServlet {

     private static final String VUE_FORMULAIRE = "/connexion.jsp";
//  private static final String VUE_RESULTAT = "/donneesPersonnelles.jsp";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String log = request.getParameter("email");
        String pwd = request.getParameter("password");
        metierConnexion mco= new metierConnexion();
modeleconnexion mdco=mco.seco(log, pwd);

  request.setAttribute("mdco", mdco);
    request.getRequestDispatcher(VUE_FORMULAIRE).forward(request, response);

    }

  
   
}
