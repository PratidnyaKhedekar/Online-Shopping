<%-- 
    Document   : paymentMode
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
           
       <style>
       
         body {
  background-image: url('Images/pic19.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
            
          
            .tbl
            {
                border:0px solid black;

                width:700px;
                font-size: x-large;
                color:black;
                background-position: right;
 
            }
           
          
            
            
            
        </style>
        
        
        
    </head>
    
    <body>
    
    
    
    <%
        try{
            HttpSession se=request.getSession();
          String money =(String)se.getAttribute("money");  
        String choice;
        se.setAttribute("money", money);
        choice=request.getParameter("h");
        
        out.println("You have To Pay"+money);
        out.println(choice);
        if(choice!=null)
        {
            
        if(choice.equalsIgnoreCase("online"))
        {
            response.sendRedirect("onlinePayment.jsp");
        }
        else
        {
            response.sendRedirect("purchase.jsp");
        }
        }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
    
        <center><h1 class="heading">Enter Mode Of Your Payment</h1></center>
    <center> 
        <form action="paymentMode.jsp" >
            <table class="tbl">
                <tr><td>
                        Online Payment<input type="radio" name="t" value="online" > </td></tr><br>
                   <tr> <td> Cash on Delivery<input type="radio" name="t" value="offline"></td><br></tr>
                <tr><td><input type="submit" value="Make Payment"style="font-size:10pt;color:white;background-color:green;border:3px solid #336600;padding:4px" /></td></tr>
            </table>
        </form>
        
    </center>
        
    </body>
</html>
