<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
	String password = request.getParameter("password");
	String uid = request.getParameter("uid");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/psmgmt", "root", "");
		String select = "select Uid,Password from users where Uid = ? and Password = ?";
		PreparedStatement stmt = c.prepareStatement(select);
		stmt.setString(1, uid);
		stmt.setString(2, password);
		ResultSet rs = stmt.executeQuery();
		if(rs.first()){
			if(uid.equals(uid) && password.equals(password)){
				if(request.getParameter("uid").length()>0 && request.getParameter("password").length()>0){
					RequestDispatcher rd = request.getRequestDispatcher("table.jsp");
	    			rd.forward(request, response);
	       		}
	       	}
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
       		rd.forward(request, response);
		}
	}catch(ClassNotFoundException e){
		out.println(e);	
	}catch(SQLException es){
		System.err.println(es.getMessage());
	}
%>