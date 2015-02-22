<%@ page language="java" import="java.util.*, bean.* , java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
        <li><a href="register.jsp" class="active">Registration</a></li>
        <li><a href="search.jsp">Search</a></li>
        <li><a href="viewdelete.jsp">Details</a></li>
        <li><a href="payroll.jsp">Payroll</a></li>
        
        <li><a href="adminleave.jsp">Leave Sanction</a></li>
        <li><a href="Logout.jsp">Logout</a></li>
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
        <table width="804" border="0">
        <%
        String code=request.getParameter("id");
       
        int ecode=Integer.parseInt(code);
        
     
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Select * from employee where ecode=?";
           PreparedStatement st=con.prepareStatement(str); 
           st.setInt(1,ecode);
           ResultSet rs=st.executeQuery();
          while(rs.next())
          {
           %>
           <br/>
           <br/>
           <br/>
  <tr>
    <th scope="row">EMPLOYEE CODE </th>
    <td><%=rs.getInt(1) %></td>
  </tr>
  <tr>
    <th width="319" scope="row">FIRST NAME </th>
    <td width="469"><%=rs.getString(2) %></td>
  </tr>
  <tr>
    <th scope="row">LAST NAME </th>
    <td><%=rs.getString(3) %></td>
  </tr>
  <tr>
    <th scope="row">USERNAME</th>
    <td><%=rs.getString(4) %></td>
  </tr>
  <tr>
    <th scope="row">PASSWORD</th>
    <td><%=rs.getString(5) %></td>
  </tr>
  <tr>
    <th scope="row">DATE OF BIRTH </th>
    <td><%=rs.getString(9) %></td>
  </tr>
  <tr>
    <th scope="row">CORRESPONDENCE ADDRESS </th>
    <td><%=rs.getString(7) %></td>
  </tr>
  <tr>
    <th scope="row">CITY</th>
    <td><%=rs.getString(8) %></td>
  </tr>
  <tr>
    <th scope="row">PIN CODE </th>
    <td><%=rs.getString(6) %></td>
  </tr>
  <tr>
    <th scope="row">CONTACT NUMBER </th>
    <td><%=rs.getString(10) %></td>
  </tr>
  <tr>
    <th scope="row">DESIGNATION</th>
    <td><%=rs.getString(11) %></td>
  </tr>
  <tr>
    <th scope="row">EMAIL ID </th>
    <td><%=rs.getString(14) %></td>
  </tr>
  <tr>
    <th scope="row">GENDER</th>
    <td><%=rs.getString(15) %></td>
  </tr>
  <tr>
    <th scope="row">EXPERIENCE</th>
    <td><%=rs.getString(16) %></td>
  </tr>
  <tr>
    <th scope="row">LOCATION</th>
    <td><%=rs.getString(12) %></td>
  </tr>
  <tr>
    <th scope="row">REGISTRATION DATE </th>
    <td><%=rs.getString(13) %></td>
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
</div>
       
       
       
 
 
 <br/><br/>
 
         
  <div id="footer">
    <p class="left">Copyright &copy; 2010, Your Company Here, All Rights Reserved</p>
    
    <div class="cl"></div></div>
 

</body>
</html>