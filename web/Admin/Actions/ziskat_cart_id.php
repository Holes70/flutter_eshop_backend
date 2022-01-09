<?php

global $db;

$customerCarts = $db->dbSelect(
  "carts",
  [
    "where" => [
      "id_customer_uid" => 1
    ]
  ]
);

$cartId = 0;

foreach ($customerCarts as $cart) {
  if ($cart['is_order'] == "0") {
    $cartId = $cart['id'];
    break;
  }
}

if ($cartId == 0) {
  $db->insert_array([
    'table' => "carts",
    'table_data' => [
      "id_customer_uid" => 1,
      "is_order" => 0
    ]
  ]);

  $cartId = $db->getLastItem("carts")["id"];
}

echo $cartId;
