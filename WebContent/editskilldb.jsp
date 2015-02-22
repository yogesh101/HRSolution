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
        String code=(String)(session.getAttribute("ecode"));
        int ecode = Integer.parseInt(code); 
        
        String s1= request.getParameter("skill1");
        String l1= request.getParameter("level1");
        String s2= request.getParameter("skill2");
        String l2= request.getParameter("level2");
        String s3= request.getParameter("skill3");
        String l3= request.getParameter("level3");
        String s4= request.getParameter("skill4"); 
        String l4= request.getParameter("level4");
        String s5= request.getParameter("skill5");
        String l5= request.getParameter("level5");

        
        
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           
           
           String str="update skills set skill1='"+s1+"', level1='"+l1+"' where ecode="+ecode+" ";
           Statement st=con.createStatement();
           
           
           int update=st.executeUpdate(str);
          if(update>0)
          {
          RequestDispatcher rd= request.getRequestDispatcher("skillsuccess.jsp");
          rd.forward(request,response);
          }
          else
          {
          RequestDispatcher rd= request.getRequestDispatcher("addskills.jsp");
          rd.forward(request,response);
          }
          
          }
        catch(Exception e)
         {
    System.out.println(e);
    RequestDispatcher rd= request.getRequestDispatcher("addskills.jsp");
    rd.forward(request,response);
         }
         %>
  </body>
</html>
