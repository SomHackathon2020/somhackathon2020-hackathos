<?php
class FrontController extends Controller{
    protected $_usermodel;
    protected $_userController;
    protected $_errors;
    protected $_user;

   	public function __construct(){
        $this->_user = new User();
        $this->_userController = new UserController($this->_user);
        $this->_userController->setConf($this->_conf);
        $this->_usermodel = new UserModel();
        $this->_errors["front"]= "";
   	}

    public function getController(){
        $var = $this->_userController;
      	return $var;
   	}
    
    public function getUModel(){
        $var = $this->_usermodel;
      	return $var;
    }
       
    public function post(){
        //comprovacions POST
        if(($_SERVER['REQUEST_METHOD']) == 'POST' && isset($_POST["submit"])){
            if($_POST["submit"]=="registre"){
                //echo "hello";
                $array = $this->_userController->registre();
                $this->_errors = array_merge($this->_errors, $array);
                echo $this->_errors["user"]["numerrors"];
                if($array["user"]["numerrors"] == 0){
                    $this->_usermodel->saveUser($this->_user);
                    $textguardar = $this->_usermodel->errors();
                    $this->_errors = array_merge($this->_errors, $textguardar);
                }
            }else if($_POST["submit"]=="login"){
                $this->_user = $this->_usermodel->getUser($_POST["email"],$_POST["pass"]);
                $errorsinici = $this->_usermodel->errors();
                $this->_errors = array_merge($this->_errors, $errorsinici);
            }

        }
    }
    
    public function get(){

    }

}

?>
