<?php

  global $db, $webController;

  $data = $db->request_data();

  try {
    $array['results'] = $db->dbSelect(
      "carts_products",
      [
        "where" => [
          "id_cart" => 1
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

    $webController->getJson($array);
  } catch(\Exception $e) {
    echo json_encode([
      "status" => "fail",
      "message" => $e->getMessage()
    ]);
  }

?>