<?php
$product = loadModel('product');
$category = loadModel('category');
$pt = loadClass('phantrang');

$limit = 9;
$current = $pt->pageCurrent();
$first= $pt->pageFirst($current,$limit);

$rowcat = $category->category_parentid();
$total = $product->product_all_count();
$list = $product->product_all($first,$limit);
$title = 'Cửa Hàng';
// echo "<pre>";
// var_dump($list);die;
if (isset($_GET['filter'])) {

	$parentCates = "";
	foreach ($_GET as $cate => $value ) {
		if ( $cate != 'max_price' && $cate != 'min_price' && $cate != 'filter' && $cate != 'option' ) {
			$parentCates.= $cate.','; 
			$_SESSION['category'][$cate]= 1;
		}
	}
	
	$_SESSION['price']['min_price'] = $_GET['min_price'];
	$_SESSION['price']['max_price'] = $_GET['max_price'];

	$parentCates 	= substr($parentCates, 0,-1);
	
	$childCates = $category->get_list_categories_child($parentCates);

	$categorieIds = "";

	foreach ($childCates as $cate) {
		$categorieIds .= $cate['category_id'].','; 
	}

	$categorieIds.=$parentCates;
	if (empty($categorieIds)) {
		header('location:index.php?option=product');
	}
	$total 	= 0;

	$list 	= $product->product_filter($categorieIds, $_GET['min_price'], $_GET['max_price']);
	

}	
?>

<?php require_once('views/header.php'); ?>

<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h3 class="title">Tất Cả Sản Phẩm</h3>
				</div>
			</div>
			<form action="" method="GET">
				<input type="hidden" name="option" value="product">
				<div id="aside" class="col-md-3">
					<div class="aside">
						<h3 class="aside-title">Danh Mục</h3>
						<div class="checkbox-filter">
							<?php foreach($rowcat as $row): ?>
								<div class="input-checkbox">
									<input 
									<?php if (isset($_SESSION['category'][$row['category_id']])){
										echo 'checked';
										unset($_SESSION['category'][$row['category_id']]);
									}  
									?> 
									class="categories-input" 
									name="<?=$row['category_id']?>" 
									type="checkbox" 
									id="cat-<?=$row['category_id']?>">
									<label for="cat-<?=$row['category_id']?>">
										<span>
											
										</span>
											<?=$row['category_name']?>
									</label>
								</div>
							<?php endforeach ?>
							
						</div>
					</div>

					<div class="aside">
						<h3 class="aside-title">Giá</h3>
						<div class="price-filter">
							<div id="price-slider"></div>
							<div class="input-number price-min">
								<input 
								<?php 
									if (isset($_SESSION['price']['min_price'])){
										echo 'checked';
										unset($_SESSION['price']['min_price']);
									}  
								?> 
								id="price-min" name="min_price" type="number">
								<span class="qty-up">+</span>
								<span class="qty-down">-</span>
							</div>
							<span>-</span>
							<div class="input-number price-max">
								<input id="price-max" 
									<?php 
										if (isset($_SESSION['price']['max_price'])){
											echo 'checked';
											unset($_SESSION['price']['max_price']);
										}  
									?>
								name="max_price" type="number">
								<span class="qty-up">+</span>
								<span class="qty-down">-</span>
							</div>
						</div>
					</div>

					 
					<div class="row text-center" style="padding-top: 13px;">
						<button type="sumit" style="width: 177px; " class="btn  btn-danger" name="filter">Lọc</button>
					</div>
				</div>
				
			</form>
            
			<div id="store" class="col-md-9">
				<div class="row">
					<?php foreach($list as $row): ?>
						<div class="col-md-4 col-xs-6">
							<div class="product">
								<div class="product-img">
									<img src="/public/images/product/<?=$row['product_img']?>">
									<div class="product-label">
										<?php
											if($row['product_pricesale']) {
												echo '<span class="sale">SALE</span>';
											}
										?>
									</div>
								</div>
								<div class="product-body">
									<h3 class="product-name"><a href="index.php?option=product&id=<?=$row['product_slug']?>"><?=$row['product_name']?></a></h3>
									<h4 class="product-price">
										<?=money($row['product_price'])?>
										<?php
										if($row['product_pricesale'] > 0) {
											echo '<del class="product-old-price">'.money($row['product_pricesale']).'</del>';
										}
										?>
									</h4>
									<div class="product-rating">
										
									</div>
								</div>
								<div class="add-to-cart">
									<button class="add-to-cart-btn" data-id="<?=$row['product_id']?>" data-price="<?=$row['product_price']?>"><i class="fa fa-shopping-cart"></i> add to cart</button>
								</div>
							</div>
						</div>
					<?php endforeach; ?>
				</div>
				<div class="store-filter clearfix">
					<ul class="store-pagination">
					<?=$pt->pageLink($total,$limit,'index.php?option=product'); ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<?php require_once('views/footer.php'); ?>

