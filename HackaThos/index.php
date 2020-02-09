<?php
    error_reporting(E_ALL);
    ini_set("display_errors",1);
    session_start();

    spl_autoload_register(function ($class){
        $folders = array ('controller','core','model');
        foreach($folders as $folder){
            $path = "$folder/$class.class.php";
            if(file_exists($path)){
                require_once ($path);
                return;
            }
        }
        //throw new MyWebPageException(200,"No es pot accedir al fitxer: ".$path);
    });

    foreach($_POST as $campo => $valor){
        echo $campo."-".$valor."<br>";
    }

$front = new FrontController();
$front->post();
//$front->

?>
