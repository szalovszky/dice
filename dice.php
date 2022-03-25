<?php
$count = $_GET["count"];
$sides = $_GET["sides"];

$sum = 0;

for ($i=0; $i < $count; $i++) { 
    $num = rand(1, $sides - 1);
    print_r($num."<br />");
    $sum+=$num;
}

print_r("Sum: ".$sum);