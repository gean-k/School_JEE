<%-- 
    Document   : liste
    Created on : 17 juil. 2023, 02:21:23
    Author     : Administrateur
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connexion.connexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/table.css">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
  <section>
  <!--for demo wrap-->
  

  
  <h1>Liste Preinscription</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Nom</th>
          <th>Prenom</th>
          <th>Date Naissance</th>
          <th>Lieu Naissance</th>
          <th>Email</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
        <tbody>
        <%  

Connection conn= connexion.getConnection();
 String sql="SELECT eleve.nomElv, eleve.matElv, eleve.prenomElv, eleve.dateNaissElv, eleve.lieuNaissElv, eleve.mailElv, eleve.idEleve, filiere.nomFiliere, niveau.libNiveau FROM eleve INNER JOIN inscrit AS i1 ON eleve.matElv = i1.matElv INNER JOIN filiere ON filiere.idFiliere = i1.idFiliere INNER JOIN niveau ON niveau.idNiveau = i1.idNiveau LIMIT 0, 25;";
    try{
     PreparedStatement ps=conn.prepareStatement(sql);
   ResultSet rs=ps.executeQuery();
        while(rs.next()){
           int id = rs.getInt(7);
        
        
      
      %>
<tr>
    <td><%=rs.getString(1)%> </td>
          <td><%= rs.getString(3)%> </td>
          <td><%=rs.getString(4)%> </td>
          <td><%=rs.getString(5)%> </td>
          <td><%=rs.getString(2) %> </td>
           <td><%=rs.getString(8)%> </td>
          <td><%=rs.getString(9) %> </td>
          
          <td><button>Modifier</button></td>
           <td>
        <form method="post" action="SupprimerEleveServlet">
            <input type="hidden" name="idEleve" value="<%= id %>">
            <button type="submit">Supprimer</button>
        </form>
    </td>
        </tr>
  
  <%
        }
    }catch(SQLException e){e.printStackTrace();}
    


%>  
  
      </tbody>
    </table>
  </div>
</section>


<!-- follow me template -->

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/table.js"></script>

</body>
</html>
