<?php

$mysqli = new mysqli('127.0.0.1','root','','proyectofinal');

if ($mysqli->connect_error) {
	echo " LO SENTIMOS, ESTE SITIO WEB ESTA EXPERIMENTANDO PROBLEMAS  <BR>";
	echo "error: Fallo al conectarse a mysql debido a:  ". $mysqli->connect_error . "<br>";
    
exit;
}
else{
	//datos personales
$documento = $_POST["documento"];
$Nombres = $_POST["nombres"];
$apellidos = $_POST["apellidos"];
$cargo = $_POST["cargo"];
$salario = $_POST["salario"];
$dias_laborados = $_POST["dias"];
$basico = $_POST["basico"];
$subsidio = $_POST["subsidio"];
//devengdos
$hed = $_POST["hed"];
$hen = $_POST["hen"];
$hedf = $_POST["hedf"];
$henf = $_POST["henf"];
$totalextras = $_POST["totalextras"];
$otrosdevengados = $_POST["otrosdevengados"];
$totaldevengado = $_POST["totaldevengados"];

//deducidos 
$eps = $_POST["eps"];
$pension = $_POST["pension"];
$fondo = $_POST["fondo"];
$otrosdeducidos = $_POST["otrosdeducidos"];
$totaldeducidos = $_POST["totaldeducidos"];

 $sql = "INSERT INTO liquidación_nomina Values ('".$documento."','".$Nombres."','".$apellidos."','".$cargo."','".$salario."','".$dias_laborados."','".$basico."','".$subsidio."','".$hed."','".$hen."','".$hedf."','".$henf."','".$totalextras."','".$otrosdevengados."','".$totaldevengado."','".$eps."','".$pension."','".$fondo."','".$otrosdeducidos."','".$totaldeducidos."')";
 
 
  $mysqli->query($sql);
  echo "los datos fueron ingresados correctamemte";
}

$mysqli->close();



?>