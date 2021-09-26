<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%
    String id = request.getParameter("u");
    int no = Integer.parseInt(id);
   try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/psmgmt", "root", "");
        Statement st=conn.createStatement();
        st.executeUpdate("DELETE FROM customer WHERE CId ='"+no+"'");
        response.sendRedirect("table.jsp");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>