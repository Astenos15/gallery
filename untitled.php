<?php 



class Session {
	

	private $signed_in = false;
	public $user_id;



	function __construct() {
	session_start();
	$this->check_the_login();


	}





}














?>