<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/home_admin_style.css">
    <title>Admin_Home</title>
</head>
<body>
    <div class="header">
        <div class="img">
            <!-- <img class="logo" src="./images/logo.png"> -->
        </div>
        <div class="bar">
            <a class="menu" href="adminhome?action=home">HOME</a>
            <a class="menu" href="UserControllerAdmin?action=users">USERS</a>
            <a class="menu" href="FlightControllerAdmin?action=list">FLIGHTS</a>
            <a class="menu" href="">BOOKING HISTORY</a>
            <a href="login?action=logout" class="button">LOG OUT</a>
        </div>
    </div>
    <div class="body">
        <img class="bg" src="./images/logo1.png">
        <form action="">
            <h1>Admin Information</h1>
            <div class="show">
                <div class="show_box">
                    <label>Admin Name :${usersession.name}</label>
                </div>
                <div class="show_box">
                    <label>Admin Email :${usersession.email}</label>
                </div>
                <div class="show_box_phone">
                    <label>Admin Phone :${usersession.phone}</label>
                </div>
            </div>
        </form>
    </div>
</body>
</html>