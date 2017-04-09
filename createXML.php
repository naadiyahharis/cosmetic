<?php
header("Content-type:text/xml");
header("Access-Control-Allow_origin: *");

$host = "localhost";
$username="root";
$password="";
$db = "cosmetic";

$con= mysqli_connect($host, $username, $password, $db);
$query = mysqli_query($con, "SELECT * FROM details");
$cosmetic = new SimpleXMLElement('<list/>');

while($row = mysqli_fetch_array($query)){
    $details = $cosmetic->addChild("details");
    $details->addChild("name", $row["name"]);
    $details->addChild("brand", $row["brand"]);
    $details->addChild("picture", $row["picture"]);
    $details->addChild("price", $row["price"]);
    $details->addChild("discount", $row["discount"]);
    $details->addChild("discounted_price", $row["discounted_price"]);
    $details->addChild("new_arrival", $row["new_arrival"]);
    $details->addChild("hot_item", $row["hot_item"]);
}

mysqli_close($con);
echo $cosmetic->asXML();

?>