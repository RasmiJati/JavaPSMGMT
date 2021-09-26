<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    String a = request.getParameter("id");
    String b = request.getParameter("date");
    String c = request.getParameter("name");
    String d = request.getParameter("description");
    String f = request.getParameter("qty");
    String e = request.getParameter("rate");
    String g = request.getParameter("amount");
    String k= request.getParameter("discount");
    String h = request.getParameter("vat");
    String j = request.getParameter("total");
    if(a!=null && b!= null && c!=null && d!=null && e!= null && f!=null && g!=null && h!= null && k!=null && j!=null){
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/psmgmt","root","");
        String sql= "update sales set Date = ?, Name = ?, Description = ?, Rate = ?, Qty = ?, Amount = ?, VAT = ?, Discount = ?, Total_Amount = ? where Sno = "+a;
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1,b);
        stmt.setString(2,c);
        stmt.setString(3,d);
        stmt.setString(4,e);
        stmt.setString(5,f);
        stmt.setString(6,g);
        stmt.setString(7,h);
        stmt.setString(8,k);
        stmt.setString(9,j);
        int i = stmt.executeUpdate();
        if(i > 0)
        {
            RequestDispatcher rd = request.getRequestDispatcher("Sales.jsp");
            rd.forward(request, response);
        }
        else
        {
            RequestDispatcher rd = request.getRequestDispatcher("UpdateSales.jsp");
            rd.forward(request, response);}
        }
        catch(SQLException sql)
        {
        request.setAttribute("error", sql);
        out.println(sql);
        }
        }
%>