
<%@include file="header.jsp" %>
<%@page import="java.sql.* " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
         body {
  background-image: url('Images/pic2.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>            
        <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
    
    if (x==null || x=="") {
        alert("Required Field Must Enter Email id ");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  PASSWORD");
        return false;
    }
}



</script>   
 
    </head>
<body><br>
    <center>
        <h1 class="heading">
            Admin Login
        </h1>
    </center>
    <center>
        <form method="post" action="admin_login.jsp" onsubmit="return validateForm();" name="myForm">
             <br>
             <br>
           <table>
            <tr><td><h3>Email</td><td> <input type="text" name="t1" class="btn"><br></td></tr>
            <tr><td><h3>Password</td><td><input type="password" name="t2" class="btn"><br></td></tr>
           
            <tr>  <td></td><td><input type="Submit" value="Login" class="btn"style="font-size:10pt;color:white;background-color:green;border:3px solid #336600;padding:4px" /></td></tr>
           </table>
        </form>
       
        </center>     
           <%@include file="connect.jsp" %>  
<%
try
    {
       String email,password;                     
       email=request.getParameter("t1");
       password =request.getParameter("t2");
       PreparedStatement pst=con.prepareStatement("select email,password from admintbl where email=? and password=?");
       pst.setString(1, email);
       pst.setString(2,password);
       HttpSession se=request.getSession();
       ResultSet rs=pst.executeQuery();
       if( email!=null && password!=null )
          { 
            while(rs.next())
                  {     
                 se.setAttribute("id", rs.getString(1));
                 response.sendRedirect("admin_profile.jsp");
            }
           }
        }
        catch(Exception e)
         {
            out.println(e);
        }
        %>   
    <div style="position:fixed;width:100%; margin-top: 220px;">
    
    </div>
</body>
</html>