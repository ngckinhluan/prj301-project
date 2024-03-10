<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/flightview_admin_style.css">
    <title>Admin_Edit Flights</title>
</head>
<body>
    <div class="header">
        <div class="img">
            <img class="logo" src="./images/logo.png">
        </div>
        <div class="bar">
            <a class="menu" href="">HOME</a>
            <a class="menu" href="">USERS</a>
            <a class="menu" href="">FLIGHTS</a>
            <a class="menu" href="">BOOKING HISTORY</a>
            <a href="" class="button">LOG OUT</a>
        </div>
    </div>

    <div class="grid-container">
        <div class="item">Flight ID</div>
        <div class="item2">F001</div>
        <div class="item1"><input name="id" type="text" placeholder=" Change ID"></div>
        <div class="item">From</div>
        <div class="item2">SGN</div>
        <div class="item1"><input name="point" type="text" placeholder=" Change Point"></div>
        <div class="item">To</div>  
        <div class="item2">HNA</div>
        <div class="item1"><input name="des" type="text" placeholder=" Change Destination"></div>
        <div class="item">Date</div>
        <div class="item2">09/01/2024</div>
        <div class="item1"><input name="date" type="text" placeholder=" Change Date"></div>
        <div class="item">Departure Time</div>
        <div class="item2">19:03</div>
        <div class="item1"><input name="time" type="text" placeholder=" Change Departure Time"></div>
        <div class="item">Price</div>
        <div class="item2">800.000 VND</div>
        <div class="item1"><input name="price" type="text" placeholder=" Change Price"></div>
    </div>
    <div class="bot">
        <input type="submit" name="save" value="Save">
    </div>
</body>
</html>