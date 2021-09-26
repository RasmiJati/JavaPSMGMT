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
                <h1>Purchase Update</h1>
            <form action = "UpdatePurchaseJsp.jsp" method = "post">
                <%
                    try{
                    st = con.createStatement();
                    String up = request.getParameter("u");
                    int num = Integer.parseInt(up);
                    String data = "select *from purchase where Pid = '"+num+"'";
                    rs = st.executeQuery(data);
                    while(rs.next()){
                %>
                <input type="hidden" name="id" value = "<%=rs.getString(1)%>"/>
                <p>Date</p><input type="date" name="date" value = "<%=rs.getString(2)%>" required/>

                <p>Product Name</p><input type = "text" name = "name" value = "<%=rs.getString(3)%>" required/>

                <p>Description</p><input type = "text" name = "description" value = "<%=rs.getString(4)%>" required/>

                <p>Qty</p><input type = "text" name = "qty" value = "<%=rs.getString(6)%>" required/>

                <p>Rate</p><input type = "text" name = "rate" value = "<%=rs.getString(5)%>" onchange="view(this)" required/>

                <p>Amount</p><input type="text" name="amount" value="<%=rs.getString(7)%>" required>

                <p>Discount</p><input type="text" name="discount" value="<%=rs.getString(9)%>" required/>

                <p>VAT</p><input type="text" name="vat" value="<%=rs.getString(8)%>"  onchange="show(this)" required/>

                <p>Total Amount</p><input type="text" name="total" value="<%=rs.getString(10)%>" required > 
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
         <script>
            function view(){
                var rate = document.getElementById('rate').value;
                var qty = document.getElementById('qty').value;
                document.getElementById("amount").value = rate*qty;

            }
            function show(){
                var amount = document.getElementById("amount").value;
                var discount = (document.getElementById("discount").value)/100;
                var vat = (document.getElementById("vat").value)/100;
                var totalamt = amount-(amount*discount)+(amount*vat);
                document.getElementById("total").value = totalamt.toFixed(2);
            }
        </script>
</body>
</html>
