<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/flight_admin_style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Admin_Flight</title>
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
    <div class="searching">
        <i class='bx bx-search-alt-2 bx-rotate-90' ></i>
        <input type="search" name="search" class="search" placeholder="  By Flight_ID">
        <input type="submit" name="find" class="find" value="Search">
    </div>
    <div class="info-tab">
        <table class="table">
            <tr class="row-light">
                <th>Flight ID</th>
                <th>From</th>
                <th>To</th>
                <th>Date</th>
                <th>Dep Time</th>
                <th>Price</th>
                <th>Seats</th>
                <th>Status</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <tr class="row-bold">
                <th>F001</th>
                <th>SGN</th>
                <th>HNA</th>
                <th>09/01/2024</th>
                <th>19:30</th>
                <th>800.00 VND</th>
                <th><a href="">View</a></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-light">
                <th>F002</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">View</a></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-bold">
                <th>F002</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">View</a></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-light">
                <th>F002</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">View</a></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-bold">
                <th>F002</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">View</a></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-light">
                <th>F002</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">View</a></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
        </table>
    </div>
    <div class="bot">
        <a href="">Add New Flight</a>
        <input type="submit" name="save" value="Save">
    </div>
</body>
</html>