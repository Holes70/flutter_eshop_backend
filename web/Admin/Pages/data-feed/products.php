<?php

$array = ["dress", "pants", "shoes", "leggins", "w_pants"];
$womansProducts = ["dress", "leggins", "w_pants", "shoes"];
$menProducts = ["pants", "shoes"];

for ($i=1;$i<=100;$i++) {
  $randomProduct = array_rand($array, 1);

  if (in_array($array[$randomProduct], $womansProducts) && in_array($array[$randomProduct], $menProducts)) {
    $type = 1;
  } else if (in_array($array[$randomProduct], $womansProducts)) {
    $type = 3;
  } else if(in_array($array[$randomProduct], $menProducts)) {
    $type = 2;
  }

  $db->insert_array([
    'table' => 'products',
    'table_data' => [
      'id' => $i,
      'image' => $array[$randomProduct] . "_" .rand(1, 3) . ".png",
      'name' => $array[$randomProduct] . "_" . $i,	
      'description' => "Sed nisl nibh, pulvinar in condimentum sed, hendrerit vel velit. Phasellus ut efficitur augue. Nunc quis pulvinar est. Integer maximus ornare egestas. Maecenas eleifend nisi urna, a convallis nibh semper vitae. Fusce ante purus, convallis vel faucibus nec, tincidunt quis urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse rhoncus nulla quis erat volutpat, eu condimentum erat scelerisque. Donec accumsan lacus nisl, vel semper leo tempus at. Sed dignissim vehicula augue, quis tincidunt ligula luctus vitae. Sed tempus, eros id eleifend vulputate, leo arcu condimentum nisi, ut ullamcorper tellus libero quis nulla. Aliquam erat volutpat. Nullam nec blandit mi, sollicitudin consequat libero. Nam nec dolor sit amet urna euismod ornare. Aliquam eget ipsum metus. Morbi vitae congue libero, ut venenatis massa. ", 	
      'price' => rand(1000,9999) / 100,
      'available' => rand(0,1),
      'count' => rand(0,15),
      'type' => $type,
    ]
  ]);
}

// TYPE
// 1 - spolu
// 2 - muz
// 3 - zeny