<%@page import="prj301demo.Model.Flights.FlightDTO"%>
<%@page import="java.util.List"%>
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
            <a href="login?action=logout" class="button">LOG OUT</a>
        </div>
    </div>
    <form action="" method="GET" class="searching">
        <i class='bx bx-search-alt-2 bx-rotate-90' ></i>
        <input type="search" name="keyword" class="search" placeholder="  By Flight_ID">
        <input type="submit" class="find" value="Search">
    </form>
    <div class='function' style="margin: 25px 0 0 105px">
        <a href='FlightControllerAdmin' style="text-decoration: none; color: #e83c38; font-size: large">Flight List</a> | <a href='login' style="text-decoration: none; color: #e83c38; font-size: large">Login</a> | <a href='login?action=logout' style="text-decoration: none; color: #e83c38; font-size: large">Logout</a> 
    </div>
    <div class="info-tab">
        <table class="table">
            <tr class="row-light">
                <th>ID</th>
                <th>Flight Code</th>
                <th>Flight Name</th>
                <th>From</th>
                <th>To</th>
                <th>Dep Time</th>
                <th>Arr Time</th>
                <th>Seats</th>
                <th>Status</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <% 
                List <FlightDTO> list = (List <FlightDTO>) request.getAttribute("flightlist");
                for (FlightDTO flight : list) {
                     pageContext.setAttribute("flight", flight);
            %>
            <tr class="row-bold">
                <th>${flight.id}</th>
                <th>${flight.flight_number}</th>
                <th>${flight.flight_name}</th>
                <th>${flight.departure_airport}</th>
                <th>${flight.arrival_airport}</th>
                <th>${flight.departure_time}</th>
                <th>${flight.arrival_time}</th>
                <th>${flight.total_seat}</th>
                <th></th>
                <th><a href="FlightControllerAdmin?action=details&id=${flight.id}">View</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <% 
                }
            %>

        </table>
    </div>
    <div class="bot">
        <a href="">Add New Flight</a>
        <input type="submit" name="save" value="Save">
    </div>
</body>
</html>