<div class="container">
    <h5 class="my-3 text-center">Tambah Produk</h5>
    <form method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="fw-semibold">Kategori</label>
            <select class="form-control form-select" name="id_kategori">
                <option value="">Pilih</option>
                <?php foreach ($kategori as $key => $value): ?>

                <option value="<?php echo $value['id_kategori'] ?>">
                <?php echo $value['nama_kategori'] ?>
                </option>
                <?php endforeach ?>
        </select>
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Nama</label>
            <input type="text" name="nama_produk" class="form-control">
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Harga</label>
            <input type="number" name="harga_produk" class="form-control">
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Berat</label>
            <input type="number" name="berat_produk" class="form-control">
            <span class="text-muted small">Gram</span>
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Foto</label>
            <input type="file" name="foto_produk" class="form-control">
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Deskripsi Produk</label>
            <textarea name="deskripsi_produk" id="editorku" class="form-control"><?php echo set_value("deskripsi_produk") ?></textarea>
            <span class="small text-danger">
                <?php echo form_error("deskripsi_produk") ?>
            </span>
        </div>
        <button class="btn btn-primary">Simpan</button>
    </form>
</div>