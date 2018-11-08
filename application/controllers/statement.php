<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Statement extends CI_Controller {
	function __construct(){
		parent:: __construct();
		$this->load->model('statementmodel','statementmodel');
	}

	public function index() {	
		$data['records'] = $this->statementmodel->get_sales_info();	

		$this->load->view('statement/statement',$data);	

	}







}