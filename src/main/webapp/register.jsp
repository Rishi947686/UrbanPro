<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Register | UrbanPro</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #0f2b3f;
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .register-box {
      background: #1c1c1c;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.4);
      width: 360px;
    }
    .register-box h2 {
      text-align: center;
      color: #00f0ff;
      margin-bottom: 20px;
    }
    .register-box input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 8px;
      background-color: #2e2e2e;
      color: #fff;
    }
    .register-box input::placeholder {
      color: #ccc;
    }
    .register-box input[type="submit"] {
      background: #00f0ff;
      color: black;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s ease;
    }
    .register-box input[type="submit"]:hover {
      background: #00c6d1;
    }
    .success, .error {
      text-align: center;
      font-size: 14px;
      margin-top: 10px;
    }
    .success { color: #00ff90; }
    .error { color: #ff6565; }
  </style>
</head>
<body>
<div class="register-box">
  <h2>Register</h2>
  <form action="register" method="post">
    <input type="text" name="firstName" placeholder="First Name" required />
    <input type="text" name="lastName" placeholder="Last Name" required />
    <input type="email" name="email" placeholder="Email Address" required />
    <input type="text" name="phone" placeholder="Phone Number" required />
    <input type="text" name="username" placeholder="Username" required />
    <input type="password" name="password" placeholder="Password" required />
    <input type="submit" value="Register" />
  </form>

  <%
    String status = request.getParameter("status");
    if ("success".equals(status)) {
  %>
  <p class="success">Registered successfully!</p>
  <% } else if ("exists".equals(status)) { %>
  <p class="error">Username already exists!</p>
  <% } else if ("error".equals(status)) { %>
  <p class="error">Registration failed!</p>
  <% } %>
</div>
</body>
</html>
