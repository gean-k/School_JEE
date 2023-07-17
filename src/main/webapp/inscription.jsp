<%-- 
    Document   : inscription
    Created on : 16 juil. 2023, 00:53:32
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="utf-8">
        <title>Institute Emeraude: Inscription</title>
        <link rel="stylesheet" type="text/css" href="css/inscription.css">
    </head>
    <body>
        <c:out value="bonjour"  />   
        <div class="login-root">
            <div class="box-root flex-flex flex-direction--column" style="min-height: 100vh; flex-grow: 1;">
                <div class="loginbackground box-background--white padding-top--64">
                    <div class="loginbackground-gridContainer">
                        <div class="box-root flex-flex" style="grid-area: top / start / 8 / end;">
                            <div class="box-root" style="background-image: linear-gradient(white 0%, rgb(247, 250, 252) 33%); flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 4 / 2 / auto / 5;">
                            <div class="box-root box-divider--light-all-2 animationLeftRight tans3s" style="flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 6 / start / auto / 2;">
                            <div class="box-root box-background--blue800" style="flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 7 / start / auto / 4;">
                            <div class="box-root box-background--blue animationLeftRight" style="flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 8 / 4 / auto / 6;">
                            <div class="box-root box-background--gray100 animationLeftRight tans3s" style="flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 2 / 15 / auto / end;">
                            <div class="box-root box-background--cyan200 animationRightLeft tans4s" style="flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 3 / 14 / auto / end;">
                            <div class="box-root box-background--blue animationRightLeft" style="flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 4 / 17 / auto / 20;">
                            <div class="box-root box-background--gray100 animationRightLeft tans4s" style="flex-grow: 1;"></div>
                        </div>
                        <div class="box-root flex-flex" style="grid-area: 5 / 14 / auto / 17;">
                            <div class="box-root box-divider--light-all-2 animationRightLeft tans3s" style="flex-grow: 1;"></div>
                        </div>
                    </div>
                </div>
                <div class="box-root padding-top--24 flex-flex flex-direction--column" style="flex-grow: 1; z-index: 9;">
                    <div class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
                        <h1><a href="http://blog.stackfindover.com/" rel="dofollow">Faire Mon Inscription</a></h1>
                    </div>
                    <div class="formbg-outer">
                        <div class="formbg-inner padding-horizontal--48" style="display: flex; flex-direction: column; justify-content: center; align-items: center; height: auto;">              
                            <div class="formbg">
                                <div class="formbg-inner padding-horizontal--48">
                                    <div style="display: flex; align-items: center; margin-bottom: 24px;">
                                        <div id="imagePreview" style="width: 200px; height: 200px; margin-right: 24px; border: 2px solid #ccc; overflow: hidden; border-radius: 50%;">
                                            <img id="previewImg" src="images/photo_defaut.jpeg" alt="Image par défaut" style="width: 100%; height: 100%; object-fit: cover;">
                                        </div>
                                        
                                        
                                        <form action="<%=request.getContextPath()%>/inscriptionServ" method="post" id="stripe-login" style="flex-grow: 1; ">


                                            <div class="field" style="display: flex;">

                                                <div style="flex: 1; margin-right: 12px;">
                                                    <label for="nom">Nom</label>
                                                    <input type="text" name="nom" value="${mdco.nom}">
                                                </div>

                                                <div style="flex: 1; margin-left: 12px;">
                                                    <label for="prenom">Prénom</label>
                                                    <input type="text" name="prenom" value="${mdco.prenom}">
                                                </div>

                                            </div>

                                            <div class="field" style="display: flex;">

                                                <div style="flex: 1; margin-right: 12px;">
                                                    <label for="email">Email</label>
                                                    <input type="email" name="email" value="${mdco.mail}">
                                                </div>

                                                <div style="flex: 1; margin-left: 12px;">
                                                    <div class="grid--50-50">
                                                        <label for="password">Matricule</label>
                                                    </div>
                                                    <input type="text" name="matricule">
                                                </div>
                                            </div>


                                            <div class="field" style="display: flex;">

                                                <div style="flex: 1; margin-right: 12px;">
                                                    <label for="email">Filiere</label>

                                                    <select id="idfiliere" name="filiere">
                                                        <option value="74">Comptabilité</option>
                                                        <option value="73">Miage</option>
                                                        <option value="71">Actuariat</option>
                                                        <option value="72">Statistique</option>
                                                    </select>

                                                </div>

                                                <div style="flex: 1; margin-left: 12px;">
                                                    <div class="grid--50-50">
                                                        <label for="password">Niveau</label>
                                                    </div>
                                                    <select id="idniv" name="niveau" >
                                                        <option value="1">Licence 1</option>
                                                        <option value="2">Licence 2</option>
                                                        <option value="3">Licence 3</option>
                                                        <option value="4">Master 1</option>
                                                        <option value="5">Master 2</option>
                                                    </select>

                                                </div>

                                            </div>

                                            <div class="field" style="display: flex;">
                                                <div style="flex: 1; margin-right: 12px;">
                                                    <label for="date_naissance">Date d'inscription</label>
                                                    <input type="text" name="dateinsc" value="">
                                                </div>


                                                <div style="flex: 1; margin-left: 12px;">
                                                    <label for="lieu_naissance">Lieu de naissance</label>
                                                    <input type="text" name="lieu_naissance" value="${mdco.lieunaiss}">
                                                </div>
                                            </div>

                                            <div class="field" style="display: flex;">
                                                <div style="flex: 1; margin-left: 12px;">
                                                    <div class="grid--50-50">
                                                        <label for="photo">Photo élève</label>
                                                        <input type="file" name="photo" id="photoInput" onload="" onchange="previewImage(event)">
                                                        <img id="preview" src="img/IconeRecerche.jpeg" alt="" style="max-width: 200px; max-height: 200px; display: ${mdco.photo != null ? 'block' : 'none'};">
                                                    </div>

                                                </div>

                                            </div>

                                            <div class="field">
                                                <label for="password">Sexe</label>

                                                <select name="sexe" id="id" class="a">
                                                    <option value="1">Masculin</option>
                                                    <option value="2">Feminin</option>
                                                </select>

                                            </div><br>
                                            <div class="field">
                                                <input type="submit" name="submit" value="Valider Inscription">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="footer-link" style="margin-top: -10px; text-align: center;">
                                        <span>Vous avez un compte? <a href='<c:url value="/connexion.jsp"/>'>Connectez-vous</a></span>
                                    </div>
                                </div>

                            </div></div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function previewImage(event) {
                var reader = new FileReader();
                reader.onload = function () {
                    var output = document.getElementById('previewImg');
                    output.src = reader.result;
                };
                reader.readAsDataURL(event.target.files[0]);
            }
        </script>
    </body>


</html>

