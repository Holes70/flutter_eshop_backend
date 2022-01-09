<?php


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
  if ($cart['is_order'] == 0) {
    $cartId = $cart['id'];
  } else {
    $db->insert_array([
      'table' => "carts",
      'table_data' => [
        "id_customer" => 1,
        "is_order" => 0
      ]
    ]);
  }
}

echo json_encode($db->getLastItemId("carts"));