
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
      <h1 id="logo"><a href="#" class="notext">HR SOLUTION CORP.</a></h1>
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
     <!--   <li><a href="education.jsp">Add Qualification</a></li>
        <li><a href="experience.jsp">Add Work Experience</a></li>  -->
        <li><a href="Upload.jsp">Upload Resume</a></li>
        <li><a href="uploadphoto.jsp">Upload Photo</a></li>
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




   <br></br>
    <div id="main">
      <div id="content" class="left">
        <div class="highlight">
        <table width="804" border="0" valign="1000">
        <%!int ref=0; %>
        <%
        String code=request.getParameter("id");
       
        int ecode=Integer.parseInt(code);
        
     
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Select * from empleaveapp where ecode=? and status=?";
           PreparedStatement st=con.prepareStatement(str); 
           st.setInt(1,ecode);
           st.setString(2,"PENDING");
           ResultSet rs=st.executeQuery();
          while(rs.next())
          {
          ref=rs.getInt(10);
            %>
  <tr>
    <th scope="row">REFERENCE ID </th>
    <td><%=rs.getInt(10) %></td>
  </tr>
  <tr>
    <th width="319" scope="row">FIRST NAME </th>
    <td width="469"><%=rs.getString(1) %></td>
  </tr>
  <tr>
    <th scope="row">LAST NAME </th>
    <td><%=rs.getString(2) %></td>
  </tr>
  <tr>
    <th scope="row">LEAVE SUBJECT</th>
    <td><%=rs.getString(3) %></td>
  </tr>
  <tr>
    <th scope="row">LEAVE DATE</th>
    <td><%=rs.getString(4) %></td>
  </tr>
  <tr>
    <th scope="row">LEAVE REASON</th>
    <td><%=rs.getString(5) %></td>
  </tr>
  <tr>
    <th scope="row">EMPLOYEE CODE </th>
    <td><%=rs.getInt(6) %></td>
  </tr>
  <tr>
    <th scope="row">FROM DATE </th>
    <td><%=rs.getString(8) %></td>
  </tr>
  <tr>
    <th scope="row">TO  DATE</th>
    <td><%=rs.getString(9) %></td>
  </tr>
  
  <tr>
    <th scope="row">STATUS</th>
    <td><%=rs.getString(7) %></td>
  </tr>
  
</table>
<%
}
}
catch(Exception e)
{
System.out.println(e);
}
%>
<form id="leaveapproval" method="post" action="decide.jsp?id=<%=ecode%>&refid=<%=ref%>">

<table width="490" height="60" border="0">
    <tr>
      <td width="130"><label>
        <input name="approval" type="radio" value="approved" />
      Approve 
      <input name="approval" type="radio" value="denied" />
      Deny</label></td>
      <td width="200"><label>
        <div align="left">
          <input type="submit" name="Submit2" value="Submit" />
          </div>
      </label></td>
    </tr>
  </table>
  </form>
</div>
       
  <div id="footer">
    <p class="left">Copyright &copy; 2010, Your Company Here, All Rights Reserved</p>
   
    <div class="cl"></div>
  </div>
</div>
</body>
</html>