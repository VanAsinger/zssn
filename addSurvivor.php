<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="addSur.php" method="post">
        <label for="nameSur">Name:</label><input type="text" name="nameSur"><br>
        <label for="ageSur">Age:</label><input type="text" name="ageSur"><br>
        <label for="sexSur">Gender:</label><input type="radio" name="sexSur" value="1">Male<input type="radio" name="sexSur" value="2">Female<br>
        <label for="latSur">Latitude:</label><input type="range" name="latSur" min="-90" max="90"><br>
        <label for="longSur">Longitude:</label><input type="range" name="longSur" min="-180" max="180"><br>
        <input type="submit" value="Insert">
    </form>
</body>
</html>