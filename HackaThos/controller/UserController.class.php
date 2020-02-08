<?php
class UserController extends Controller{
    private $user;
    private $usermodel;

   	public function __construct($user){
        parent::__construct();
        $this->user = $user;
        $this->usermodel = new UserModel();
   	}

    public function registre(){
        $this->user->setEmail($this->sanitize($_POST["email"],1));
        $this->user->setPassword($this->sanitize($_POST["pass"],1));
        //$this->user->setData($this->sanitize($_POST["datanaixement"],1));
        $this->user->setNom($this->sanitize($_POST["nom"],1));

        $this->compnom();
        //$this->compdata();
        $this->compemails();
        $this->compcontra();
        echo "Num: "+$this->errors()["user"]["numerrors"];

        return $this->errors();
    }

    public function compnom(){
        //comprovacio Nom
        $vnom = $this->user->getNom();
        $especials = "-_#$%&@€()[]{}.,?¿¡!|";

        if($vnom == null){
            $this->errors["user"]["numerrors"]++;
            $this->errors["user"]["nom"] .= '<span class="error">No has ficat cap Nom</span>';
        }else if(preg_match('/\\d/', $vnom) || preg_match("/$vnom/", $especials)){
            $this->errors["user"]["numerrors"]++;
            $this->errors["user"]["nom"] .= '<span class="error">No pot tenir Numeros o Caracters Especials al Nom</span>';
            $this->user->set("nom","");
        }
    }

    public function compdata(){
        //Comprovació de la data de naixement i la edat
        $vdatanaixement = $this->user->getData();
        if($vdatanaixement == null){
            $this->errors["user"]["numerrors"]++;
            $this->errors["user"]["data"] = '<span class="error">Has de ficar la data de naixement</span>';
        }else{
            $data_neixement = date("Y-m-d",strtotime($vdatanaixement));
            $data_actual = date("Y-m-d");

            if($data_actual > $data_neixement){
                $this->errors["user"]["data"] = '<span class="verd">Correcte</span>';
            }else{
                $this->errors["user"]["numerrors"]++;
                $this->errors["user"]["data"] = '<span class="error">Introdueix una data de Naixement Valida</span>';
                $this->user->set("datanaixement","");
            }

            list($any,$mes,$dia) = explode("-",$data_neixement);
            $any_diferencia  = date("Y") - $any;
            $mes_diferencia = date("m") - $mes;
            $dia_diferencia   = date("d") - $dia;

            if ($dia_diferencia < 0 && $mes_diferencia <= 0){
                $any_diferencia--;
            }
            if($any_diferencia < 12){
                $this->errors["user"]["numerrors"]++;
                $this->errors["user"]["data"] = '<span class="error">Has de tenir 12 anys per poder registrarte</span>';
                $this->user->set("datanaixement","");
            }else{
                $this->errors["user"]["data"] = '<span class="verd">Correcte tens '.$any_diferencia.' anys</span>';
            }
        }
    }

    public function compemails(){
        $vemail1 = $this->user->getEmail();
        //Comprovar email's
        if($vemail1 == null){
            $this->errors["user"]["numerrors"]++;
            $this->errors["user"]["email"] .= '<span class="error">El camp E-mail esta Buit</span>';
        }else if($this->usermodel->existeix("correo",$this->user->getEmail())){
            $this->errors["user"]["numerrors"]++;
            $this->errors["user"]["email"] = '<span class="error">Ja esta registrat aquest Correu</span>';
            $this->user->set("email","");
        }
    }

    public function compcontra(){
        //Validar Contrasenyes
        $vpass1 = $this->user->getPassword();
        if($vpass1 == null){
            $this->errors["user"]["numerrors"]++;
            $this->errors["user"]["password"] .= '<span class="error">Un dels dos camps Contrassenya esta Buit</span>';
        }else{
            $nivell = $this->validarpassword($vpass1);
            switch($nivell) {
                case 1:
                    $this->errors["user"]["numerrors"]++;
                    $this->errors["user"]["password"] .= '<span class="error">Contrasenya poc segura</span>';
                    break;
                case 2:
                    $this->errors["user"]["password"] .= '<span class="verd">Contrasenya de seguretat acceptable</span>';
                    break;
                case 3:
                    $this->errors["user"]["password"] .= '<span class="verd">Contrasenya de seguretat alta</span>';
                    break;
                case 4:
                    $this->errors["user"]["password"] .= '<span class="verd">Contrasenya de seguretat Molt alta</span>';
                    break;
            }
        }
    }

    public function compfile(){
        //Comprovar imatge
        if($this->errors["user"]["numerrors"] == 0 && $_FILES["foto"] != null) {
            if($_FILES["foto"]["error"] == 1 || $_FILES["foto"]["error"] == 2){
                    $this->errors["user"]["numerrors"]++;
                    $this->errors["user"]["file"] = '<span class="error">Ha introduit un fitxer mes gran del permes</span>';

            }else if($_FILES["foto"]["error"] == 3 || $_FILES["foto"]["error"] > 4){
                    $this->errors["user"]["numerrors"]++;
                    $this->errors["user"]["file"] = '<span class="error">Hi hagut un problema inter del Servidor torna ha probar</span>';
            }
            if(!empty($_FILES['foto']['type'])){
                if(($_FILES['foto']['type'] == 'image/png' || $_FILES['foto']['type'] == 'image/jpeg')){

                    $format = substr($_FILES['foto']['name'], strpos($_FILES['foto']['name'], '.'));
                    $_FILES['foto']['name'] = $_POST["email"]."-fotoperfil".$format;

                    if(file_exists('upload/' . $_FILES['foto']['name'])){
                        $this->errors["user"]["numerrors"]++;
                        $this->errors["user"]["file"] = '<span class="error">Ja te un usuari creat</span>';
                    }else if(!move_uploaded_file($_FILES['foto']['tmp_name'], 'upload/' .$_FILES['foto']['name'])){
                        $this->errors["user"]["numerrors"]++;
                        $this->errors["user"]["file"] = "<span class='error'>Error al guardar imatge</span>";
                    }
                }else{
                    $this->errors["user"]["numerrors"]++;
                    $this->errors["user"]["file"] = '<span class="error">El format del Fitxer ha de ser PNG o JPG</span>';
                }
            }
        }
    }

    public function errors(){
      	return $this->errors;
    }

    /*public function get($nom){
        $var = $this->_{$nom};
      	return $var;
   	}

    public function set($nom,$parametre){
        $this->_{$nom} = $parametre;
    }*/

}

?>
