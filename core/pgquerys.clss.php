<?php 

	require_once "conexion.php";

	class Pgquerys{
		private $con;
		private $db;
		function __construct(){
			$this->con = new Conexion();
			$this->db = $this->con->Conectarse();
		}
		public function getConnection(){
			return this->con;
		}
		public function getDatabase(){
			return $this->db;
		}
		public function pg_free_query($string){
			return pg_query($this->db, $string);
		}
		public function get_by_id($condicion, $table){
			$resultSet = [];
			$query = $this->pg_free_query("SELECT * FROM ".$table." WHERE "." id=".$condicion);
			while($res = pg_fetch_assoc($query)){
				$resultSet[] = $res; 
			}
			return $res;
		}
		public function getAll($table){
			$resultSet = [];
			$query = pg_query($this->db, "SELECT * FROM ".$table);
			if(!$query){
				return "0";
			}else{
				while($res = pg_fetch_assoc($query)){
					$resultSet[] = $res;
				}
				return $resultSet;
			}
		}
	}
	 

?>