<div class="container min-vh-100">
    <h3 class="my-3 text-center">Checkout</h3>

    <table class="table">
        <thead>
            <tr>
                <th class="bg-secondary text-light">Foto Produk</th>
                <th class="bg-secondary text-light text-center">Nama Produk</th>
                <th class="bg-secondary text-light text-center">Harga</th>
                <th class="bg-secondary text-light text-center">Jumlah Beli</th>
                <th class="bg-secondary text-light text-center">Total Harga</th>
            </tr>
        </thead>
        <tbody>
            <?php if (isset($keranjang) && is_array($keranjang)): ?>
                <?php $total = 0; ?>
                <?php $subtotal = $keranjang['jumlah'] * $keranjang['harga_produk']; ?>
                <?php $total += $subtotal; ?>
                <tr>
                    <td>
                        <img src="<?php echo $this->config->item("url_produk") . $keranjang["foto_produk"] ?>" width="100">
                        <br>
                    </td>
                    <td class="text-center"><?php echo $keranjang['nama_produk'] ?></td>
                    <td class="text-center">Rp <?php echo number_format($keranjang['harga_produk']) ?></td>
                    <td class="text-center"><?php echo $keranjang['jumlah'] ?></td>
                    <td class="text-center">Rp <?php echo number_format($subtotal) ?></td>
                </tr>
            <?php else: ?>
                <tr>
                    <td colspan="5" class="text-center">Keranjang kosong</td>
                </tr>
            <?php endif; ?>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="4">Total Bayar</th>
                <th class="fw-bold text-center">Rp <?php echo number_format($total) ?></th>
            </tr>
        </tfoot>
    </table>

    <div class="row mt-5">
        <div class="col-md-4">
            <h4>Dikirim oleh</h4>
            <span><?php echo $member_jual["nama_member"] ?></span>
            <h6><?php echo $member_jual["nama_distrik_member"] ?></h6>
            <h6><?php echo $member_jual["nama_toko"] ?></h6>
            <span><?php echo $member_jual["alamat_member"] ?></span>
        </div>
        <div class="col-md-4">
            <h4>Diterima oleh</h4>
            <span><?php echo $member_beli["nama_member"] ?></span>
            <h6><?php echo $member_beli["nama_distrik_member"] ?></h6>
            <span><?php echo $member_beli["alamat_member"] ?></span>
            <h6><?php echo $member_beli["wa_member"] ?></h6>
        </div>
        <div class="col-md-4">
            <h4>Pengiriman</h4>
            <form method="post">
                <select class="form-control mb-3" name="ongkir" required>
                    <option value="">Pilih</option>
                    <?php foreach ($biaya['costs'] as $key => $value): ?>
                        <option value="<?php echo $key ?>">
                            <?php echo $value['description']?>
                            <?php echo $value['cost'][0]['value']?>
                            <?php echo $value['cost'][0]['etd']?>
                        </option>
                    <?php endforeach ?>
                </select>
                <div class="text-muted text-danger"><?php echo form_error("ongkir") ?> </div>
                <button class="btn btn-primary">Checkout</button>
            </form>
        </div>
    </div>
</div>
