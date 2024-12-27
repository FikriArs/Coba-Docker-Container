<div class="container min-vh-100">
    <h5 class="my-5 text-center">Produk Milik <?php echo $this->session->userdata("nama_member") ?></h5>

    <table class="table text-center table-bordered border-dark table-hover table-striped">
        <thead>
            <tr>
                <th class="bg-secondary text-light">No</th>
                <th class="bg-secondary text-light">Produk</th>
                <th class="bg-secondary text-light">Harga</th>
                <th class="bg-secondary text-light">Berat</th>
                <th class="bg-secondary text-light">Foto</th>
                <th class="bg-secondary text-light">Opsi</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($produk as $key => $value): ?>

            <tr>
                <td><?php echo $key+1 ?></td>
                <td><?php echo $value['nama_produk'] ?></td>
                <td><?php echo $value['harga_produk'] ?></td>
                <td><?php echo $value['berat_produk'] ?></td>
                <td>
                    <img src="<?php echo $this->config->item("url_produk").$value['foto_produk'] ?>" width="200">
                </td>
                <td>
                    <a href="<?php echo base_url("seller/produk/edit/".$value["id_produk"]) ?>" class="btn btn-warning fw-semibold">Edit</a>
                    <a href="<?php echo base_url("seller/produk/hapus/".$value["id_produk"]) ?>" class="btn btn-danger fw-semibold">Hapus</a>
                </td>
            </tr>
            <?php endforeach ?>
        </tbody>
    </table>

    <a href="<?php echo base_url("seller/produk/tambah") ?>" class="btn btn-primary fw-semibold">Tambah</a>
</div>