<!DOCTYPE html>
<html>
<head>
	<title>UTS CRUD dengan CodeIgniter | AssenaDamas.online</title>
</head>
<body>
	<center>
		<h1>Membuat CRUD dengan CodeIgniter | AssenaDamas.online</h1>
		<h3>Tambah data baru</h3>
	</center>
	<form action="<?php echo base_url(). 'crud/tambah_aksi'; ?>" method="post">
		<table style="margin:20px auto;">
			<tr>
				<td>NIM</td>
				<td><input type="text" name="nim"></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><input type="text" name="nama"></td>
			</tr>
			<tr>
				<td>Jenis Kelamin</td>
				<td><input type="text" name="jenis_kelamin"></td>
			</tr>
			<tr>
				<td>No Telepon</td>
				<td><input type="text" name="hp"></td>
			</tr>
			<tr>
				<td>Alamat</td>
				<td><input type="text" name="alamat"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Tambah"></td>
			</tr>
		</table>
	</form>	
</body>
</html>