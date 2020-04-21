$(function(){
	$('#form-save').submit(function( event ) {
		  if($("#referencia").val().length === 0){
			  alert("O Campo Exame Médico é obrigatório");
			  event.preventDefault();
		  }else if($("#nome").val().length === 0){
			  alert("O Campo Nome é obrigatório");
			  event.preventDefault();
		  }else if($("#descricao").val().length === 0){
			  alert("O Campo Descricao é obrigatório");
			  event.preventDefault();
		  }
		  
	});
	
	$('#form-edit').submit(function( event ) {
		  if($("#referencia").val().length === 0){
			  alert("O Campo Exame Médico é obrigatório");
			  event.preventDefault();
		  }else if($("#nome").val().length === 0){
			  alert("O Campo Nome é obrigatório");
			  event.preventDefault();
		  }else if($("#descricao").val().length === 0){
			  alert("O Campo Descricao é obrigatório");
			  event.preventDefault();
		  }
		  
	});
});