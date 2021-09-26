<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <title>Add</title>
        <link rel="stylesheet" type="text/css" href="css/header.css">
        <link rel="stylesheet" type="text/css" href="css/pstable.css">
        </head>
    <body>
        <div class = "header">
            <div style = "float: left; font-size: 20px;"><%= java.util.Calendar.getInstance().getTime()%></div>
        </div> 
        <div class = "container1">
            <form action = "AddPurchase.jsp" method = "post">
                <h1>Purchase</h1>

                <p>Date</p><input type="date" name="date" required />
            
                <p>Product Name</p><input type = "text" name = "name" required/>

                <p>Description</p><input type = "text" name = "description" required/>

                <p>Quantity</p><input type = "text" id = "qty" name = "qty" required/>

                <p>Rate</p><input type = "text" id = "rate" name = "rate" onchange="view(this)" required/>

                <p>Amount</p><input type="text" id = "amount" name="amount" required/>

                <p>Discount(%)</p><input type="text"  id = "discount" name="discount" required/>

                <p>VAT(%)</p><input type="text" id="vat" name="vat" onchange="show(this)" required/>

                <p>Total Amount</p><input type="text" id = "total" name="total" required/>
                <br/><br/>
                <button>Add</button>
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


         <div class = "container" align = "center">
        <table border = "2" width = "900">
            <form action = "Purchase.jsp" method="get">
                <input type="text" class="form-control" name="q" placeholder="Search here......"> 
            </form>
            <h1>Purchase Table</h1>
            <tr>
                <th>Id</th>
                    <th>Date</th>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Rate</th>
                    <th>Qty</th>
                    <th>Amount</th>
                    <th>VAT(%)</th>
                    <th>Discount(%)</th>
                    <th>Total Amount</th>
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
                            data = "select *from purchase where Date like '%"+query+"%' or Name like '%"+query+"%' or Description like '%"+query+"%' or Rate like '%"+query+"%' or Qty like '%"+query+"%' or Amount like '%"+query+"%' or VAT like '%"+query+"%' or Discount like '%"+query+"%' or Total_amount like '%"+query+"%' ";
                        }else{
                            data = "select *from purchase order by Pid desc";
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
                    <td><%=rs.getString(8) %></td>
                    <td><%=rs.getString(9) %></td>
                    <td><%=rs.getString(10) %></td>
                    
                    <td class = "text-center">
                        <a href="UpdatePurchase.jsp?u=<%=rs.getString(1)%>">Update</a>
                        <a href="DeletePurchase.jsp?u=<%=rs.getString(1)%>">Delete</a>
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