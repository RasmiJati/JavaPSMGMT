<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <title>Register Page</title>
        <link rel="stylesheet" type="text/css" href="css/header.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
    </head>
    <body>
        <div class = "header">
            <div style = "float: left; font-size: 20px;"><%= java.util.Calendar.getInstance().getTime()%></div>
            
        </div> 
        <div class = "container">
            <h1>User Register </h1>
            <form action = "RegisterJsp.jsp" method = "post">
                <p>Date</p> <input type="Date" name="date" required>
                <p>Name</p><input type = "text" name = "name" required />
                <p>Address</p><input type = "text" name = "address" required />
                <p>Gender</p>
                  <input type = "radio" name = "gender" value="Female" /> Female
                  <input type = "radio" name = "gender" value="Male" />Male
                  <input type="radio" name="gender" value = "Other" />Other
                <p>Phone Number</p><input type = "text" name = "contact" required />
                <p>Email</p><input type = "text" name = "email" required />
                <p>Password</p><input type = "password" name = "password" required />
                <br/><br/>
                <button>Register</button>
            </form>
         </div>
    </body>
</html>