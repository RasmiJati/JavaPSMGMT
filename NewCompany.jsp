<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
        <link rel="stylesheet" type="text/css" href="css/header.css">
		<link rel="stylesheet" type="text/css" href="css/form.css">
	</head>
	<body>
        <div class = "header">
            <div style = "float: left; font-size: 20px;"><%= java.util.Calendar.getInstance().getTime()%></div>
        </div> 


        <div class = "container">
            <h1>Company Register</h1>
            <form action = "AddCompany.jsp" method = "post">
                <p>Date</p><input type="date" name="date" required />

                <p>Company Name</p><input type = "text" name = "name" required />

                <p>Address</p><input type = "text" name = "address" required />

                <p>Phone Number</p><input type = "text" name = "contact" required />

                <p>Email</p><input type = "text" name = "email" required/>

                <p>Description</p><textarea name = "descrip" required></textarea> 
                <br/><br/>
                <button>Add</button>
            </form>
         </div>

       
</body>
</html>