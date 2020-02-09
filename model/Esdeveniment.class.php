<?php
class Esdeveniment{
    private $_id;
    private $_titol;
   	private $_descripcio;
   	private $_preu;
   	private $_accessibilitat;

   	public function __construct(){
		
   	}

	public function getTitol(){
		$var = $this->_titol;
		return $var;
	}    
	public function getDescripcio(){
		$var = $this->_descripcio;
		return $var;
	}    
	public function getPreu(){
		$var = $this->_preu;
		return $var;
	}    	
	public function getAccessibilitat(){
		$var = $this->_accessibilitat;
		return $var;
	}    
	public function getId(){
		$var = $this->_id;
		return $var;
	}
  
	public function setId($var){
		$this->_id = $var;
	}
	public function setTitol($var){
		$this->_titol = $var;
	}    
	public function setDescripcio($var){
		$this->_descripcio = $var;
	}    
	public function setPreu($var){
		$this->_preu= $var;
	}    	
	public function setAccessibilitat($var){
		$this->_accessibilitat = $var;
	}    

	public function get($nom){
		$var = $this->_{nom};
		return $var;
   	}

    public function set($nom,$parametre){
        $this->_{$nom} = $parametre;
	}
	
	public function tornaObjecte(){
		
	}

}

?>
