<!DOCTYPE html>
<html>
<head>
	<title>UTS CRUD dengan CodeIgniter | AssenaDamas.online</title>
</head>
<body>
	<center><h1>Membuat CRUD dengan CodeIgniter | AssenaDamas.online</h1></center>
	<center><?php echo anchor('crud/tambah','Tambah Data'); ?></center>
	<table style="margin:20px auto;" border="1">
		<tr>
			<th>No</th>
			<th>NIM</th>
			<th>Nama</th>
			<th>Jenis Kelamin</th>
			<th>No Telepon</th>
			<th>Alamat</th>
			<th>Action</th>
		</tr>
		<?php 
		$no = 1;
		foreach($user as $u){ 
		?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $u->nim ?></td>
			<td><?php echo $u->nama ?></td>
			<td><?php echo $u->jenis_kelamin ?></td>
			<td><?php echo $u->hp ?></td>
			<td><?php echo $u->alamat ?></td>
			<td>
			      <?php echo anchor('crud/edit/'.$u->id,'Edit'); ?>
                  <?php echo anchor('crud/hapus/'.$u->id,'Hapus'); ?>
			</td>
		</tr>
		<?php } ?>
	</table>
</body>
</html>