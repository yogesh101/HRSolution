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
        int ecode= Integer.parseInt(code);
        String fname= request.getParameter("fname");
        String lname= request.getParameter("lname");
        String uname= request.getParameter("username");
        String pass= request.getParameter("password");
        String pin= request.getParameter("pin");
        String add= request.getParameter("add");
        String city= request.getParameter("city"); 
        SimpleDateFormat sim = new SimpleDateFormat("dd-MMM-yyyy");
        Date d1 = new Date(request.getParameter("dob"));
        String dob= sim.format(d1);
        String contactno= request.getParameter("num");
        String designation= request.getParameter("designation");
        String location= request.getParameter("location");
        String email= request.getParameter("email");
        String exp= request.getParameter("experience");
        String gender=request.getParameter("gender");
        SimpleDateFormat  frm= new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss");
        Date d= new Date();
        String dor = frm.format(d);       
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Update employee SET fname=?, lname=?, uname=?, pin=?, address=?, city=?, dob=?, contactno=?, designation=?, location=?, dor=?,  email=?, gender=?, exp=? where ecode =? ";                                     
           PreparedStatement st=con.prepareStatement(str);
           st.setInt(15,ecode);
           st.setString(1,fname);
           st.setString(2,lname);
           st.setString(3,uname);
           //st.setString(4,pass);
           st.setString(4,pin);
           st.setString(5,add);
           st.setString(6,city);
           st.setString(7,dob);
           st.setString(8,contactno);
           st.setString(9,designation);
           st.setString(10,location);
           st.setString(11,dor);
           st.setString(12,email);
           st.setString(13,gender);
           st.setString(14,exp);
           int update=st.executeUpdate();
          if(update>0)
          {
          RequestDispatcher rd= request.getRequestDispatcher("editsuccess.jsp");
          rd.forward(request,response);
          }
          else
          {
          RequestDispatcher rd= request.getRequestDispatcher("profile.jsp");
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
