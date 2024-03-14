<%-- 
    Document   : flight_admin_details
    Created on : Mar 13, 2024, 12:19:21 AM
    Author     : Lenovo P14s Gen 2
--%>
<%@page import="prj301demo.Model.Flights.FlightDTO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flight Details</title>
    </head>
    <body>
        <jsp:include page="/menu.jsp" flush="true"/>
        
        <h1>Flight Details</h1>
        <p>Login user: ${sessionScope.usersession.name}</p>
        
        <table>
            <tr><td>ID</td><td>${requestScope.flight.id}</td></tr>
            <tr><td>Flight_Code</td><td>${requestScope.flight.flight_number}</td></tr>
            <tr><td>Flight_Name</td><td>${requestScope.flight.flight_name}</td></tr>
            <tr><td>From</td><td>${requestScope.flight.departure_airport}</td></tr>
            <tr><td>To</td><td>${requestScope.flight.arrival_airport}</td></tr>
            <tr><td>Dep Time</td><td>${requestScope.flight.departure_time}</td></tr>
            <tr><td>Arr Time</td><td>${requestScope.flight.arrival_time}</td></tr>
            <tr><td>Seats</td><td>${requestScope.flight.total_seat}</td></tr>
        </table>
        
        <form action="FlightControllerAdmin">
            <input type="hidden" name="id" value="${requestScope.flight.id}">
            <input type="hidden" name="action" value="edit">
            <input type="submit" value="Edit">
        </form>
    </body>
</html>
