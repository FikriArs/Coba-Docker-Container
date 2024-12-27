<?php
class Keranjang extends CI_Controller {

    function __construct()
    {
        parent::__construct();

        // Jika tidak ada id_member di session, redirect ke halaman login
        if (!$this->session->userdata("id_member")) {
            redirect('/','refresh');
        }
    }

    public function index(){
        $this->load->model('Mkeranjang');
        $data["keranjang"] = $this->Mkeranjang->tampil();

        $this->load->view('header');
        $this->load->view('keranjang', $data);
        $this->load->view('footer');
    }
    
    public function hapus($id_keranjang) {
        $this->load->model('Mkeranjang');
        $this->Mkeranjang->hapus($id_keranjang);

        $this->session->set_flashdata('pesan_sukses', 'Produk telah dihapus dari keranjang');
        redirect('keranjang', 'refresh');
    }

    function checkout($id_produk) {
        $this->load->model('Mkeranjang');
        $this->load->model('Mmember');
        $this->load->model('Mongkir');
    
        $data['keranjang'] = $this->Mkeranjang->tampil_produk($id_produk);
        $id_member_jual = $data['keranjang']['id_member_jual'];
    
        $totalberat = $data['keranjang']['jumlah'] * $data['keranjang']['berat_produk'];
    
        $data["member_jual"] = $this->Mmember->detail($id_member_jual); // Mengambil detail member yang menjual
        $id_member_beli = $this->session->userdata("id_member");
        $data["member_beli"] = $this->Mmember->detail($id_member_beli); // Mengambil detail member yang membeli
    
        $origin = $data['member_jual']['kode_distrik_member'];
        $destination = $data['member_beli']['kode_distrik_member'];
        $data['biaya'] = $this->Mongkir->biaya($origin, $destination, $totalberat);
    
        $this->form_validation->set_rules("ongkir", "Ongkir", "required");
        $this->form_validation->set_rules("required", '%s wajib diisi');
        if ($this->form_validation->run() == TRUE) {
            $ongkir = $this->input->post("ongkir");
            $ongkirterpilih = $data['biaya']['costs'][$ongkir];
            $id_transaksi = $this->Mkeranjang->checkout([$data['keranjang']], $data['member_jual'], $data['member_beli'], $data['biaya']['name'], $ongkirterpilih);
    
            $this->session->set_flashdata('pesan_sukses', 'Transaksi telah dibuat');
            redirect('transaksi/detail/' . $id_transaksi, 'refresh');
        }
    
        $this->load->view('header');
        $this->load->view('checkout', $data);
        $this->load->view('footer');
    }
    
}
?>
