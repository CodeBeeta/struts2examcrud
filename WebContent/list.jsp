<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link href="http://localhost:8080/projeto_struts/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <meta charset="UTF-8">
<title>Cadastro de Exames | Lista Geral</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12 titulo">
				<p><img src="https://infooab.examtime.com/files/2014/11/Elegant_circle-icons-481.png"></p>
				<h1> Examsys | Lista de Exames </h1>
		</div>
		<div class="col-md-12 estilo-form">
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col">Ref.</th>
			      <th scope="col">Nome</th>
			      <th scope="col">Descrição</th>
			      <th scope="col">Classe</th>
			      <th scope="col">editar</th>
			      <th scope="col">excluir</th>
			    </tr>
			  </thead>
			  <tbody>
			  <s:iterator value="examList">
			    <tr>
			      <th scope="row"><s:property value="referencia"/></th>
			      <td><s:property value="nome"/></td>
			      <td><s:property value="descricao"/></td>
			      <td><s:property value="classe"/></td>
			      <td> 
			      	<a href="editExam.action?id=<s:property value="id"/>">
			      		<img src="https://icons.iconarchive.com/icons/icons8/windows-8/256/Editing-Edit-icon.png" alt="editar" height="27" width="27">
			      	</a> 
			      </td>
			      <td>
			      	<a onclick="return confirm('Tem certeza que deseja deletar o exame?')" href="deleteExam.action?id=<s:property value="id"/>">
			      		<img src="https://www.unicef.org/sop/themes/custom/unicef/images/icon_wclose.png" alt="excluir" height="27" width="27">
			      	</a>			      	
			      </td>
			    </tr>
			   </s:iterator>
			  </tbody>
			</table>
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
			<a href="/projeto_struts/">
				<button type="button" class="btn btn-primary btn-lg btn-block mg-5">Cadastrar Novo</button>
			</a>
		</div>	
	</div>
</div>
</body>
</html>