<?php
session_start();
$id_siswa = $_POST['id_siswa'];
$nama = $_POST['nama'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$alamat = $_POST['alamat'];
$tempat = $_POST['tempat'];
$tanggal = $_POST['tanggal'];

$query = "insert INTO siswa SET
								id_siswa = '$id_siswa',
								nama = '$nama',
								jenis_kelamin = '$jenis_kelamin',
								alamat = '$alamat',
								tempat = '$tempat',
								tanggal = '$tanggal'
								";

$sql = mysqli_query($koneksi, $query);
if ($sql) {
	echo "<script>alert('Data Berhasil Dimasukkan');history.go(-2);</script>";
}

?>

