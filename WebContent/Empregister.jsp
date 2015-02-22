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
        	
            int ecode=100000+(int)(Math.random()*999999); 
            
            String fname= request.getParameter("fname");
            fname=fname.toUpperCase();
            String lname= request.getParameter("lname");
            lname=lname.toUpperCase();
            String uname= request.getParameter("username");
            String pass= request.getParameter("password");
            String pin= request.getParameter("pin");
            String address= request.getParameter("address");
            address=address.toUpperCase();
            String city= request.getParameter("city"); 
            city=city.toUpperCase();
            SimpleDateFormat sim = new SimpleDateFormat("dd-MMM-yyyy");
            Date d1 = new Date(request.getParameter("dob"));
            String dob= sim.format(d1);
            String contactno= request.getParameter("num");
            String designation= request.getParameter("designation");
            designation=designation.toUpperCase();
            String location= request.getParameter("location");
            String email= request.getParameter("email");
            String exp= request.getParameter("experience");
            exp=exp.toUpperCase();
            String gender=request.getParameter("gender");
            SimpleDateFormat  frm= new SimpleDateFormat("dd-MMM-yyyy:hh:mm:ss");
            Date d= new Date();
            String dor = frm.format(d);
            
            String text = "Your Employee code is : " +ecode +" Password is : " +pass ;
        	
            try{
                GmailSender.TEXT =text;
                GmailSender.TO =email;
                GmailSender.send();
                
                
        	
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Insert into employee values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
           PreparedStatement st=con.prepareStatement(str);
           st.setInt(1,ecode);
           st.setString(2,fname);
           st.setString(3,lname);
           st.setString(4,uname);
           st.setString(5,pass);
           st.setString(6,pin);
           st.setString(7,address);
           st.setString(8,city);
           st.setString(9,dob);
           st.setString(10,contactno);
           st.setString(11,designation);
           st.setString(12,location);
           st.setString(13,dor);
           st.setString(14,email);
           st.setString(15,gender);
           st.setString(16,exp);
           int update=st.executeUpdate();
           
           
          if(update>0)
          {
          request.setAttribute("text",text);
          request.setAttribute("toadd",email);
          RequestDispatcher rd= request.getRequestDispatcher("success.jsp");
          rd.forward(request,response);
          }
          else
          {
          RequestDispatcher rd= request.getRequestDispatcher("register1.jsp");
          rd.forward(request,response);
          }
            }catch(Exception e){out.println("INternet connection is not valid");}
          }
        catch(Exception e)
         {
    System.out.println(e);
    RequestDispatcher rd= request.getRequestDispatcher("register1.jsp");
    rd.forward(request,response);
         }
         %>
  </body>
</html>
