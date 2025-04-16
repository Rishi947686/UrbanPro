<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Result</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        /* Success message styles */
        .success {
            color: green;
            font-weight: bold;
            font-size: 18px;
            margin: 10px 0;
        }

        /* Error message styles */
        .error {
            color: red;
            font-weight: bold;
            font-size: 18px;
            margin: 10px 0;
        }

        /* Link styles */
        a {
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Booking Result</h1>

    <%
        // Retrieve the message or error from request attributes
        String message = (String) request.getAttribute("message");
        String error = (String) request.getAttribute("error");

        // Display success message
        if (message != null && !message.isEmpty()) {
    %>
    <div class="success">
        <%= message %>
    </div>
    <%
        }

        // Display error message
        if (error != null && !error.isEmpty()) {
    %>
    <div class="error">
        <%= error %>
    </div>
    <%
        }
    %>

    <!-- Optionally, you can add a link to go back to the booking page -->
    <a href="bookService.jsp">Go Back to Book Service</a>
</div>

</body>
</html>
