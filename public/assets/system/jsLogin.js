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
		 $("#load-spin").css({"display":"none"});
		 $("#btn-submit").on('click',function(e){
			 e.preventDefault();
			 set_validate_login();
		 });
	 }else{
		document.write = "OPERACION NULA";
	 }
});

function set_validate_login(){
	let username = $("#input_username").val();
	let password = $("#input_password").val();
	if(username == null || username.length == 0 || /^\s+$/.test(username)){
		alert_top_warning("cargar-alerta", "Llene el campo de nombre de usuario correctamente. !");
		$("#input_username").val("");
		$("#input_username").focus();
	}else if(password == null || password.length == 0 || /^\s+$/.test(password)){
		alert_top_warning("cargar-alerta", "Asegurece de colocar su clave correctamente. !");
		$("#input_password").val("");
		$("#input_password").focus();
	}else{
		let dta_user = {
			"usr" : username,
			"pwd" : password
		};
		$.ajax({
			"method"   : "post",
			"url"      : "localhost/str-base/?q=Home/Login",
			"data"     : dta_user,
			beforeSend : function(){
				$("#load-spin").css({"display":"block"});
			},
			success: function(resp){
				$("#load-spin").css({"display":"none"});
				console.log(resp);
			}
		});
	}
}