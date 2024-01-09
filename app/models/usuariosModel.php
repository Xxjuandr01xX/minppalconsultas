<?php
    /**
     * Se llama a la clase pgquerys desde aqui para ejecutar las consultas.
     * */
	function getUsuario($usr, $pwd){
        $query = new Pgquerys();
        $result = [];
        $fields = $query->pg_free_query("SELECT * FROM nom_usuarios WHERE nomusuario='$usr' AND pw='$pwd'");
        while($row = pg_fetch_assoc($fields)){
            $result[] = $row;
        }
        return $result;
	}

?>