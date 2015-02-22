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
        String code=request.getParameter("id");
       
        int ecode=Integer.parseInt(code);
        
     
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Delete from employee where ecode=?";
           PreparedStatement st=con.prepareStatement(str);
           st.setInt(1,ecode);
          
           int update=st.executeUpdate();
          if(update>0)
          {
          RequestDispatcher rd= request.getRequestDispatcher("deletesuccess.jsp");
          rd.forward(request,response);
          }
          else
          {
          RequestDispatcher rd= request.getRequestDispatcher("viewdelete.jsp");
          rd.forward(request,response);
          }
          }
        catch(Exception e)
         {
    System.out.println(e);
         }
         %>
  </body>
</html>