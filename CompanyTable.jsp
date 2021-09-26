<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Curd</title>
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <style type="text/css">
        .container{
            top: -10%;
            left: 5%;
            transform: translate(-5%,90%);
        }
        
        tr:hover{
            background-color: #f5f5f5;
            transform: scale(1.02);
            box-shadow: 2px 2px 12px rgba(0,0,0,0.2), -1px -1px 8px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <div class = "header">
            <div style = "float: left; font-size: 20px;"><%= java.util.Calendar.getInstance().getTime()%></div>
            
        </div> 
         
    <div class = "container" align = "center">
            <table border = "2" width = "900">
                <h1>Company Table</h1>
                <tr id = "theader">
                    <th>Id</th>
                    <th>Date</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Description</th>
                    <th class = "text-center">Action</th>
                </tr>
                <%
                    try{
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/psmgmt","root","");   
                        Statement stmt=con.createStatement(); 
                        String query = request.getParameter("q");
                        ResultSet rs;
                        String data;
                        if(query!=null){
                            data = "select *from company where Name like '%"+query+"%' or Address like '%"+query+"%' or Date like '%"+query+"%' or Email like '%"+query+"%' or Description like '%"+query+"%' or Phone like '%"+query+"%'";
                        }else{
                            data = "select *from company order by Id desc";
                        }
                        rs = stmt.executeQuery(data);
                        while(rs.next()){
                %>

                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getString(3) %></td>
                    <td><%=rs.getString(4) %></td>
                    <td><%=rs.getString(5) %></td>
                    <td><%=rs.getString(6) %></td>
                    <td><%=rs.getString(7) %></td>
                    <td class = "text-center">
                        <a href="Purchase.jsp">Purchase</a>
                        <a href="UpdateCompany.jsp?u=<%=rs.getString(1)%>">Update</a>
                        <a href="DeleteCompany.jsp?u=<%=rs.getString(1)%>">Delete</a>
                    </td>
                </tr>
                <%
                    }
                    con.close();
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                %>
            </table>   
        </div>
    </body>
</html>