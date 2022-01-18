<?php

  global $db, $webController;

  $data = $_GET;

  try {
    if ($data['type'] != "3") {
      $array['results'] = $db->dbSelect(
        "products",
        [
          "whereArray" => [
            ["available", "=", 1],
            ["discount", ">", $data['show_only_discounts'] == "true" ? 0 : -1],
            ["type", "in", $data['type'] == "1" ? [1, 4] : [2, 4]],
          ],
          "order_by" => $data['orderName'] . " " . $data['orderBy']
        ]
      );
    } else {
      $array['results'] = $db->dbSelect(
        "products",
        [
          "where" => [
            "available" => 1,
          ],
          "order_by" => $data['orderName'] . " " . $data['orderBy']
        ]
      );
    }

    $webController->getJson($array);
  } catch(\Exception $e) {
    echo json_encode([
      "status" => "fail",
      "message" => $e->getMessage()
    ]);
  }

?>