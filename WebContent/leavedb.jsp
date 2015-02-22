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
  
  <%!// static int refid=0; %>
  <%
   //refid++; 
  // application.setAttribute("refid",refid);
   %>
  <%
        
        
        String fname= request.getParameter("fname");
        fname=fname.toUpperCase();
        String lname= request.getParameter("lname");
        lname=lname.toUpperCase();
       
       SimpleDateFormat sim1 = new SimpleDateFormat("dd-MMM-yyyy");
        Date d1 = new Date(request.getParameter("dates"));
        String dates= sim1.format(d1);
        
         SimpleDateFormat sim2 = new SimpleDateFormat("dd-MMM-yyyy");
        Date d2 = new Date(request.getParameter("fdate"));
        String fdate= sim2.format(d2);
        
         SimpleDateFormat sim3 = new SimpleDateFormat("dd-MMM-yyyy");
        Date d3 = new Date(request.getParameter("tdate"));
        String tdate= sim3.format(d3);
        
         String code= request.getParameter("ecode");
        int ecode=Integer.parseInt(code);
         
          String subject= request.getParameter("subject");
           String reason= request.getParameter("reason");
           
        String status="PENDING";
        
        //Integer id=(Integer)(application.getAttribute("refid"));
        int ref_id;//=id.intValue();
       
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           Statement st1=con.createStatement();
           ResultSet rs1=st1.executeQuery("select max(ref_id) from empleaveapp");
           rs1.next();
           ref_id=rs1.getInt(1);
           
           String str="Insert into empleaveapp values(?,?,?,?,?,?,?,?,?,?)";
           PreparedStatement st=con.prepareStatement(str);
           
           st.setString(1,fname);
           st.setString(2,lname);
           st.setString(3,subject);
           st.setString(4,dates);
           st.setString(5,reason);
           st.setInt(6,ecode);
           st.setString(7,status);
           st.setString(8,fdate);
           st.setString(9,tdate);
           st.setInt(10,++ref_id);
           int update=st.executeUpdate();
          if(update>0)
          {
        
          RequestDispatcher rd= request.getRequestDispatcher("Leavesuccess.jsp");
          rd.forward(request,response);
          }
          else
          {
          RequestDispatcher rd= request.getRequestDispatcher("leaveapply.jsp");
          rd.forward(request,response);
          }
          }
        catch(Exception e)
         {
    
        	RequestDispatcher rd= request.getRequestDispatcher("leaveapply.jsp");
            rd.forward(request,response);
         }
         %>
  </body>
</html>
