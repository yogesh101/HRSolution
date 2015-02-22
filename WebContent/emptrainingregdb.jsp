<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.Date, java.sql.*, bean.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Human Resource Solution</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery.jcarousel.css" type="text/css" media="all" />
<!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
<link rel="shortcut icon" href="css/images/favicon.ico" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="js/func.js"></script>
</head>
<body>
<div class="shell">
  <div class="border">
    <div id="header">
      <h1 id="logo"><br /></h1><h1 id="logo"><br /></h1><h1 id="logo"><a href="#" class="notext">&lt;/HR SOLUTION</a></h1>
      <div class="socials right">
        <ul>
          <li><a href="#" class="rss">RSS</a></li>
          <li><a href="#" class="fb">Facebook</a></li>
          <li class="last"><a href="#" class="twit">Twitter</a></li>
        </ul>
      </div>
      <div class="cl">&nbsp;</div>
    </div>
    <div id="navigation">
      <ul>
        <li><a href="profile.jsp" class="active">Edit Profile</a></li>
        <li><a href="addskills.jsp">Add Skills</a></li>
       <!--  <li><a href="education.jsp">Add Qualification</a></li>
        <li><a href="experience.jsp">Add Work Experience</a></li>   -->
        <li><a href="Upload.jsp">Upload Resume</a></li>
        <li><a href="leaveapply.jsp">Leave Application</a></li>
        <li><a href="employeeslip.jsp">View Payslip</a></li>
        <li><a href="Changepwd.jsp">Change Password</a></li>
        <li><a href="Logout.jsp">Log out</a></li>
      </ul>
      <div class="cl">&nbsp;</div>
    </div>
    <div class="slider">
      <div class="slider-nav"> <a href="#" class="left notext">1</a> <a href="#" class="left notext">2</a> <a href="#" class="left notext">3</a> <a href="#" class="left notext">4</a>
        <div class="cl">&nbsp;</div>
      </div>
      <ul>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
        <li>
          <div class="item">
            <div class="text">
              <h3><em>achieve your</em></h3>
              <h2><em>TARGETS</em></h2>
            </div>
            <img src="css/images/slider01.gif" alt="" /> </div>
        </li>
      </ul>
    </div>
    <div id="main">
      <div id="content" class="left">
        <div class="highlight">
    
    
    <%! String code,fname,lname,email,cno;
     int ecode,update; %>
     <%
     String fname= request.getParameter("fname");
     fname=fname.toUpperCase();
      String lname= request.getParameter("lname");
      lname=lname.toUpperCase();
       String email= request.getParameter("email");
        String cno= request.getParameter("cno");
         String cid= request.getParameter("select");
          String code= request.getParameter("ecode");
    ecode=Integer.parseInt(code);
    System.out.println(fname+lname+email+cno+cid+code);
      try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Insert into EMPTRAININGREG values(?,?,?,?,?,?,?)";
           PreparedStatement st=con.prepareStatement(str);
         
           st.setInt(1,ecode);
           st.setString(2,fname);
           st.setString(3,lname);
           st.setString(4,email);
           st.setString(5,cno);
           st.setString(6,cid);
           st.setString(7,"PENDING");
            
         update= st.executeUpdate();
         
           System.out.println(update);
          if(update>0)
         {  %>
         
          <br></br> <center><h1 style="color: red;">EMPLOYEE REGISTERATION FOR TRAINING SUCCESSFULL</h1></center>
            <br></br> <center><h1 style="color: purple;">You will receive a confirmation mail from admin confirming your registration</h1></center>
         
          <%}
          else
          {
          %>
            <center><h1 style="color: red;">Your registration cannot be done. You might have already sent a request earlier ,kindly check your mail for confirmation details</h1></center>
          <%
          }
          }
          catch(Exception e)
          {
          System.out.println(e);
          }
          %>
          </div>
          </div>
          </div>
          </div>
          </div>
          
          
          
          
          
  </body>
</html>
