<style>
	.stars a {
		display: inline-block;
		padding-right: 4px;
		text-decoration: none;
		margin: 0;
	}

	.stars a:after {
		position: relative;
		font-size: 18px;
		font-family: 'FontAwesome', serif;
		display: block;
		content: "\f005";
		color: #9e9e9e;
	}

	span {
		font-size: 0;
		/* trick to remove inline-element's margin */
	}

	.stars a:hover~a:after {
		color: #9e9e9e !important;
	}

	span.active a.active~a:after {
		color: #9e9e9e;
	}

	span:hover a:after {
		color: blue !important;
	}

	span.active a:after,
	.stars a.active:after {
		color: blue;
	}

</style>

<div class="container min-vh-100">
	<div class="row my-5">
		<div class="col-md-3">
			<h5>Transaksi</h5>
			<p><b>ID Transaksi:</b> <?php echo $transaksi['id_transaksi'] ?></p>
			<p><b>Tanggal Transaksi:</b> <?php echo date('d M Y H:i', strtotime($transaksi['tanggal_transaksi'])) ?></p>
			<?php if ($transaksi['status_transaksi']=="lunas"): ?>
			<span class="badge bg-success fw-semibold">
				<?php echo $transaksi['status_transaksi'] ?>
			</span>
			<?php endif ?>
			<?php if ($transaksi['status_transaksi']=="pesan"): ?>
			<span class="badge bg-primary fw-semibold">
				<?php echo $transaksi['status_transaksi'] ?>
			</span>
			<?php endif ?>
		</div>
		<div class="col-md-3">
			<h5>Pengirim</h5>
			<p><b>Pengirim:</b> <?php echo $transaksi['nama_pengirim'] ?></p>
			<p><b>Toko:</b>
				<span class="badge bg-warning">
					<?php echo $transaksi['nama_toko_pengirim'] ?>
				</span>
			</p>
			<p><b>WhatsApp:</b> <?php echo $transaksi['wa_pengirim'] ?></p>
			<p><b>Alamat Toko:</b> <?php echo $transaksi['alamat_pengirim'] ?>,
				<?php echo $transaksi['distrik_pengirim'] ?></p>
		</div>
		<div class="col-md-3">
			<h5>Penerima</h5>
			<p><b>Penerima:</b> <?php echo $transaksi['nama_penerima'] ?></p>
			<p><b>WhatsApp:</b> <?php echo $transaksi['wa_penerima'] ?></p>
			<p><b>Alamat Penerima:</b> <?php echo $transaksi['alamat_penerima'] ?>,
				<?php echo $transaksi['distrik_penerima'] ?></p>
		</div>
		<div class="col-md-3">
			<h5>Ekspedisi</h5>
			<p><b>Kurir:</b> <?php echo $transaksi['nama_ekspedisi'] ?>, <?php echo $transaksi['layanan_ekspedisi'] ?>
			</p>
			<p><b>Harga Estimasi:</b> <?php echo $transaksi['estimasi_ekspedisi'] ?></p>
			<p><b>Berat Paket:</b> <?php echo $transaksi['berat_ekspedisi'] ?> Gram</p>
			<h6>Nomor Resi: <?php echo $transaksi["resi_ekspedisi"] ?></h6>
		</div>
	</div>

	<h5>Produk</h5>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Produk</th>
				<th>Harga</th>
				<th>Jumlah</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>

			<?php foreach ($transaksi_detail as $key => $value): ?>

			<tr>
				<td><?php echo $value["nama_beli"] ?></td>
				<td><?php echo number_format($value["harga_beli"]) ?></td>
				<td><?php echo number_format($value["jumlah_beli"]) ?></td>
				<td><?php echo number_format($value["harga_beli"] * $value["jumlah_beli"]) ?></td>
			</tr>
			<?php endforeach ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3">Total Belanja</td>
				<th><?php echo number_format($transaksi["belanja_transaksi"]) ?></th>
			</tr>
			<tr>
				<td colspan="3">Ongkos Kirim</td>
				<th><?php echo number_format($transaksi["ongkir_transaksi"]) ?></th>
			</tr>
			<tr>
				<td colspan="3">Total Harus Dibayar</td>
				<th><?php echo number_format($transaksi["total_transaksi"]) ?></th>
			</tr>
		</tfoot>
	</table>

	<?php if($transaksi['status_transaksi']=="lunas"): ?>
	<form method="post">
		<div class="container">
			<h6 class="mt-5 mb-3">Ulasan Dari Pemebeli</h6>
			<?php $belumdiisi=0; ?>
			<?php foreach ($transaksi_detail as $k => $v): ?>
			<?php if(empty ($v['jumlah_rating'])): ?>
			<?php $belumdiisi++; ?>
			<div class="mb-2">
				<h6><?php echo $v['nama_beli'] ?></h6>
				<p class="stars" k="<?php echo $k ?>">
					<span k="<?php echo $k ?>">
						<a k="<?php echo $k ?>" class="star-1" href="#">1</a>
						<a k="<?php echo $k ?>" class="star-2" href="#">2</a>
						<a k="<?php echo $k ?>" class="star-3" href="#">3</a>
						<a k="<?php echo $k ?>" class="star-4" href="#">4</a>
						<a k="<?php echo $k ?>" class="star-5" href="#">5</a>
					</span>
				</p>
				<input type="hidden" name="id_transaksi_detail[]" value="<?php echo $v["id_transaksi_detail"] ?>">
				<input type="hidden" class="jumlah_rating" name="jumlah_rating[]" k="<?php echo $k ?>">
				<textarea class="form-control" name="ulasan_rating[]"></textarea>
			</div>
			<hr>
			<?php endif ?>

			<?php if(!empty ($v['jumlah_rating'])): ?>
			<h6><?php echo $v['nama_beli'] ?></h6>
			<?php foreach (range(1, $v['jumlah_rating']) as $key => $jumlah): ?>
			<i class="bi bi-star-fill text-warning"></i>
			<?php endforeach ?>
			<div class="bg-light small text-muted">
				<?php echo $v['ulasan_rating'] ?>
			</div>
			<hr>
			<?php endif ?>
			<?php endforeach ?>
		</div>
	</form>
	<?php endif ?>
</div>

	<script>
		$('.stars a').on('click', function (e) {
			e.preventDefault();
			k = $(this).attr("k");
			$('.stars span[k="' + k + '"], .stars a[k="' + k + '"]').removeClass('active');
			$(this).addClass('active');
			$('.stars span[k="' + k + '"]').addClass('active');
			$('.jumlah_rating[k="' + k + '"]').val($(this).text());
		});
	</script>
