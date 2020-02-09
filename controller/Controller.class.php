<?php
class Controller{
    protected $_errors;
    protected $_conf;

   	public function __construct(){
        $this->_conf = Conf::getInstance();
    }

    public static function sanitize ($text, $tipus){
        switch ($tipus) {
            case 1:
                $text = filter_var($text, FILTER_SANITIZE_STRING);
                break;
            case 2:
                //futures comprovacions
                break;
        }

        return $text;
    }

    public function validarpassword($password){
        $retorn = 0;
        $contadormi = 0;
        $contadorma = 0;
        $contadornum = 0;
        $contadoresp = 0;

        $minusculas = "abcçdefghijklmnñopqrstuvwz";
        $majusculas = "ABCÇDEFGHIJKLMNÑOPQRSTUVWZ";
        $especials = "-_#$%&@€()[]{}.,?¿¡!|";

        for($i=0;$i<strlen($password);$i++){
            if(preg_match("/$password[$i]/", $minusculas)){
                $contadormi++;
            }else if(preg_match("/$password[$i]/", $majusculas)){
                $contadorma++;
            }else if(preg_match('/[0-9]/',$password[$i])){
                $contadornum++;
            }else if(preg_match("/$password[$i]/", $especials)){
                $contadoresp++;
            }
        }

        if((strlen($password) >= 8) && $contadormi >= 1 && $contadorma >= 1 && $contadornum >= 1){
            $retorn = 3;

            if($contadoresp >= 1){
                $retorn = 4;
            }
        }else if(strlen($password) >= 6 && (($contadormi >= 1 || $contadorma >= 1) && $contadornum >= 1)){
            $retorn = 2;

        }else if(strlen($password) >= 6){
            $retorn = 1;

        }
        return $retorn;
    }
    
    public function getConf() {
        return $this->_config;
    }

    public function getErrors(){
        $var = $this->_errors;
      	return $var;
   	}
    
    public function setConf($conf){
        $this->_conf = $conf;
   	}  

}

?>
