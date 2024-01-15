<?php
	class Dash extends CortrollerBase{
		public function __construct(){
			parent::__construct();
			session_start();
		}
		public function Admin(){
            /**
             * Panel de administracion de sistema de consultas
             * */
            return $this->render('Dash/admin', ["msj" => "Bienvenido al sistema de consulta de datos del ministerio de alimentacion."]);
        }
	}
?>