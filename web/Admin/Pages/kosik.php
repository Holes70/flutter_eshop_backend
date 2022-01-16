<?php

use Components\TableLarge;

$idCart = 1;

$carts = new TableLarge("carts_products");
$carts->conditions([
  "select" => "products.*",
  "join" => [
    "products" => [
      "id_product",
      "id"
    ]
  ],
  "where" => [
    "carts_products.id_cart" => $idCart 
  ]
]);
$carts->fileDir("products");

$dia->template("
  {$carts->show()}
")->render();
