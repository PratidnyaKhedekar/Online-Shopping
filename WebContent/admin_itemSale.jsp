<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        
        
        <style>
         body {
  background-image: url('Images/pic4.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
            #div1{
                
                
                border:0px solid black;
                margin-left: 100px;
            
            }
            
            .tbl
            {
                border:4px solid #66ff00;
                
                border-radius:34px 0px 34px 0px;
                width:700px;
                font-size: x-large;
                color:#ff3333;
                background-position: right;
                color:#00ffcc;
                
            }
           
            .abc{
                
                display:inline-block;
            }
            
            
            
        </style>
        
        
        
    </head>
    <body>
    <h3>Which Item You Want To Sale</h3>
        
    
        <div class="abc" id="div1">        
            <div class="abc">
        <form method="post" action="mobile.jsp">
        
        <input type = "Submit" value="Mobile Sale" style="font-size:10pt;color:white;background-color:green;border:3px solid #336600;padding:4px">
        </form>
            </div>   
            <div class="abc">  
            
        <form method="post" action="laptop.jsp">
        
        <input type = "Submit" value="Laptop Sale"style="font-size:10pt;color:white;background-color:green;border:3px solid #336600;padding:4px" >

        </form>
            </div>
            <div class="abc">
        <form method="post" action="cloths.jsp">
        
        <input type = "Submit" value="Cloths Sale"style="font-size:10pt;color:white;background-color:green;border:3px solid #336600;padding:4px">
        </form>
            </div>
        
        </div>

        
        
        <form method="post" action="admin_profile.jsp">
            <input type="submit" value="Go to Profile" class="btnp"style="font-size:10pt;color:white;background-color:green;border:3px solid #336600;padding:4px">
        </form>
        
  
     <div style="margin-top: 350px;">
     
        </div>
    </body>
</html>
