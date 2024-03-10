<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/user_admin_style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Admin_User</title>
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
        <input type="search" name="search" class="search" placeholder="  By Name/Phone">
        <input type="submit" name="find" class="find" value="Search">
    </div>
    <div class="info-tab">
        <table class="table">
            <tr class="row-light">
                <th>ID</th>
                <th>User Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Password</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <tr class="row-bold">
                <th>001</th>
                <th>Mr. MILO</th>
                <th>09xxxxxx</th>
                <th>fireairlight@gmail.com</th>
                <th>miloflight1</th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-light">
                <th>002</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-bold">
                <th>003</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-light">
                <th>004</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-bold">
                <th>005</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <tr class="row-light">
                <th>006</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
        </table>
    </div>
    <div class="bot">
        <a href="">Add New User</a>
        <input type="submit" name="save" value="Save">
    </div>
</body>
</html>