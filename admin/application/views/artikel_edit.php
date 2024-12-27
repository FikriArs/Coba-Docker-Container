<div class="container">
    <h5>Edit Artikel</h5>

    <form method="post" enctype="multipart/form-data">
    <div class="mb-3">
            <label class="fw-semibold">Judul Artikel</label>
            <input type="text" name="judul_artikel" class="form-control" value="<?php echo set_value("judul_artikel", $artikel['judul_artikel']); ?>">

            <span class="small text-danger">
                <?php echo form_error("judul_artikel") ?>
            </span>
        </div>
    <div class="mb-3">
            <label class="fw-semibold">isi artikel Baru</label>
            <input type="text" id="editorku" name="isi_artikel" class="form-control" value="">
            <label class="fw-semibold mt-3">Isi Artikel Lama</label><hr>
            <textarea class="form-control" name="isi_artikel"><?php echo set_value("caption_artikel",$artikel['isi_artikel']) ?> </textarea>
            <span class="text-danger small">
                <?php echo form_error("caption_artikel") ?>
            </span>
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Foto Lama</label><hr>
            <img src="<?php echo $this->config->item("url_artikel").$artikel["foto_artikel"] ?>" width="300">
        </div>
        <div class="mb-3">
            <label class="fw-semibold">Ganti Foto artikel</label>
            <input type="file" name="foto_artikel" class="form-control">
        </div>
        <button type="submit" class="btn btn-success fw-semibold">Simpan</button>
    </form>
</div>