<%@ page language="java" import="java.util.Date, java.sql.*, bean.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
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
   try
   {
   String login=request.getParameter("login");
   if(login.equalsIgnoreCase("Employee"))
   {
    RequestDispatcher rd= request.getRequestDispatcher("emplogin.jsp");
          rd.forward(request,response);
    }
    else
    {
     RequestDispatcher rd= request.getRequestDispatcher("hrlogin.jsp");
          rd.forward(request,response); 
    }
   }catch(Exception e)
   {
	   %>
	   <jsp:forward page="login1.jsp"></jsp:forward>
	   <%
   }
    %>
    </body>
</html>
         