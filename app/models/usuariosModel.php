<?php
    /**
     * Se llama a la clase pgquerys desde aqui para ejecutar las consultas.
     * */
	function getUsuario($usuario){
        $query = new Pgquerys();
        foreach($query->get_by_id($usuario) as $usr){
            echo $usr;
        }  
	}

?>