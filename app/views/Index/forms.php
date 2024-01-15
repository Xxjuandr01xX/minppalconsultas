<?php
  /**
    * ARRAYS DE OPCIONES PARA LOS MENUS
    *
    */
  /**
    * OPCIONES PARA GESTIONAR LAS EMPRESAS    
    */
  $equipos = [
    "Equipos/gestionar",
    "Equipos/ventas"
  ];
  /**
   *  Validacion de permisologia de usuaros
   */
  if($_SESSION['rol'] == 1){
    /**
     * Permisologia para Administrador del sistema
     */
    require_once "app/views/index/menuAdministrador.php";
  }else if($_SESSION['rol'] == 2){
    /**
     * Permisologia para Usuarios Normales.
     */
    require_once "app/views/index/menuNivel_I.php";
  }else{
    /**
     * Si no cumple con las condiciones regresa el inicio de 
     * session.
     */
    header("Location:?q=Home/Index");
  }
?>