<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produk_model extends CI_Model {

	public function tampil_all()
	{
		$this->db->select('produk.*, kategori.nama_kategori');
		$this->db->from('produk');
		$this->db->join('kategori', 'kategori.id_kategori = produk.id_kategori', 'left');
		return $this->db->get();
	}

}
/* End of file Produk_model.php */
/* Location: ./application/third_party/Produk_model.php */
?>