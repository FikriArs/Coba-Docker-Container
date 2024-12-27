<div class="container min-vh-100">
    <h5>Tambah Kategori</h5>

    <form method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="fw-semibold">Nama Kategori</label>
            <input type="text" name="nama_kategori" class="form-control" value="<?php echo set_value("nama_kategori") ?>">
            <span class="small text-danger">
                <?php echo form_error("nama_kategori") ?>
            </span>
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Foto Kategori</label>
            <input type="file" name="foto_kategori" class="form-control">
        </div>
        <button type="submit" class="btn btn-success fw-semibold">Simpan</button>
    </form>
</div>