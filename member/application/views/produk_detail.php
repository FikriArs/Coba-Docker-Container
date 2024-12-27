<div class="container min-vh-100">
	<div class="row my-5">
		<div class="col-md-6">
			<img src="<?php echo $this->config->item("url_produk").$produk["foto_produk"] ?>" class="rounded-4"
				height="250px">
		</div>
		<div class="col-md-6">
			<h1><?php echo $produk["nama_produk"] ?></h1>
			<p>
				Kategori Produk: <span class="badge bg-secondary"><?php echo $produk["nama_kategori"] ?></span>
			</p>
			<p>
				Nama Toko: <span class="badge bg-secondary"><?php echo $produk["nama_toko"] ?></span>
			</p>
			<p>
				Lokasi Toko: <span class="badge bg-secondary"><?php echo $produk["nama_distrik_member"] ?></span>
			</p>
			<p class="lead"><?php echo number_format($produk["harga_produk"]) ?></p>

			<?php if($produk["id_member"] !== $this->session->userdata("id_member")): ?>
			<form class="my-2" method="post">
				<div class="input-group">
					<input type="number" class="form-control" name="jumlah" min="1">
					<button class="btn btn-primary">Beli</button>
				</div>
			</form>
			<?php endif ?>

			<p><?php echo $produk["deskripsi_produk"] ?></p>
		</div>
	</div>
</div>
