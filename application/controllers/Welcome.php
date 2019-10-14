<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
//	{
//        $data['kategori']= $this->Kategori_model->get_all_kategori();
//		$this->load->view('index');
//	}
//        public function deliveri_info()
//        {
//            $this->load->view('deliveri_info');
//        }
//         public function bmx_info()
        {
            $data['kategori'] = $this->crud->select('kategori')->result();
             $data['brand'] = $this->crud->select('brand')->result();
            $this->load->view('index',$data);
        }
        public function deliveri_info(){
            $this->load->view('deliveri_info');
        }
}
