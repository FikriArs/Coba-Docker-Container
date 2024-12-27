<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Seller Dashboard</title>
	<link rel=" shortcut icon" href="<?php echo $this->config->item('url_assets')."admin.png"; ?>" type="image/png">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

	<nav class="navbar navbar-expand-lg bg-success-subtle text-success-emphasis fw-semibold mb-3 sticky-top">
		<div class="container">
			<a href="" class="navbar-brand">Admin</a>
			<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#naff">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="naff">
				<ul class="navbar-nav me-auto">
					<li class="nav-item">
						<a href="<?php echo base_url("home") ?>" class="nav-link">Home</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo base_url("artikel") ?>" class="nav-link">Artikel</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo base_url("slider") ?>" class="nav-link">Slider</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo base_url("kategori") ?>" class="nav-link">Kategori</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo base_url("produk") ?>" class="nav-link">Produk</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo base_url("member") ?>" class="nav-link">Member</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo base_url("transaksi") ?>" class="nav-link">Transaksi</a>
					</li>

				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item">
						<a href="<?Php echo base_url("akun") ?>" class="nav-link ">
							<?php echo $this->session->userdata("nama") ?>
						</a>
					</li>
					<li class="nav-item">
						<a href="<?php echo base_url("logout") ?>" class="nav-link">Logout</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
