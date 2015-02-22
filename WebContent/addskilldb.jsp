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
           
           Statement st1=con.createStatement();
           String sql1="select * from skills where ecode="+ecode+" ";
           ResultSet rs=st1.executeQuery(sql1);
           if(rs.next())
           {
        	   RequestDispatcher rd=request.getRequestDispatcher("sk.jsp");
        	   rd.forward(request, response);
           }else
           {
           
           
           String str="Insert into skills values(?,?,?,?,?,?,?,?,?,?,?)";
           
           PreparedStatement st=con.prepareStatement(str);
           st.setInt(1,ecode);
           st.setString(2,s1);
           st.setString(3,l1);
           st.setString(4,s2);
           st.setString(5,l2);
           st.setString(6,s3);
           st.setString(7,l3);
           st.setString(8,s4);
           st.setString(9,l4);
           st.setString(10,s5);
           st.setString(11,l5);
           int update=st.executeUpdate();
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
