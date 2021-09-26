<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
	String date = request.getParameter("date");
	String name = request.getParameter("name");
	String des = request.getParameter("description");
	String qty = request.getParameter("qty");
	String rate = request.getParameter("rate");
	String amt = request.getParameter("amount");
	String dis = request.getParameter("discount");
	String vat = request.getParameter("vat");
	String total = request.getParameter("total");
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/psmgmt","root","");
				String insert = "insert into purchase(Date,Name,Description,Rate,Qty,Amount,VAT,Discount,Total_Amount) values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement stmt = con.prepareStatement(insert);
				stmt.setString(1,date);
				stmt.setString(2,name);
				stmt.setString(3,des);
				stmt.setString(4,rate);
				stmt.setString(5,qty);
				stmt.setString(6,amt);
				stmt.setString(7,vat);
				stmt.setString(8,dis);
				stmt.setString(9,total);
				int i = stmt.executeUpdate();  
				if(i>0){  
						RequestDispatcher rd = request.getRequestDispatcher("Purchase.jsp");
			    		rd.forward(request, response);
				}else{
			RequestDispatcher rd = request.getRequestDispatcher("User.jsp");
			rd.forward(request, response);
  		}    
			   	
			}catch(ClassNotFoundException e){
				out.println(e);	
			}catch(SQLException es){
				System.err.println(es.getMessage());
			}
	
%>	