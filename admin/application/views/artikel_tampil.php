<div class="container min-vh-100">
        <h5>Data Artikel</h5>
        <table class="table table-bordered table-hover table-striped" id="tabelku">
            <thead class="table-success text-center">
                <tr>
                    <th>No</th>
                    <th>Judul</th>
                    <th>Foto</th>
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>

            <?php foreach ($artikel as $k => $v): ?>

                <tr>
                    <td class="text-center"><?php echo $k+1; ?></td>
                    <td><?php echo $v['judul_artikel']; ?></td>
                    <td class="text-center">
                        <img src="<?php echo $this->config->item("url_artikel").$v["foto_artikel"] ?>" width="200">
                    </td>
                    <td class="text-center">
                        <a href="<?php echo base_url("artikel/edit/" .$v["id_artikel"]) ?>" class="btn btn-warning fw-semibold">Edit</a>
                        <a href="<?php echo base_url("artikel/hapus/".$v["id_artikel"]) ?>" class="btn btn-danger fw-semibold">Hapus</a>
                    </td>
                </tr>
            <?php endforeach ?>


            </tbody>
        </table>
        <a href="<?php echo base_url("artikel/tambah") ?>" class="btn btn-success fw-semibold">Tambah Data</a>
    </div>