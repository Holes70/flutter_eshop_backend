<?php

  global $db, $webController;

  $data = $_GET;

  try {
    $array['results'] = $db->dbSelect(
      "carts_products",
      [
        "select" => "products.*",
        "where" => [
          "id_cart" => $data['cart_id']
        ],
        "join" => [
          "products" => [
            "id_product",
            "id"
          ]
        ]
      ]
    );

    $array['cena_spolu'] = 0;
    foreach ($array['results'] as $item) {
      $array['cena_spolu'] += $item['price'];
    }

    $array['cena_spolu'] = (float)number_format($array['cena_spolu'], 2);

    $webController->getJson($array);
  } catch(\Exception $e) {
    echo json_encode([
      "status" => "fail",
      "message" => $e->getMessage()
    ]);
  }

?>