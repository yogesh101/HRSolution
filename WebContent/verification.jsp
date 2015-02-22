<%@ page language="java" import="java.util.* , bean.* , java.sql.*;" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
   String ecode = request.getParameter("ecode");
   String pass = request.getParameter("pass");
   String name;
   int count=0;
          try
           {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
            String str= "Select fname, lname from employee where ecode= ? and pass= ?";
           PreparedStatement ps = con.prepareStatement(str);
           ps.setString(1,ecode);
           ps.setString(2,pass);
           ResultSet rs = ps.executeQuery();
           while(rs.next())
           {
           count++;
           String fname = rs.getString(1);
           String lname = rs.getString(2);
           name = fname+" "+lname;
           request.setAttribute("name", name);
           
           }
           if(count>0)
           {
        	
           session.setAttribute("ecode",ecode);
           session.setAttribute("pass",pass);
           
           RequestDispatcher rd= request.getRequestDispatcher("loggedin.jsp");
          rd.forward(request,response);
           }
           else
           {
           RequestDispatcher rd= request.getRequestDispatcher("error1.jsp");
          rd.forward(request,response);
           }  
          }
           catch(Exception e)
           {
        	   RequestDispatcher rd= request.getRequestDispatcher("error1.jsp");
               rd.forward(request,response);
           }
            %>
            </body>
            </html> 
           