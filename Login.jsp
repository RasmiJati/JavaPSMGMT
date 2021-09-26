<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="css/header.css">
        <link rel="stylesheet" type="text/css" href="css/Login.css">
    </head>
    <body>
      	<div class = "header">
            <div style = "float: left; font-size: 20px;"><%= java.util.Calendar.getInstance().getTime()%></div>
        </div>
        <div class = "container">
            <h1>User Login</h1>
            <form action="LoginJsp.jsp">
                <p>UserId</p>
                <input type = "text" name = "uid" placeholder = "User ID" required />
                <p>Password</p>
                <input type = "password" name = "password" placeholder = "Password" required /><br/>
                <button type = "submit">Login</button>
                <p>Not a member yet? <a href = "Register.jsp">Sign Up</a></p>
            </form>
          </div>
      </body>
</html>

