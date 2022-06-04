<h3>Detail Tabungan Anggota</h3>
<br>
<?php	
$data = mysqli_query ($koneksi, " SELECT  * FROM siswa WHERE id_siswa = $_GET[id]");
$row = mysqli_fetch_array ($data);
?>
<p>
	<a class="btn btn-success" href="tabungan.html">Kembali</a>
	<a href="cetak-<?php echo $row['id_siswa'] ; ?>.html" class="btn btn-info">Cetak</a>
</p>
			<table class="table">
				<tr>
					<td style="width:10%;">
						Nama 
					</td>
					<td>
						: <?php echo $row['nama']; ?>
					</td>
				</tr>
				<tr>		
					<td>
						Alamat
					</td>
					<td>
						: <?php echo $row['alamat'] ; ?>
					</td>
				</tr>
			</table>
			<br>
			<table class="table table-striped">
					<tr>
						<th>
							No
						</th>
						<th>
							Tanggal
						</th>
						<th>
							Setoran
						</th>
						<th>
							Penarikan
						</th>
						<th>
							Saldo
						</th>
						<th>
							Aksi
						</th>
					</tr>

					<?php 
						$no = 1;
							$data = mysqli_query ($koneksi, " SELECT  *
																	  FROM 
																	  tabungan
																	  WHERE
																	  id_siswa = $_GET[id]
																	  order by id_tabungan asc");
							while ($rw = mysqli_fetch_array ($data))
							
						{
					?>
					<tr>
						<td>
							<?php echo $no ; ?>
						</td>
						<td>

							<?php echo date('d-m-Y', strtotime(($rw['tanggal']))) ; ?>
						</td>
						<td>
							<?php if ($rw['setoran'] == '') {} else { echo "Rp. ".format_rupiah($rw['setoran']) ;} ?>
						</td>
						<td>
							<?php if ($rw['penarikan'] == '') {} else { echo "Rp. ".format_rupiah($rw['penarikan']) ;} ?>
						</td>
						<td>
							<?php if ($rw['saldo'] == '') {} else { echo "Rp. ".format_rupiah($rw['saldo']) ;} ?>
						</td>
						<td><a href="<?= 'edit_detail.php?id='.$row['id_siswa'] ?>"><button class="btn btn-danger"><i class="material-icons"></i>Edit</button></a>
					</tr>
					<?php
					$no++;
						}
					?>
				</table>
