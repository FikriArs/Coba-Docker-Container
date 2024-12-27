<div class="container min-vh-100">
    <h5>Data Produk</h5>

    <table class="table table-bordered table-hover table-striped" id="tabelku">
        <thead class="table-success text-center">
            <tr>
                <th>No</th>
                <th>Nama Produk</th>
                <th>Harga</th>
                <th>Foto</th>
                <th>Opsi</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($produk as $key => $value): ?>
            <tr>
                <td class="text-center"><?php echo $key+1 ?></td>
                <td><?php echo $value['nama_produk']; ?></td>
                <td class="text-center"><?php echo $value['harga_produk']; ?></td>
                <td class="text-center">
                    <img src="<?php echo $this->config->item("url_produk"). $value['foto_produk']; ?>" width="100px" height="100px">

                </td>
                <td class="text-center">
                    <a href="" class="btn btn-info fw-semibold">Detail</a>
                </td>
            </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>