<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['id_user'])) {
    header("location:login.php");
}
require 'admin/config/koneksi.php';
$query = mysqli_query($koneksi, "SELECT max(no_order) as kodeTerbesar FROM cart");
$data = mysqli_fetch_array($query);
$kodeBarang = $data['kodeTerbesar'];

    // mengambil angka dari kode barang terbesar, menggunakan fungsi substr
    // dan diubah ke integer dengan (int)
$urutan = (int) substr($kodeBarang, 4, 4);

    // bilangan yang diambil ini ditambah 1 untuk menentukan nomor urut berikutnya
$urutan++;

    // membentuk kode barang baru
    // perintah sprintf("%03s", $urutan); berguna untuk membuat string menjadi 3 karakter
    // misalnya perintah sprintf("%03s", 15); maka akan menghasilkan '015'
    // angka yang diambil tadi digabungkan dengan kode huruf yang kita inginkan, misalnya BRG 
$huruf = "NOB";
$kodeBarang = $huruf . sprintf("%04s", $urutan);
function get_provinsi()
{
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => "http://api.rajaongkir.com/starter/province",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            "key: b8266f34b9928fff6eaf53b159c03ad0"
        ),
    ));
    $response = curl_exec($curl);
    $err = curl_error($curl);
    curl_close($curl);
    $ro = json_decode($response, true);
    $html = '';
    for ($i = 0; $i < count($ro['rajaongkir']['results']); $i++) {
        $html .= "<option value='" . $ro['rajaongkir']['results'][$i]['province'] . "'>" . $ro['rajaongkir']['results'][$i]['province'] . "</option>";
    }
    echo $html;
}


function get_kota()
{
    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => "http://api.rajaongkir.com/starter/city",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            "key: b8266f34b9928fff6eaf53b159c03ad0"
        ),
    ));
    $response = curl_exec($curl);
    $err = curl_error($curl);
    curl_close($curl);
    $ro = json_decode($response, true);
    $html = '';
    for ($i = 0; $i < count($ro['rajaongkir']['results']); $i++) {
        $html .= "<option value='" . $ro['rajaongkir']['results'][$i]['city_name'] . "'>" . $ro['rajaongkir']['results'][$i]['city_name'] . "</option>";
    }
    echo $html;
}

$cart = mysqli_query($koneksi, "SELECT * FROM cart INNER JOIN barang ON cart.id_produk=barang.id_barang JOIN user ON cart.id_pembeli=user.id_user WHERE cart.status_c='Keranjang' AND cart.id_pembeli='$_SESSION[id_user]'");
$data = mysqli_fetch_assoc($cart);

$pembayaran = mysqli_query($koneksi, "SELECT * FROM pembayaran");
$kirim = mysqli_query($koneksi, "SELECT * FROM pengiriman");
if (isset($_POST['transaksi'])) {
    if (transaksi($_POST) > 0) {
        if (statuscheckout($_POST) > 0) {
            echo "<script>
            document.location.href='detail_checkout.php'
            </script>";
        }
    }
}

function getTotal()
{
    global $cart;

    $total = 0;
    foreach ($cart as $crt) {
        $total += $crt['harga_c'] * $crt['qty'];
    }

    return $total;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>Anugrahcase</title>
    <!-- Favicon -->
    <link href="assets/images/favicon.png" rel="shortcut icon">
    <!-- CSS -->
    <link href="assets/plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="assets/plugins/owl-carousel/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/plugins/owl-carousel/owl.theme.default.min.css" rel="stylesheet">
    <link href="assets/plugins/magnific-popup/magnific-popup.min.css" rel="stylesheet">
    <link href="assets/plugins/sal/sal.min.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">
    <!-- Fonts/Icons -->
    <link href="assets/plugins/font-awesome/css/all.css" rel="stylesheet">
    <link href="assets/plugins/themify/themify-icons.min.css" rel="stylesheet">
    <link href="assets/plugins/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
</head>

<body data-preloader="1">

    <?php include 'assets/header.php'; ?>
    <!-- Products section -->
    <div class="section">
        <div class="container">
            <div class="row col-spacing-40">
                <div class="col-12 col-xl-8">
                    <h5 class="font-weight-medium margin-bottom-30">Form Transaksi</h5>
                    <form method="post">
                        <div class="form-row">
                            <div class="col-6">
                                <input type="hidden" value="<?php echo $_SESSION['id_user'] ?>" name="id_pembeli">
                                <label class="required">Name</label>
                                <input type="text" name="nama_p" required>
                            </div>
                            <div class="col-6">
                                <label class="required">Telepon</label>
                                <input type="tel" name="telepon_p" required>
                            </div>
                            <div class="col-12">
                                <label> Alamat Lengkap </label>
                                <input type="text" name="alamat_p">
                            </div>
                            <div class="col-6">
                                <label class="required">Kode Pos</label>
                                <input type="text" name="kode_pos" required>
                            </div>
                            <div class="col-6">
                                <label class="required">Email address</label>
                                <input type="email" name="email_p" required>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-xl-4">
                        <div class="bg-grey padding-20 padding-md-30 padding-lg-40">
                            <h5 class="font-weight-medium">Your Order</h5>

                            <table class="table cart-totals">
                                <tbody>
                                    <tr>
                                        <th scope="row">Product per Item x <?php echo mysqli_num_rows($cart) ?></th>
                                        <!-- <td>$20.00</td> -->
                                    </tr>
                                    <tr>
                                        <span hidden="">
                                            <?php $nul = 0; ?>
                                            <?php foreach ($cart as $crt) : ?>
                                                <?php
                                                $subtotal = $nul += $crt['harga_c'] * $crt['qty'] + $crt['harga_ongkir'];
                                                ?>
                                                <input type="text" value="<?php echo $kodeBarang ?>" name="no_order">

                                            <?php endforeach ?>
                                        </span>
                                        <td>
                                            <div class="">
                                                Cart Subtotal <span id="cartTotal" class="float-right"> Rp. <?= $subtotal ?></span>

                                            </div>
                                            <div class="">
                                                Pengiriman <span id="pengiriman" class="float-right">RP. 0</span>
                                            </div>
                                            <div class="">
                                                Total <span id="total" class="float-right"></span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><strong>Pembayaran</strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                        <select name="package" class="form-control" id="package">
                                            <option>-- Pilih --</option>
                                            <?php foreach ($pembayaran as $p) : ?>
                                                <option data-id_pembayaran="<?php echo $p['id_pembayaran'] ?>" data-keterangan="<?php echo $p['keterangan'] ?>"><?php echo $p['keterangan'] ?></option>
                                            <?php endforeach ?>
                                        </select>
                                        <label for="id_pembayaran" hidden="">Id</label>
                                        <input type="text" hidden="" name="id_pembayaran" readonly />
                                        <label for="keterangan" hidden="">Keterangan</label>
                                        <input type="text" name="keterangan" hidden="" readonly />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="control-label">Kota Asal:</label>
                                        <select class="form-control" id="kota_asal" name="kota_asal" required="">
                                        </select>

                                        <label class="control-label">Kota Tujuan</label>
                                        <select class="form-control" id="kota_tujuan" name="kota_tujuan" required="">
                                            <option></option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <button name="transaksi" class="btn button-md button-dark button-fullwidth margin-top-10" type="submit">Confirm order</button>
                    </form>
                </div>
            </div>
        </div><!-- end row -->
    </div><!-- end container -->
</div>

<!-- end Products section -->
<?php include 'assets/footer.php'; ?>

<!-- Scroll to top button -->
<div class="scrolltotop">
    <a class="button-circle button-circle-sm button-circle-dark" href="#"><i class="ti-arrow-up"></i></a>
</div>
<!-- end Scroll to top button -->

<!-- ***** JAVASCRIPTS ***** -->
<script src="assets/plugins/jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=IntersectionObserver"></script>
<script src="assets/plugins/plugins.js"></script>
<script src="assets/js/functions.js"></script>
<script type="text/javascript">
    $('#package').on('change', function(){
  // ambil data dari elemen option yang dipilih
  const id_pembayaran = $('#package option:selected').data('id_pembayaran');
  const keterangan = $('#package option:selected').data('keterangan');
  
  // kalkulasi total harga
  const totalDiscount = (keterangan)
  const total = id_pembayaran - totalDiscount;
  
  // tampilkan data ke element
  $('[name=id_pembayaran]').val(id_pembayaran);
  $('[name=keterangan]').val(totalDiscount);
  
  // $('#total').text(`Rp ${total}`);
});
</script>
<script>
    function updateTotal(ongkir) {
        $("#pengiriman").text('Rp. 10000')
        getTotal(ongkir)
    }

    getTotal()

    function getTotal(ongkir = 0) {
        var total = "<?= getTotal() ?>"
        var subTotal = parseInt(total) + parseInt(ongkir)
        $("#total").text('Rp. ' + subTotal);
        return total
    }
</script>
</body>

</html>