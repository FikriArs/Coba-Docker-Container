<style>
	.table-hover tbody tr:hover td,
	.table-hover tbody tr:hover th {
		background-color: #9FA6B2;
        color: white;
	}

    .btn-outline-warning:hover{
        color: white;
    }

</style>

<div class="container min-vh-100">
	<h5 class="my-3 text-center">Data Transaksi Pembelian <?php echo $this->session->userdata("nama_member") ?></h5>
	<table class="table table-bordered table-hover table-striped" id="tabelku">
		<thead>
			<tr class="table-active">
				<th class="text-center">No</th>
				<th class="text-center">Tanggal</th>
				<th class="text-center">Total</th>
				<th class="text-center">Status</th>
				<th class="text-center">Opsi</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($transaksi as $key => $value): ?>
			<tr>
				<td class="text-center"><?php echo $key+1 ?></td>
				<td class="text-center"><?php echo date('d M Y H:i', strtotime($value['tanggal_transaksi'])) ?></td>
				<td class="text-center"><?php echo number_format($value['total_transaksi']) ?></td>
				<td class="text-center">
					<?php if ($value['status_transaksi']=="lunas"): ?>
					<span class="badge bg-success fw-semibold">
						<?php echo $value['status_transaksi'] ?>
					</span>
					<?php endif ?>
					<?php if ($value['status_transaksi']=="pesan"): ?>
					<span class="badge bg-primary fw-semibold">
						<?php echo $value['status_transaksi'] ?>
					</span>
					<?php endif ?>
					<h6 class="pt-3">Resi: <?php echo $value["resi_ekspedisi"] ?></h6>
				</td>
				<td class="text-center">
					<a href="<?php echo base_url("transaksi/detail/".$value["id_transaksi"]) ?>"
						class="btn btn-outline-warning fw-semibold">Detail</a>
				</td>
			</tr>
			<?php endforeach ?>
		</tbody>
	</table>
</div>
