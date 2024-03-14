<%@page import="java.util.List"%>
<%@page import="prj301demo.Model.Users.UserDTO"%>
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
            <a class="menu" href="adminhome?action=home">HOME</a>
            <a class="menu" href="adminhome?action=users">USERS</a>
            <a class="menu" href="">FLIGHTS</a>
            <a class="menu" href="">BOOKING HISTORY</a>
            <a href="login?action=logout" class="button">LOG OUT</a>
        </div>
    </div>
    
    <div class="info-tab">
        <form action='' method="GET" class="searching">
            <i class='bx bx-search-alt-2 bx-rotate-90' ></i>
            <input type="text" name="keyword" value="<%=request.getParameter("keyword") != null ? request.getParameter("keyword") : ""%>" class="search" placeholder="  By Name/Phone">
            <input type="submit" class="find" value=Search>
        </form>
        
        <table class="table">
            <tr class="row-bold">
                <th>ID</th>
                <th>User Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Password</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <% 
                List <UserDTO> list = (List <UserDTO>) request.getAttribute("userlist");
                for (UserDTO user : list) {
                        pageContext.setAttribute("user", user);
            %>
            <tr class="row-light">
                <th>${user.id}</th>
                <th>${user.name}</th>
                <th>${user.phone}</th>
                <th>${user.email}</th>
                <th>${user.password}</th>
                <th><a href="">Edit</a></th>
                <th><i class='bx bxs-trash'></i></th>
            </tr>
            <% } %>
        </table>
    </div>
    <div class="bot">
        <a href="">Add New User</a>
        <input type="submit" name="save" value="Save">
    </div>
</body>
</html>