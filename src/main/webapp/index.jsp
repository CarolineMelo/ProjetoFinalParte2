<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-success mb-5">
  <a class="navbar-brand" href="#">Drogasil</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Usúario</a>
      </li>
     
    </ul>
  </div>
</nav>

<div class="container">
		<div class="row justify-content-center">
	      <h1 class= col-4 >Lista de Usuários</h1>
	      <hr>
	     </div>
	     <a href="formulario.jsp"><button type="button" class="btn btn-primary mb-3">Adicionar usuário</button></a>
	     
</div>


<div class="container">

<table class="table table-bordered" >
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Email</th>
      <th scope="col">País</th>
      <th scope="col">Ações</th>
    </tr>
  </thead>
  
	<c:forEach items="${lista}" var="user" varStatus="i">
			  
		<tr>
			 <td>${user.id}</td>
			 <td>${user.nome}</td>
			 <td>${user.email}</td>
			 <td>${user.pais}</td>
			 <td><a href="?id=${i.index}&alterar=1">Alterar</a></td>
			 <td><a href="?id=${i.index}&alterar=0">Remover</a></td>
		</tr>
	</c:forEach>
 
  
  
</table>
</div>
</body>
</html>