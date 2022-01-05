<?php

  global $db, $webController;

  $data = $db->request_data();

  try {
    $array['results'] = $db->dbSelect(
      "products",
      []
    );

    $webController->getJson($array);
  } catch(\Exception $e) {
    echo json_encode([
      "status" => "fail",
      "message" => $e->getMessage()
    ]);
  }

?>