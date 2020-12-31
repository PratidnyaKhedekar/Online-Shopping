<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Payment</title>
    </head>
    <style>
    body {
  background-image: url('Images/pic5.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}</style>
    <body>
        <h1>Online Payment</h1>
        
        <ol style="color:black;"> 
            <li>Select bank</li>
            <li>Process the transaction</li>
            <li>Confirm the payment by OTP </li>
            <li>Print the Slip</li>
        </ol>
        <form>
            <input type="submit" value="Do Payment!!"style="font-size:10pt;color:white;background-color:green;border:3px solid #336600;padding:4px" />

        </form>
        
        <%
            HttpSession se=request.getSession();
            String idno =(String)se.getAttribute("id"); 
            se.setAttribute("id", idno);
            
            %>
        
       
            
            
    </body>
   
</html>
