<div class="container min-vh-100">
	
	<div class="my-3">
		<table class="table table-sm table-bordered border-dark">
            <thead>
				<tr class="text-center">
					<th class="bg-secondary text-light">Gambar</th>
					<th class="bg-secondary text-light">Nama Produk</th>
					<th class="bg-secondary text-light">Harga</th>
					<th class="bg-secondary text-light">Jumlah</th>
					<th class="bg-secondary text-light">Aksi</th>
					<th class="bg-secondary text-light">Checkout</th>
				</tr>
			</thead>
			<tbody>
			<h5 class="my-3 text-center">Keranjang Milik <?php echo $this->session->userdata("nama_member") ?></h5>
            <?php foreach ($keranjang as $key => $per_penjual): ?>
				<?php foreach ($per_penjual['produk'] as $k => $per_produk): ?>
				<tr>
					<td class="text-center">
						<img src="<?php echo $this->config->item("url_produk").$per_produk["foto_produk"] ?>" class="p-3"
							width="200">
					</td>
					<td>
						<p class="text-center pt-3"><?php echo $per_produk['nama_produk'] ?></p>
					</td>
					<td class="text-center pt-3">Rp <?php echo number_format($per_produk['harga_produk']) ?></td>
					<td class="text-center pt-3"><?php echo $per_produk['jumlah'] ?></td>
					<td class="text-center pt-3">
						<a href="<?php echo base_url("keranjang/hapus/".$per_produk["id_keranjang"]) ?>"
							class="btn btn-danger btn-sm fw-bold">Hapus</a>
					</td>
					<td class="text-center pt-3">
						<a href="<?php echo base_url("keranjang/checkout/".$per_produk["id_produk"]) ?>"
							class="btn btn-primary fw-bold">Checkout</a>
					</td>
				</tr>
				<?php endforeach ?>
            <?php endforeach ?>
			</tbody>
		</table>
	</div>
</div>
