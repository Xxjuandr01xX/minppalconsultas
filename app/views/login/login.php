<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="public/assets/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="public/icons/font/bootstrap-icons.css">
	<script type="text/javascript" src="public/assets/dist/js/jquery.min.js"></script>
	<script type="text/javascript" src="public/assets/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="public/components.funcs.js"></script>
	<script type="text/javascript" src="public/assets/system/jsLogin.js"></script>
	<title>Login</title>
	<style type="text/css">
		body{
			/**
			 * se define la imagen de fondo para el login de la aplicacion
			 * */
			background-image: url('public/img/background.jpg');
			background-attachment: fixed;
			background-position: center;
			background-repeat: no-repeat;
			background-color: #fbf7f1;
		}
		.btn-orange {
			background-color:#ffa43a !important; 
			color:#fff;
		}
		.color-orange{
			color:#ffa43a !important;
		}
	</style>
</head>
<body>
	<div id = "cargar-alerta">
	</div>
	<div class="container-fluid ">
		<div class="row d-flex justify-content-center">
			<div class="col-md-4 mt-5">
				<div class="card rounded-0" style=" box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
					<div class="card-header bg-secondary rounded-0" >
						<div class="row clearfix d-flex justify-content-center">
							<div class="col-md-11">
								<p class="text-center mt-2 display-6 text-white">Iniciar Session</p>
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="input-group mt-3">
							<label for="" class="input-group-text rounded-0 ">
								<span class = "bi-person-fill color-orange"></span>
							</label>
							<input type="text" placeholder="Nombre de Usuario" class="form-control rounded-0" id = "input_username">
						</div>
						<div class="input-group mt-3">
							<label for="" class="input-group-text rounded-0 ">
								<span class = "bi-lock-fill color-orange"></span>
							</label>
							<input type="password" placeholder="Contraseña" class="form-control rounded-0" id = "input_password">
						</div>
						<div class="input-group mt-3 mb-4">
							<button id = "btn-submit" class="btn btn-orange rounded-0" style="width: 100%;">
								INGRESAR
							</button>
						</div>
						<a href="#" class = "text-center" >
							Registrarse
						</a>
						<br>
						<div class="row clearfix d-flex justify-content-center mt-2">
							<div class="col-md-2">
								<div class="spinner-border text-danger mt-3" role="status" id = "load-spin">
									<span class="visually-hidden">Loading...</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>