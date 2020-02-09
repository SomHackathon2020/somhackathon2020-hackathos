<?php
class UserModel{
    private $user;
    private $bd;
    private $errors;


   	public function __construct(){
      $this->bd = BaseDades::getInstance();
   	}

    public function saveUser($user){
        $this->user = $user;
        $sql = "INSERT INTO users (correo,passwd,nombre,icono,fechanac,intereses) VALUES('{$this->user->getEmail()}','{$this->user->getPassword()}','{$this->user->getNom()}','{$_FILES['foto']['name']}','{$this->user->getData()}','{$this->user->getInteresos()}')";
        $stmt = $this->bd->executar($sql);

        if(!$stmt){
            $this->errors["registre"] = "<span>Error: <span>".$sql."</span><br>".mysqli_error($this->bd->getlink());
        }
    }

    public function getUser($usuari, $password){
        $usuari = Controller::sanitize($usuari,1);
        $password = Controller::sanitize($password,1);
        $sql2 = "select * from users where correo='".$usuari."'";
        $stmt = $this->bd->executar($sql2);
        $row = $this->bd->obtenir_fila($stmt,0);
        if($row){
            if($row["email"] == $usuari && $row["password"] == $password){
                $array = ["nombre" => $row["nombre"],"fechanac" => $row["fechanac"],"icono" => $row["icono"],"correo" => $row["correo"],"intereses" => $row["intereses"]];
                $_SESSION["usuari_valid"] = $array;
                $errors["inici"]["text"] = '<span class="verd">Inici de Sessió Correcte</span>';
            }else{
                $this->errors["inici"]["num"]++;
                $this->errors["inici"]["text"] = '<span class="error">Dades Incorrectes</span>';  
            }
        }else{
            $this->errors["inici"]["num"]++;
            $this->errors["inici"]["text"] = '<span class="error">Dades Incorrectes</span>';  
        }
    }

    public function existeix($nombd,$nomform){
        $sql="select * from users where {$nombd}='{$nomform}'";
        $stmt = $this->bd->executar($sql);
        return $this->bd->num_files($stmt) == 0 ? false : true; 
    }

    public function errors(){
        return $this->errors;
    }
    public function setbd($bd){
        $this->bd = $bd;
   	} 

}

?>
