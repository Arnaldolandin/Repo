<?php

//include("conexion.php");
require_once('PhpMailer\Exception.php');
require_once('PhpMailer\PHPMailer.php');
require_once('PhpMailer\SMTP.php');


$mail = new \PHPMailer\PHPMailer\PHPMailer(true);
//exception
try {


	$mail->SMTPDebug = 1;
	$mail->isSMTP();
	$mail->Host = 'smtp.nauta.cu';
	$mail->SMTPAuth = true;
	$mail->Username = 'landin7211@nauta.cu';
	$mail->Password = 'Algdgadu72112101728';
	$mail->SMTPSecure = 'none';

	$mail->Port = 25;
	$mail->setFrom('landin7211@nauta.cu', 'Landin');
	$mail->addAddress('landin7211@nauta.cu');
	$mail->isHTML(false);
	$mail->Subject = 'Asuntooooo';
	$mail->Body = 'mensajeeeeeeeee';
	$mail->send();
	echo 'El mensaje fue enviado';
}
	catch(exception $e)
	{

		echo ' el mesaje no se envio . error ' , $mail->ErrorInfo;
	};






?>