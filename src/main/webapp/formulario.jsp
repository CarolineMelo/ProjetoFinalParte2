<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
<title>Insert title here</title>

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

<div class="jumbotron col-6" style="outline: 1px solid #d5d5d5;">
            <div class="row justify-content-center">
              <div class="text-center">
                <h2>Adicionar usuário</h2>
              </div>
              
              <div class="text-center col-6 mb-5">
        
                <form method="post" action="ProjetoFinal" class="text-start">
                  <input type="hidden" name="id" value=${id}>
                 
                  <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" value="${nome}" class="form-control" name="nome" placeholder="">
                    <span  class="form-text text-muted" style="display: none;">Por favor, entre com seu nome.</span>
                  </div>
                  <div class="form-group">
                    <label for="email">E-Mail</label>
                    <input type="email" value="${email}" class="form-control"  name="email" placeholder="" >
                    <span  class="form-text text-muted" style="display: none;">Por favor, digite um email válido.</span>
                  </div>
                  <div class="form-group">
                    <label for="pais">País</label>
                    <input type="text" value="${pais}" class="form-control" name="pais" placeholder="" >
                    <span class="form-text text-muted" style="display: none;">Por favor, entre com seu nome.</span>
                  </div>
                  <a href="index.jsp"><button type="submit"  class="btn btn-primary btn-lg mt-5">Salvar</button></a>
                </form>
              </div>
            </div>
          </div>
          </div>
 </div>


</body>
</html>