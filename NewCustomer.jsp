<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer</title>
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/form.css">
    </head>
    <body>
        <div class = "header">
            <div style = "float: left; font-size: 20px;"><%= java.util.Calendar.getInstance().getTime()%></div>
        </div> 
        <div class = "container">
            <h1>Customer Register</h1>
            <form action = "AddCustomer.jsp" method = "post">
                <p>Date</p><input type="date" name="date" required>

                <p>Customer Name</p><input type = "text" name = "name" required />

                <p>Address</p><input type = "text" name = "address" required />

                <p>Phone Number</p><input type = "text" name = "contact" required />

                <p>Gender</p><input type = "radio" name = "gender" value="Female" /> Female
                <input type = "radio" name = "gender" value="Male" />Male
                <input type = "radio" name = "gender" value ="Other" />Other
                

                <p>Email</p><input type = "text" name = "email" required />

                <br/><br/>
                <button>Add</button>
            </form>
         </div>
        
</body>
</html>