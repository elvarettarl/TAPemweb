<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_produk');
		$this->load->model('m_kategori');
	}
	
	public function jaket()
	{
		$data['produk']=$this->m_produk->ambiljaket();
		$data['content']="v_kat_jaket";
		$this->load->view('template', $data);
	}

	public function kaos()
	{
		$data['produk']=$this->m_produk->ambilkaos();
		$data['content']="v_kat_kaos";
		$this->load->view('template', $data);
	}

	public function kemeja()
	{
		// var_dump(count($this->cart->contents()));die;
		$data['produk']=$this->m_produk->ambilkemeja();
		$data['content']="v_kat_kemeja";
		$this->load->view('template', $data);
	}

	public function celana()
	{
		$data['produk']=$this->m_produk->ambilcelana();
		$data['content']="v_kat_celana";
		$this->load->view('template', $data);
	}
	public function tambah(){
		$this->m_kategori->tambah();
		redirect('tabel/kategori');
	}

	public function tampil_kategori($id_kategori=''){
		$data_tampil = $this->m_kategori->tampil_kategori($id_kategori);
		echo json_encode($data_tampil);
	}
	
	public function ubah(){
		$this->m_kategori->ubah();
		redirect('tabel/kategori');
	}

	public function hapus($id_kategori){
		$this->m_kategori->hapus($id_kategori);
		redirect('tabel/kategori');
	}
}