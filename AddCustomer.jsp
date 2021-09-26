<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
	String date = request.getParameter("date");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String contact = request.getParameter("contact");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/psmgmt","root","");
		String insert = "insert into customer(Date,Name,Address,Gender,Phone_no,Email) values(?,?,?,?,?,?)";
		PreparedStatement stmt = con.prepareStatement(insert);
		stmt.setString(1,date);
		stmt.setString(2,name);
		stmt.setString(3,address);
		stmt.setString(4,gender);
		stmt.setString(5,contact);
		stmt.setString(6,email);
		int i = stmt.executeUpdate();  
		if(i>0){  
			if(request.getParameter("date").length()>0 && request.getParameter("name").length()>0 && request.getParameter("address").length()>0 && request.getParameter("contact").length()>0 && request.getParameter("email").length()>0){
					RequestDispatcher rd = request.getRequestDispatcher("table.jsp");
			    	rd.forward(request, response);
		    }
	   	}else{
			RequestDispatcher rd = request.getRequestDispatcher("NewCustomer.jsp");
			rd.forward(request, response);
  		}
	}catch(ClassNotFoundException e){
		out.println(e);	
	}catch(SQLException es){
		System.err.println(es.getMessage());
	}
%>	