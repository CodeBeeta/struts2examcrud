<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="http://localhost:8080/projeto_struts/script.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script  src="https://code.jquery.com/jquery-3.5.0.min.js"  integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="  crossorigin="anonymous"></script>
<link href="http://localhost:8080/projeto_struts/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta charset="UTF-8">
<title>Cadastro de Exames | Bem-Vindo! </title>
</head>
<body>

<div class="container">
	<div class="row">
	<div class="col-md-12 titulo">
				<p><img src="https://infooab.examtime.com/files/2014/11/Elegant_circle-icons-481.png"></p>
				<h1> Examsys | Cadastro de Exames </h1>
		</div>
		<div class="col-md-12 estilo-form">
			<form action="saveExam" method="post" id="form-save">
			  <div class="form-group">
			    <label for="exam.referencia">Exame médico</label>
			    <input type="text" class="form-control" name="exam.referencia" id="referencia" placeholder="código de referência do exame">
			  </div>
			  <div class="form-group">
			    <label for="exam.nome">Nome:</label>
			    <input type="text" class="form-control" name="exam.nome" id="nome" placeholder="nome do exame">
			  </div>
			  <div class="form-group">
			    <label for="exam.descricao">Descrição:</label>
			    <input type="text" class="form-control" name="exam.descricao" id="descricao" placeholder="Descrição completa do exame">
			  </div>
			  <div class="form-group">
			    <label for="exam.classe">Classe do exame</label>
			    <select class="form-control" id="exam.classe" name="exam.classe">
			      <option>Médicos</option>
			      <option>Laboratoriais</option>
			      <option>Complementares</option>
			    </select>
			  </div>
			  <button type="submit" class="btn btn-primary">Cadastrar</button>
			</form>
			<hr>
		</div>
		<div class="col-md-12" style="margin-top: 2%;">
		<s:if test="sm != null">
		    <div class="alert alert-success" role="alert">
		      <s:property value="sm"/>
		    </div>
		 </s:if>
		 <s:if test="em != null">
		    <div class="alert alert-danger" role="alert">
		      <s:property value="em"/>
		    </div>
		 </s:if>
		</div>	
		<div class="col-md-12" style="padding: 0% 10%;">
			<a href="listPage.action">
				<button type="button" class="btn btn-primary btn-lg btn-block mg-5">Ver todos</button>
			</a>
		</div>	
	</div>
</div>

</body>
</html>