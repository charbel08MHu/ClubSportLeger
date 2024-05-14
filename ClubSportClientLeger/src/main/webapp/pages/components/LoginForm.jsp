<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
<title>Formulaire de Connexion</title>
 
<style>
.container{
    width: 100%; /* Largeur du formulaire */
    background-color:#FFFFFF ;
    max-width: 700px; /* Largeur maximale */
    padding: 10px; /* Espacement intérieur */
    border-radius: 8px; /* Bord arrondi */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Ombre */
    height: 450px    
  }
.card-body{
   background-color: #11559C; /* Couleur de fond */
}
 
.custom-btn {
    background-color: #11559C; /* Couleur de fond */
    border-color: #11559C; /* Couleur de bord */
    color: #ffffff; /* Couleur du texte */
}
body {
	
}
.big-container{
	background-color: #e5e5f7;
	opacity: 0.8;
	background-image: radial-gradient(#232aab 0.5px, #e5e5f7 0.5px);
	background-size: 10px 10px;
	height: 600px;
	padding-top:50px;     
}
</style>
</head>
<body>
<jsp:include page="Header.jsp" />
<div class="big-container">
<div class="container">
    <div class="card bg-primary text-white">
        <div class="card-body">Veuillez saisir vos identifiants</div>
    </div>
 
    <form action="Login.jsp" method="post">
        <h2>Connexion</h2>
      
        <div class="form-group">
            <label for="email">Adresse e-mail</label>
            <input type="text" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Entrez votre adresse e-mail">
        </div>
        <div class="form-group">
            <label for="motdepasse">Mot de passe</label>
            <input type="password" class="form-control" id="motdepasse" name="motdepasse" placeholder="Mot de passe">
        </div>
        <div class="mb-3 form-check">
				<a href="EmailForm.jsp">Mot de passe oublié</a>
			</div>
        <button type="submit" class="btn btn-primary custom-btn">Connexion</button>
    </form>
</div>
 </div>
 
    <% String message = (String)request.getAttribute("message"); %>
    <% if(message != null && !message.isEmpty()) { %>
        <div class="alert alert-danger">
            <strong>News!</strong> <%= message %>
        </div>
    <% } %>
<jsp:include page="Footer.jsp" />
</body>
</html>