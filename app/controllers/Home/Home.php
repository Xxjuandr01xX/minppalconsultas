<?php
	class Home extends CortrollerBase{
		public function __construct(){
			parent::__construct();
			//session_start();
		}
		public function Index(){
            /**
              * METODO PARA LANZAR PAGINA INDEX.
              */
            
            return $this->render('login/login',["titulo" => "SISTEMA DE INVENTARIO."]);
		}
        public function Login(){
            /**
              * METODO PARA VALIDAR EL ACCESO DE LOS USUARIOS AL SISTEMA
              */
            $resp     = [];
            $username = filter_input(INPUT_POST, 'usr', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
            $password = filter_input(INPUT_POST, 'pwd', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
            foreach(getUsuario($username, $password) as $usuarios){
                if($usuarios['nomusuario'] == $username && $usuarios['pw'] == $password){
                    session_start();
                    $_SESSION['user'] = $usuarios['nomusuario'];
                    $_SESSION['rol']  = $usuarios['id_rol_fk'];
                    $_SESSION['c_name'] = $usuarios['nombre']." ".$usuarios["apellido"];
                    $resp["sucess"] = "1";
                    $resp["fail"] = "0";
                }else{
                    $resp["sucess"] = "0";
                    $resp["fail"] = "1";
                }
            }
            echo json_encode($resp);
        }
	}
?>