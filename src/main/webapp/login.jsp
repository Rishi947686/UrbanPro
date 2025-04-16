<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | UrbanPro</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #0f2a3a;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
        }

        .login-box {
            background: #111;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.5);
            width: 340px;
        }

        .login-box h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #00ffe7;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 10px;
            background: #1e1e1e;
            color: #fff;
            font-size: 14px;
        }

        .login-box input[type="text"]::placeholder,
        .login-box input[type="password"]::placeholder {
            color: #aaa;
        }

        .login-box input[type="submit"] {
            background: #00ffe7;
            color: #111;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 10px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .login-box input[type="submit"]:hover {
            background: #00c7b2;
        }

        .error {
            color: #ff4d4d;
            font-size: 14px;
            text-align: center;
            margin-top: 10px;
        }

        @media (max-width: 500px) {
            .login-box {
                width: 90%;
            }
        }
    </style>
</head>
<body>
<div class="login-box">
    <h2>Login</h2>
    <form action="login" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="submit" value="Login">
    </form>
    <%
        String error = request.getParameter("error");
        if ("invalid".equals(error)) {
    %>
    <p class="error">Invalid username or password</p>
    <%
        }
    %>
</div>
</body>
</html>
