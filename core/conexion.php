<?php
    require_once "pg_conection_driver.php";

	class Conexion{
		private $host,$user,$pass,$db,$charset;
		public function __construct(){
			
			$this->host		= "localhost";
			$this->user		= "root";
			$this->pass		= "";
            $this->db		= "invemtario";
			$this->charset  = "utf8";
			
		}
		
		////////CONEXION CON MYSQL///////////////
		/*public function Conectarse(){
			$con = new mysqli($this->host,$this->user,$this->pass,$this->db)or die("ERROR");
			$con->set_charset($this->charset);
			return $con;
		}*/

		////////CONEXION CON POSTGRESQL///////////////
		public function Conectarse(){
			$con = new pg_connec("host='$this->host' port=5432 dbname='$this->db' user='$this->user' password='$this->pass' options='--client_encoding=UTF8'")or die("ERROR AL CONECTAR CON LA BASE DE DATOS");
			//$con->set_charset($this->charset);
			return $con;
		}
	}
?>