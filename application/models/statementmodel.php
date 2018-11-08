<?php
 class Statementmodel extends CI_Model {

 	public function get_sales_info() {

		$q=$this->db->get('sales_info');
		if($q->result_array()>0) {
			return $q->result(); 
		}
		else {
			return false;
		}
		
 	}


 	// for getting data used sales_id and get company or other data by using sales_id

 // 	public function getCustomer($customerid){
	// 	$this->db->where('customer_id', $customerid);
	// 	$query = $this->db->get('sales_info');
	// 	if($query->num_rows() > 0){
	// 		return $query->result_array();
	// 	}else{
	// 		return false;		
	// 	}	  		
	// }

	// public function companyInfo(){
	// 	$company_id = $this->input->get('company_id');
	// 	$this->db->where('company_id', $company_id);
	// 	$query = $this->db->get('company');
	// 	if($query->num_rows() > 0){
	// 		return $query->row();
	// 	}else{
	// 		return false;
	// 	}	  		
	// }
	// public function salesInfo(){		
	// 	$company_id = $this->input->get('company_id');
	// 	$customer_id = $this->input->get('customer_id');		
	// 	$this->db->where('company_id', $company_id);
	// 	$this->db->where('customer_id', $customer_id);
	// 	$query = $this->db->get('sales_info');
	// 	if($query->num_rows() > 0){
	// 		return $query->row();
	// 	}else{
	// 		return false;
	// 	}	  		
	// }
	// public function sales_item_details(){
	// 	$sales_id = $this->input->get('sales_id');

	// 	$this->db->where('sales_id', $sales_id);
	// 	$query = $this->db->get('sales_item_details');
	// 	if($query->num_rows() > 0){
	// 		return $query->result_array();
	// 	}else{
	// 		return false;		
	// 	}	  		
	// }
	// public function sales_transact(){
	// 	$sales_id = $this->input->get('sales_id');
		
	// 	$this->db->where('sales_id', $sales_id);
	// 	$query = $this->db->get('sales_transact');
	// 	if($query->num_rows() > 0){
	// 		return $query->result_array();
	// 	}else{
	// 		return false;		
	// 	}	  		
	// }
	//$company_id = $this->input->get('company_id');
		

}