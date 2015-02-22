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
  <%! String olddb; %>
   <%
        String code=(String)(session.getAttribute("ecode"));
        int ecode= Integer.parseInt(code);
        olddb=(String)(session.getAttribute("pass"));
        
        String oldpass= request.getParameter("oldpwd");
        String newpass= request.getParameter("newpwd");
        String newcpass= request.getParameter("newcpwd");
        
       if(olddb.equals(oldpass)) 
             { 
         
             
        try
          {
       
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
            String str="Update employee SET pass=? where ecode=? ";  
           PreparedStatement st=con.prepareStatement(str);
           st.setInt(2,ecode);
           st.setString(1,newpass);
           int update=st.executeUpdate();
          if(update>0)
          {
          RequestDispatcher rd= request.getRequestDispatcher("chngpwdsuccess.jsp");
          rd.forward(request,response);
          }
          else
          {
          RequestDispatcher rd= request.getRequestDispatcher("Changepwd.jsp");
          rd.forward(request,response);
          }
         }
         catch(Exception e)
         {
    System.out.println(e);
         }
         } 
          else
          {
           RequestDispatcher rd= request.getRequestDispatcher("errorchngpwd.jsp");
          rd.forward(request,response);
          
          }
          
          
        
         %>
  </body>
</html>
