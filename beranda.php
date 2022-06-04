			<?php
				//session_start();
				include"koneksi.php";
				$siswa = mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM siswa"));
				//echo $siswa;

				$tabungan = mysqli_num_rows(mysqli_query($koneksi, "SELECT *, COUNT( * ) AS total FROM tabungan GROUP BY id_siswa"));
				//echo $tabungan;

				$uang = mysqli_query ($koneksi, " select  tabungan.id_tabungan,
																  tabungan.setoran,
																  tabungan.penarikan,
																  sum(tabungan.penarikan) as jumlah_penarikan,
																  sum(tabungan.setoran) as jumlah_setoran
																  from 
																  tabungan");
				$row = mysqli_fetch_array ($uang);
			?>



			<div class="row">
                <!-- fix for small devices only -->
                <div class="clearfix visible-sm-block"></div>
                <!-- /.col -->

                <div class="col-lg-3 col-xs-6">
		          <!-- small box -->
		          <div class="small-box bg-yellow">
		            <div class="inner">
		              <h3><?php echo $siswa; ?></h3>

		              <p>Jumlah Anggota</p>
		            </div>
		            <div class="icon">
		              <i class="ion ion-person"></i>
		            </div>
		            <a href="siswa.html" class="small-box-footer">
		              Lihat Selengkapnya <i class="fa fa-arrow-circle-right"></i>
		            </a>
		          </div>
		        </div>

		        <div class="col-lg-3 col-xs-6">
		          <!-- small box -->
		          <div class="small-box bg-blue">
		            <div class="inner">
		              <h3><?php echo $tabungan; ?></h3>

		              <p>Jumlah Tabungan</p>
		            </div>
		            <div class="icon">
		              <i class="ion ion-ios-book"></i>
		            </div>
		            <a href="tabungan.html" class="small-box-footer">
		              Lihat Selengkapnya <i class="fa fa-arrow-circle-right"></i>
		            </a>
		          </div>
		        </div>
		        <div class="col-lg-3 col-xs-6">
		          <!-- small box -->
		          <div class="small-box bg-green">
		            <div class="inner">
		              <h3>Rp. <?php echo format_rupiah($row['jumlah_setoran']); ?></h3>

		              <p>Jumlah Setoran</p>
		            </div>
		            <div class="icon">
		              <i class="ion ion-ios-cash"></i>
		            </div>
		            <a href="tabungan.html" class="small-box-footer">
		              Lihat Selengkapnya <i class="fa fa-arrow-circle-right"></i>
		            </a>
		          </div>
		        </div>
		        <div class="col-lg-3 col-xs-6">
		          <!-- small box -->
		          <div class="small-box bg-green">
		            <div class="inner">
		              <h3>Rp. <?php echo format_rupiah($row['jumlah_penarikan']); ?></h3>

		              <p>Jumlah Penarikan</p>
		            </div>
		            <div class="icon">
		              <i class="ion ion-ios-cash"></i>
		            </div>
		            <a href="tabungan.html" class="small-box-footer">
		              Lihat Selengkapnya <i class="fa fa-arrow-circle-right"></i>
		            </a>
		          </div>
		        </div>
		        <div class="col-lg-3 col-xs-6">
		          <!-- small box -->
		          <div class="small-box bg-green">
		            <div class="inner">
		              <h3>Rp. <?php echo format_rupiah($row['jumlah_setoran'] - $row['jumlah_penarikan']); ?></h3>

		              <p>Jumlah Saldo</p>
		            </div>
		            <div class="icon">
		              <i class="ion ion-ios-cash"></i>
		            </div>
		            <a href="tabungan.html" class="small-box-footer">
		              Lihat Selengkapnya <i class="fa fa-arrow-circle-right"></i>
		            </a>
		          </div>
		        </div>
            </div>
			