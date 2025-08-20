<?php
//https://github.com/eduardo-rdguez/easygoband-challenge
$msg = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nameSur = htmlspecialchars($_POST['nameSur']);
    if (empty($nameSur)) {
        $msg .= "Name is empty";
    }
    $ageSur = htmlspecialchars($_POST['ageSur']);
    if (empty($ageSur)) {
        $msg .= "Age is empty";
    }
    $sexSur = htmlspecialchars($_POST['sexSur']);
    if (empty($sexSur)) {
        $msg .= "Gender is empty";
    }
    $latSur = htmlspecialchars($_POST['latSur']);
    if (empty($latSur)) {
        $msg .= "Latitude is empty";
    }
    $longSur = htmlspecialchars($_POST['longSur']);
    if (empty($longSur)) {
        $msg .= "Longitude is empty";
    }
    if(!$msg){
        require_once('conn.php');
        $sql = "insert into survivors (nameSur, ageSur, latSur, longSur, sexSur) values ('$nameSur', $ageSur, $latSur, $longSur, $sexSur)";
        if ($conn->query($sql) === TRUE) {
            $idSur = $conn->insert_id;
            $msg = "New record created successfully<br>Your ID: $idSur";
        } else {
            $msg = "Error: " . $sql . "<br>" . $conn->error;
        }
          
        $conn->close();
    }
}
echo "<div>$msg</div>";
echo "<div><a href='addSurvivor.php'>Add</a></div>";
?>