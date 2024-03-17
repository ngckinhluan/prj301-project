
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Flight booking</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/stylesBootstrap.css" rel="stylesheet" />
        <!-- Datatables CSS -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
    </head>

    <body>
        <jsp:include page="/header.jsp" />
        <!-- Section-->
        <section class="py-5">
             <div class="container px-4 px-lg-5">
                <h2 style="margin-bottom: 50px">Book Flight Detail</h2>
                <div style="margin: auto; width: fit-content; border: 1px solid; padding: 30px">
                    <h2>Project worlds Digital Ticket</h2>
                    <h2>Journey Date <%= new Date()%></h2>
                    <h2>Departure at: <strong>${Flight.departureTime}</strong> from <strong>${Flight.source}</strong></h2>
                    <h2>Arrive at: <strong>${Flight.arrivalTime}</strong> in <strong>${Flight.destination}</strong></h2>
                    <h2>Number of seats: <strong>${seatId + 1}</strong> </h2>
                    <h2>Passenger ID: <strong>${sessionScope.user.username}</strong> </h2>
                    <h2>Number ticket: <strong>${numberTicket}</strong> </h2>
                    <h2>Price: </h2>
                    <div style="text-align: center; margin-top: 40px">
                        <a class="btn btn-outline-dark" href="submit?id=${Flight.id}&seatNumber=${seatId + 1}&number=${numberTicket}" style="margin-right: 50px">
                            <i class="bi-box-arrow-right me-1"></i>
                            Submit 
                        </a>
                        <a class="btn btn-outline-dark" href="home">
                            <i class="bi-back me-1"></i>
                            Cancel
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </body>

    <!-- Datatables JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#datatable').DataTable();
        });
    </script>


</body>

</html>