<?php
class BaseDades{
    private $tipusbd;
   	private $servidor;
  	private $usuari;
  	private $password;
  	private $baseDades;
  	private $link;
  	private $stmt;
  	private $array;
    private $files;

    static $_instance;

    private function __construct(){
        $this->setConexion();
        $this->conectar();
    }

    private function conectar(){
        if($this->tipusbd == 'mysql'){
                $link = mysqli_connect(
                $this->servidor, $this->usuari,
                $this->password, $this->baseDades);

            if (!$link){
                error_log(0,'Problema amb la connexió a la base da dades.');
                exit('Perdonin les molesties. Hi ha un problema tècnic. Esperem resolfre\'l en els propers minuts');
            }else{
                $this->link = $link;
            }
        }else if($this->tipusbd == 'postgre'){
            $this->link = pg_connect("host=".$this->servidor." dbname=".$this->baseDades." user=".$this->usuari." password=".$this->password);

        }else if($this->tipusbd == 'sql server'){
            $this->link = sqlsrv_connect($this->servidor, array("Database" => $this->baseDades,"UID" => $this->usuari,"PWD" => $this->password, "CharacterSet" => "UTF-8"));
        }
    }

    public function __destruct(){
      if($this->tipusbd == 'mysql'){
          mysqli_close($this->link);
      }else if($this->tipusbd == 'postgre'){
          $result = pg_close($this->link);
      }else if($this->tipusbd == 'sql server'){
          sqlsrv_close($this->link);
      }
    }
    private function __clone(){

    }

    public static function getInstance(){
        if (!(self::$_instance instanceof self)){
            self::$_instance = new self();
        }
        return self::$_instance;
    }
    public function error(){
        $var = mysqli_connect_error();
        return $var;
    }
    public function executar($sql){
        if($this->tipusbd == 'mysql'){
            $stmt = mysqli_query($this->link,$sql);

            if (!$stmt){
                error_log(0,'Problema amb la base da dades.');
                exit("Error 006 - Problema al ejecutar la sentencia: $sql");
            }else{
                $this->stmt = $stmt;
            }
        }else if($this->tipusbd == 'postgre'){
            $this->stmt=pg_query($this->link,$sql);

        }else if($this->tipusbd == 'sql server'){
            $this->stmt=sqlsrv_query($this->link,$sql);
        }
        return $this->stmt;
    }

    public function num_files($stmt){
        if($this->tipusbd == 'mysql'){
            $this->files = mysqli_num_rows($stmt);

        }else if($this->tipusbd == 'postgre'){
            $this->files = pg_num_rows($stmt);

        }else if($this->tipusbd == 'sql server'){
            $this->files = sqlsrv_num_rows($stmt);
        }
         return $this->files;
     }

    public function obtenir_fila($stmt,$fila){
        if($this->tipusbd == 'mysql'){
            if ($fila == 0){
                $this->array = mysqli_fetch_array($stmt);
            }else{
                mysqli_data_seek($stmt,$fila);
                $this->array = mysqli_fetch_array($stmt);
            }
        }else if($this->tipusbd == 'postgre'){
            if ($fila==0){
                $this->array=pg_fetch_row($stmt);
            }else{
                $this->array=pg_fetch_row($stmt,$fila);
            }
        }else if($this->tipusbd == 'sql server'){
            if ($fila==0){
                $this->array=sqlsrv_fetch_array($stmt);
            }else{
                $this->array=sqlsrv_fetch_array($stmt,"SQLSRV_FETCH_ASSOC",$fila,1);
            }
        }
        return $this->array;
    }
   	private function setConexion(){
   		$newconf = Conf::getInstance();

   		$this->servidor = $newconf->getHostDB();
   		$this->baseDades = $newconf->getDB();
   		$this->usuari = $newconf->getUserDB();
   		$this->password = $newconf->getPassDB();
        $this->tipusbd = $newconf->getSGDB();
   	}
    public function existeix($nombd,$nomform){
        $retorn = false;
        $sql="select * from tbl_usuaris";
        $stmt = $this->executar($sql);
        while ($x = $bd->obtenir_fila($stmt,0)){
            if($x[$nombd] == $nomform){
                $retorn = true;
            }
        }
        return $retorn;
    }
   	public function getlink(){
      	$var=$this->link;
      	return $var;
   	}
}
?>
