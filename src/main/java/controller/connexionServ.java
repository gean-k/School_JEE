/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.metierConnexion;
import modele.modeleconnexion;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "connexionServ", urlPatterns = {"/connexionServ"})
public class connexionServ extends HttpServlet {

     private static final String VUE_FORMULAIRE = "/connexion.jsp";
//  private static final long serialVersionUID = 1L;
    public connexionServ(){
        super();
    }
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
