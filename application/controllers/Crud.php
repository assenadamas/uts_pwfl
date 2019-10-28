<?php 
 
class Crud extends CI_Controller{
 
	function __construct(){
		parent::__construct();		
		$this->load->model('m_data');
        $this->load->helper('url');
	}
 
	function index(){
		$data['data_mahasiswa'] = $this->m_data->tampil_data()->result();
		$this->load->view('v_tampil',$data);
	}

	function tambah(){
		$this->load->view('v_input');
	}

	function tambah_aksi(){
		$nim = $this->input->post('nim');
		$nama = $this->input->post('nama');
		$jenis_kelamin = $this->input->post('jenis_kelamin');
		$hp = $this->input->post('hp');
		$alamat = $this->input->post('alamat');
 
		$data = array(
			'nim' => $nim,
			'nama' => $nama,
			'jenis_kelamin' => $jenis_kelamin,
			'hp' => $hp,
			'alamat' => $alamat
			);
		$this->m_data->input_data($data,'data_mahasiswa');
		redirect('crud/index');
	}

	function hapus($id){
		$where = array('id' => $id);
		$this->m_data->hapus_data($where,'data_mahasiswa');
		redirect('crud/index');
	}

	function edit($id){
		$where = array('id' => $id);
		$data['data_mahasiswa'] = $this->m_data->edit_data($where,'data_mahasiswa')->result();
		$this->load->view('v_edit',$data);
	}

	function update(){
	$id = $this->input->post('id');
	$nim = $this->input->post('nim');
	$nama = $this->input->post('nama');
	$jenis_kelamin = $this->input->post('jenis_kelamin');
	$hp = $this->input->post('hp');
	$alamat = $this->input->post('alamat');
 
	$data = array(
		'nim' => $nim,
		'nama' => $nama,
		'jenis_kelamin' => $jenis_kelamin,
		'hp' => $hp,
		'alamat' => $alamat
	);
 
	$where = array(
		'id' => $id
	);
 
	$this->m_data->update_data($where,$data,'data_mahasiswa');
	redirect('crud/index');
	}

}