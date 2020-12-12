<?php
$detail = loadModel('detail');
$checkout = loadModel("checkout");
$title = "Thanh Toán";

if(isset($_POST['submit'])) {
	$data1 = [
		'name' => $_POST['name'],
		'email' => $_POST['email'],
		'phone' => $_POST['phone'],
		'address' => $_POST['address'],
		'another' => $_POST['another'],
		'deliveryname' => $_POST['deliveryname'],
		'deliveryemail' => $_POST['deliveryemail'],
		'deliveryphone' => $_POST['deliveryphone'],
		'deliveryaddress' => $_POST['deliveryaddress'],
		'notes' => $_POST['notes']
	];
	$order_id = $checkout->insert_order($data1);
	foreach ($_SESSION['cart'] as $k => $v) {
		$total = $v['q'] * $v['price'];
		$data2 = [
			'orderid' => $order_id,
			'productid' => $v['pid'],
			'price' => $v['price'],
			'quantity' => $v['q'],
			'amount' => $total,
		];
		$checkout->insert_orderdetail($data2);
	}
	unset($_SESSION['cart']);
	redirect("index.php?option=order&id=".$order_id);
	exit;
}
if(!isset($_SESSION['cart']) || count($_SESSION['cart']) < 1) {
	redirect("index.php");
	exit;
}
?>
<?php require_once('views/header.php'); ?>
<div class="col-md-5 order-details" style="width: 100%">


				<div class="section-title text-center">
					<h3 class="title">Đơn hàng</h3>
				</div>
				<div class="order-summary">
					<div class="order-col">
						<div><strong>Sản Phẩm</strong></div>
						<div><strong>
							
						</strong></div>
						<div><strong>Giá</strong></div>
						
					</div>
					<div class="order-products">
						<?php
						$total = 0;
						foreach ($_SESSION['cart'] as $k => $v) {
							$prow = $detail->product_detailid($v['pid']);
							$total += $v['q'] * $v['price'];
						?>
							<div class="order-col">
								<div><?=$v['q']?> X <?=$prow['product_name']?></div>
								
								<div><?=money($v['price'])?></div>

							</div>
						<?php
						}
						?>
					</div>
					<div class="order-col">
						<div>Phí Giao Hàng</div>
						<div><strong>MIỄN PHÍ</strong></div>
					</div>
					<div class="order-col">
						<div><strong>Tổng</strong></div>
						<div><strong class="order-total"><?=money($total)?></strong></div>
					</div>
				</div>
				<div class="cart-btns">
				
			<a href="index.php?option=checkout">Thanh Toán  <i class="fa fa-arrow-circle-right"></i></a>
		</div>

  <?php require_once('views/footer.php'); ?>