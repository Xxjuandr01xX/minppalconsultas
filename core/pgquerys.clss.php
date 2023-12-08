<?php 

	require_once "conexion.php";

	class pgquerys{
		private $con;
		private $db;
		function __construct(){
			$this->con = new Conexion();
			$this->db = $this->con->Conectarse();
		}
		public function getAll(){
			$resultSet = [];
			$res = $this->db->query("SELECT * FROM ".$this->table);
			
			while($rows = $res->fetch_assoc()){
				$resultSet[] = $rows;
			}
			mysqli_free_result($res);
			return $resultSet;
		}
	}
	 

?>