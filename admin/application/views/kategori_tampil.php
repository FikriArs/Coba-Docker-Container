<div class="container min-vh-100">
        <h5>Data Kategori</h5>
        <table class="table table-bordered table-hover table-striped" id="tabelku">
            <thead class="table-success text-center">
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Foto</th>
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>

            <?php foreach ($kategori as $k => $v): ?>

                <tr>
                    <td class="text-center"><?php echo $k+1; ?></td>
                    <td><?php echo $v['nama_kategori']; ?></td>
                    <td class="text-center">
                        <img src="<?php echo $this->config->item("url_kategori").$v["foto_kategori"] ?>" width="200">
                    </td>
                    <td class="text-center">
                        <a href="<?php echo base_url("kategori/edit/" .$v["id_kategori"]) ?>" class="btn btn-warning fw-semibold">Edit</a>
                        <a href="<?php echo base_url("kategori/hapus/".$v["id_kategori"]) ?>" class="btn btn-danger fw-semibold">Hapus</a>
                    </td>
                </tr>
            <?php endforeach ?>


            </tbody>
        </table>
        <a href="<?php echo base_url("kategori/tambah") ?>" class="btn btn-success fw-semibold">Tambah Data</a>
    </div>