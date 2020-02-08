<?php
class User{
    private $_email;
    private $_password;
   	private $_nom;
   	private $_datanaixement;
   	private $_interesos;
   	private $_foto;
    private $_id;

   	public function __construct(){

   	}

	public function getNom(){
		$var = $this->_nom;
		return $var;
	}    
	public function getInteresos(){
		$var = $this->_interesos;
		return $var;
	}    
	public function getFoto(){
		$var = $this->_foto;
		return $var;
	}    	
	public function getPassword(){
		$var = $this->_password;
		return $var;
	}    
	public function getEmail(){
		$var = $this->_email;
		return $var;
	}	
	public function getId(){
		$var = $this->_id;
		return $var;
	}
	public function getData(){
		$var = $this->_datanaixement;
		return $var;
	}  
	public function setId($var){
		$this->_id = $var;
	}
	public function setNom($var){
		$this->_nom = $var;
	}    
	public function setInteresos($var){
		$this->_interesos = $var;
	}    
	public function setFoto($var){
		$this->_foto= $var;
	}    	
	public function setPassword($var){
		$this->_password = $var;
	}    
	public function setEmail($var){
		$this->_email = $var;
	}
	public function setData($var){
		$this->_datanaixement = $var;
	}
	public function get($nom){
		$var = $this->_{nom};
		return $var;
   	}
    public function set($nom,$parametre){
        $this->_{$nom} = $parametre;
	}
	public function tornaObjecte(){
		$myObj->nom = $this->_nom;
		$myObj->email = $this->_email;
		$myObj->password = $this->_password;		
		$myObj->foto = $this->_foto;
		$myObj->interesos = $this->_interesos;
		return json_encode($myObj);
	}
}
?>
