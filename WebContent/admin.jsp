<%@ page language="java" import="java.util.* , bean.* , java.sql.*;" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>Registration page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
   <%
   String ecode = request.getParameter("user");
   String password = request.getParameter("password");
   String name;
 
          try
           {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
            String str= "Select * from ADMIN where username=? and password= ?";
           PreparedStatement ps = con.prepareStatement(str);
           ps.setString(1,ecode);
           ps.setString(2,password);
           ResultSet rs = ps.executeQuery();
           if(rs.next())
           {          
           session.setAttribute("ecode",ecode);
           RequestDispatcher rd= request.getRequestDispatcher("register.jsp");
           rd.forward(request,response);
           }          
           else
           {
           RequestDispatcher rd= request.getRequestDispatcher("error2.jsp");
          rd.forward(request,response);
           }  
          }
           catch(Exception e)
           {
        	   RequestDispatcher rd= request.getRequestDispatcher("error2.jsp");
               rd.forward(request,response);
           }
            %>
            </body>
            </html> 
           