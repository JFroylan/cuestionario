<?php

session_start();

if(isset($_SESSION['sesionUser'])){


    $usuario2 = new Usuario();


    $id = $_COOKIE['id'];

    $sql = "SELECT * FROM Usuario WHERE id = $id";

    $consulta = mysql_query($sql)or die("Error de consulta $sql");

    echo"<div class=\"container theme-showcase\" role=\"main\">";

    $nom_usuario = mysql_result($consulta, 0, 'User');




    //$saludo='ola estas en el archivo de respuestas';
    $nombre=''.$nom_usuario.'';

    $variables= array('nombre'=>$nombre);

    /*nombre del archivo a llamar y manda las variables*/
    view('respuestas',$variables);

    }
    else{
        echo"<script>alert(' No ha iniciado sesión.');
        location.href = 'login.asp';
    </script>";
    }