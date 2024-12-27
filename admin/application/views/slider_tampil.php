<div class="container min-vh-100">
        <h5>Data Slider</h5>
        <table class="table table-bordered table-hover table-striped" id="tabelku">
            <thead class="table-success text-center">
                <tr>
                    <th>No</th>
                    <th>Caption</th>
                    <th>Foto</th>
                    <th>Opsi</th>
                </tr>
            </thead>
            <tbody>

            <?php foreach ($slider as $k => $v): ?>

                <tr>
                    <td class="text-center"><?php echo $k+1; ?></td>
                    <td><?php echo $v['caption_slider']; ?></td>
                    <td class="text-center">
                        <img src="<?php echo $this->config->item("url_slider").$v["foto_slider"] ?>" width="200">
                    </td>
                    <td class="text-center">
                        <a href="<?php echo base_url("slider/edit/" .$v["id_slider"]) ?>" class="btn btn-warning fw-semibold">Edit</a>
                        <a href="<?php echo base_url("slider/hapus/".$v["id_slider"]) ?>" class="btn btn-danger fw-semibold">Hapus</a>
                    </td>
                </tr>
            <?php endforeach ?>


            </tbody>
        </table>
        <a href="<?php echo base_url("slider/tambah") ?>" class="btn btn-success fw-semibold">Tambah Data</a>
    </div>