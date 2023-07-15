<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <link rel="stylesheet" type="text/css" href="css/connexion.css">
    </head>

    <body>
        <div class="login-root">
            <div class="box-root flex-flex flex-direction--column" style="min-height: 100vh;flex-grow: 1;">
                <div class="loginbackground box-background--white padding-top--64">
                    <div class="loginbackground-gridContainer">
                        <div class="box-root flex-flex" style="grid-area: top / start / 8 / end;">
                            <div class="box-root" style="background-image: linear-gradient(white 0%, rgb(247, 250, 252) 33%); flex-grow: 1;">
                            </div>
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
                        <h1><a href="http://blog.stackfindover.com/" rel="dofollow">Connexion</a></h1>
                    </div>
                    <div class="formbg-outer">
                        <div class="formbg-inner padding-horizontal--48" style="display: flex; flex-direction: column; justify-content: center; align-items: center; height: auto;">              
                            <div class="formbg">
                                <div class="formbg-inner padding-horizontal--48">


                                    <form action="connexionServ" id="stripe-login" accept-charset="utf-8" method="GET">

                                        <div class="field padding-bottom--24">
                                            <label for="email">Email</label>
                                            <input type="email" name="email">
                                        </div>
                                        <div class="field padding-bottom--24">
                                            <div class="grid--50-50">
                                                <label for="password">Mot de passe</label>
                                                <div class="reset-pass">
                                                    <a href="#">Mot de passe oublié?</a>
                                                </div>
                                            </div>
                                            <input type="password" name="password">
                                        </div>
                                        <div class="field field-checkbox padding-bottom--24 flex-flex align-center">
                                            <label for="checkbox">
                                                <input type="checkbox" name="checkbox"> Voir mot de passe
                                            </label>
                                        </div>
                                        <div class="field padding-bottom--24">

                                            <c:out value="bonjour"/>



                                            <input type="submit" name="submit" value="Continue">
                                        </div>
                                        <div class="footer-link padding-top--24">
                                            <span>Vous n'avez pas de compte?  <a href='<c:url value="/inscription.jsp"/>'>Inscrivez vous ici</a></span>

                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>