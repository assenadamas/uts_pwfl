<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Produk_model');
	}

	public function index()
	{
		$data_table = $this->Produk_model->tampil_all();
		$data = array(
			'page_title' => 'Produk',
			'data_table' => $data_table->result(),
			'page_konten' => 'produk/list_produk'
		);

		$this->load->view('template_base', $data);
	}

}

/* End of file Produk.php */
/* Location: ./application/controllers/Produk.php */
?>