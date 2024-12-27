<div class="container min-vh-100">
	<h5 class="my-5 text-center">Produk <?php echo $kategori["nama_kategori"] ?></h5>
	<div class="row">
		<?php foreach ($produk as $key => $value): ?>
			<div class="col-md-3">
            <a href="<?php echo base_url("produk/detail/".$value["id_produk"]) ?>" class="text-decoration-none">
				<div class="card mb-3 border-0 shadow">
					<div class="card-body text-center">
						<h6 class="mb-3"><?php echo $value['nama_produk'] ?></h6>
						<img src="<?php echo $this->config->item("url_produk").$value["foto_produk"] ?>" class="pe-4"
							width="250px" height="250px">
						<div class="mt-3">
							<span>Rp. <?php echo number_format($value['harga_produk']) ?></span>
							<div class="">
							</div>
						</div>
					</div>
				</div>
                </a>
			</div>
		<?php endforeach ?>
	</div>
</div>
