$(document).ready(function(){
	/**
	 * ARCHIVO PARA MANUPULACION E INTERACCIONES DEL
	 * SISTEMA DE LOGUEO DE USUARIOS.
	 * archivo para manipulat url y alertas javascript components.funcs.js
	 * nombres de variables para validar inicio de session 
	 * username:input_username
	 * password:input_password
	 */
	 
	 //validar url
	 
	 var q = $_GET('q');
	 
	 if(q == 'Home/Index'){

		 
		 $("#btn-submit").on('click',function(e){
			 e.preventDefault();
		 });
	 }else{
		document.write = "OPERACION NULA";
	 }
});