
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="header.jsp" %>
<%@include file="connect.jsp" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
    </head>
    <style>
         body {
  background-image: url('Images/pic22.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}</style>
    <body>
    <center>
        <h2>Relevant data are as follows: </h2>
        <table style="border:0px solid black;margin-top: 50px;">
        
        <%
        try
        {
            String query[]= new String[7];
            query[0]="select count(*) from usertbl";
            query[1]="select count(*) from admintbl";
            query[2]="select count(*) from mobile";
            query[3]="select count(*) from laptop";
            query[4]="select count(*) from cloths";
            query[5]="select count(*) from purchase where deliver='delivered'";
            query[6]="select count(*) from purchase where deliver='not delivered'";
            Statement st=con.createStatement();
            for(int i=0;i<query.length;i++)
            {
                ResultSet rs=st.executeQuery(query[i]);
                if(rs.next())
                {
                    if(i==0)
                    {
                           out.println("<tr><td>Total Number of users: </td><td>"+rs.getString(1)+"</td></tr>");
                    }
                    else if(i==1)
                    {
                           out.println("<tr><td>Total Number of Admin: </td><td>"+rs.getString(1)+"</td></tr>");
                    }
                    else if(i==2)
                    {
                           out.println("<tr><td>Total Number of Mobile Products: </td><td>"+rs.getString(1)+"</td></tr>");
                    }
                    else if(i==3)
                    {
                           out.println("<tr><td>Total Number of Laptop Products: </td><td>"+rs.getString(1)+"</td></tr>");
                    }
                    else if(i==4)
                    {
                           out.println("<tr><td>Total Number of Cloths Product : </td><td>"+rs.getString(1)+"</td></tr>");
                    }
                    else if(i==5)
                    {
                           out.println("<tr><td>Total Number of Products Delivered : </td><td>"+rs.getString(1)+"</td></tr>");
                    }
                    else if(i==6)
                    {
                           out.println("<tr><td>Total Number of Product Not Delivered: </td><td>"+rs.getString(1)+"</td></tr>");
                    }
                }
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        %>
        </table>
    </center>
        
    </body>
</html>
 