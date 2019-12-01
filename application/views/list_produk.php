<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><?php echo $page_title ?></h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Tabel Data <?php echo $page_title ?>
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<table width="100%" class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>Nama Produk</th>
							<th>Kategori</th>
							<th>Harga</th>
							<th>Deskripsi</th>
							<th>Tanggal Post</th>
							<th>Opsi</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($data_table as $key => $value) { ?>
						<tr <?php echo $key%2==0?'class="even gradeC"':'class="odd gradeX"' ?> >
							<td><?php echo $value->nama_produk ?></td>
							<td><?php echo $value->nama_kategori ?></td>
							<td><?php echo number_format($value->harga,0,',','.') ?></td>
							<td><?php echo $value->deskripsi_produk ?></td>
							<td><?php echo date("d-M-Y", strtotime($value->tanggal_post)) ?></td>
							<td>
								<a href="<?php echo base_url('produk/detail/'.$value->id_produk) ?>">Detail</a> |
								<a href="<?php echo base_url('produk/ubah/'.$value->id_produk) ?>">Ubah</a> |
								<a onclick="return confirm('Yakin Menghapus Data?')" href="<?php echo base_url('produk/hapus/'.$value->id_produk) ?>">Hapus</a>
							</td>
						</tr>
						<?php } ?>
					</tbody>
				</table>
				<!-- /.table-responsive -->
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>