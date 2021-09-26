<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    String a = request.getParameter("id");
    String c = request.getParameter("name");
    String d = request.getParameter("address");
    String f = request.getParameter("contact");
    String g = request.getParameter("email");
    String b = request.getParameter("date");
    String e = request.getParameter("gender");
    if(a!=null && b!= null && c!=null && d!=null && e!= null && f!=null && g!=null){
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/psmgmt","root","");
        String sql = "update customer set Date = ?, Name = ?, Address = ?, Gender = ?, Phone_no = ?, Email = ? where Cid = "+a;
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1,b);
        stmt.setString(2,c);
        stmt.setString(3,d);
        stmt.setString(4,e);
        stmt.setString(5,f);
        stmt.setString(6,g);
        int i = stmt.executeUpdate();
        if(i > 0)
        {
            RequestDispatcher rd = request.getRequestDispatcher("table.jsp");
            rd.forward(request, response);
        }
        else
        {
            RequestDispatcher rd = request.getRequestDispatcher("UpdateCustomer.jsp");
            rd.forward(request, response);}
        }
        catch(SQLException sql)
        {
        request.setAttribute("error", sql);
        out.println(sql);
        }
        }
%>