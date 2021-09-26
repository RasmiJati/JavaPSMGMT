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

        <%  
            String host = "jdbc:mysql://localhost:3306/psmgmt";
            Statement st = null;
            ResultSet rs = null;
            PreparedStatement stmt = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(host,"root","");
        %>

        <div class = "container">
                <h1>Company Update</h1>
            <form action = "UpdateCompanyJsp.jsp" method = "post">
                <%
                    try{
                    st = con.createStatement();
                    String up = request.getParameter("u");
                    int num = Integer.parseInt(up);
                    String data = "select *from company where Id = '"+num+"'";
                    rs = st.executeQuery(data);
                    while(rs.next()){
                %>
                <input type="hidden" name="id" value = "<%=rs.getString(1)%>"/>
                <p>Date</p><input type="date" name="date" value = "<%=rs.getString(2)%>" required/>

                <p>Name</p><input type = "text" name = "name" value = "<%=rs.getString(3)%>" required/>

                <p>Address</p><input type = "text" name = "address" value = "<%=rs.getString(4)%>" required/>

                <p>Phone Number</p><input type = "text" name = "contact" value = "<%=rs.getString(5)%>" required/>

                <p>Email</p><input type = "text" name = "email" value = "<%=rs.getString(6)%>" required/>

                <p>Description</p><textarea name = "descrip" value = "<%=rs.getString(7)%>" required></textarea> 
                <%
                break;
                    }
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                %>
                <br/><br/>
                <button>Update</button>
            </form>
         </div>
</body>
</html>
