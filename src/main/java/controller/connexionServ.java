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
import metier.metierConnexion;
import modele.modeleconnexion;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "connexionServ", urlPatterns = {"/connexionServ"})
public class connexionServ extends HttpServlet {

     private static final String VUE_FORMULAIRE = "/connexion.jsp";
     private static final String VUE_INDEX = "/index.jsp";
    
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

if(mdco.getMail()==null){
    this.getServletContext().getRequestDispatcher(VUE_FORMULAIRE).forward(request, response);

}else{
ServletContext context = request.getServletContext();

    context.setAttribute("mdco", mdco);
    this.getServletContext().getRequestDispatcher(VUE_INDEX).forward(request, response);
}

  

    }

  
   
}
