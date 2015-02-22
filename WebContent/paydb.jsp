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
  <%! static int slipid=2; %>
  <%
   slipid++; 
   application.setAttribute("slipid",slipid);
   %>
    <%
      
        
        try
          {
        	
        	String code= request.getParameter("id");
            int ecode=Integer.parseInt(code);
              
              String name= request.getParameter("names");
              System.out.println(name);
              name=name.toUpperCase();
              
              String uname= request.getParameter("username");
              
              SimpleDateFormat sim = new SimpleDateFormat("dd-MMM-yyyy");
              Date d1 = new Date(request.getParameter("fdate"));
              String fdate= sim.format(d1);
              
              SimpleDateFormat sim1 = new SimpleDateFormat("dd-MMM-yyyy");
              Date d2 = new Date(request.getParameter("tdate"));
              String tdate= sim1.format(d2);
              
              String contactno= request.getParameter("cno");
              
              String designation= request.getParameter("designation");    
              designation=designation.toUpperCase();
              
              String email= request.getParameter("email");
              
              String exp= request.getParameter("exp");
              exp=exp.toUpperCase();
              
              String thrs= request.getParameter("thrs");
              
              String whrs= request.getParameter("whrs");
              
              String pf= request.getParameter("pf");
              
              String da= request.getParameter("da");
              
              String ta= request.getParameter("ta");
              
              String salary= request.getParameter("salary");
              
              String cno=request.getParameter("cno");
              
              Float s=Float.parseFloat(salary);
              
              String hra="5%";
              float da1=(float)(0.20*s);
              float pf1,ta1,hra1;
              pf1=ta1=hra1=(float)(0.05*s);
              
              float add = (ta1*2) + (da1);
              float ded = pf1;
              
              String das= new Float(da1).toString();
              String tas= new Float(ta1).toString();
              String hras= new Float(pf1).toString();
              String pfs= new Float(hra1).toString();
              
              float net = s+add-ded;
              String nets= new Float(net).toString();
        	
        	
        	
        	
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Insert into empslip values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
           PreparedStatement st=con.prepareStatement(str);
           st.setString(18,cno);
           st.setInt(17,slipid);
           st.setInt(1,ecode);
           st.setString(2,name);
           st.setString(3,email);
           st.setString(4,uname);
           st.setString(5,designation);
           st.setString(6,exp);
           st.setString(7,fdate);
           st.setString(8,tdate);
           st.setString(9,thrs);
           st.setString(10,whrs);
           st.setString(11,salary);
           st.setString(12,pfs);
           st.setString(13,das);
           st.setString(14,tas);
           st.setString(15,hras);
           st.setString(16,nets);
           int update=st.executeUpdate();
          if(update>0)
          {
          
          RequestDispatcher rd= request.getRequestDispatcher("payslipsuccess.jsp");
          rd.forward(request,response);
          }
          else
          {
          RequestDispatcher rd= request.getRequestDispatcher("generation.jsp");
          rd.forward(request,response);
          }
          }
        catch(Exception e)
         {
 			out.println(e);
   
         }
         %>
  </body>
</html>
