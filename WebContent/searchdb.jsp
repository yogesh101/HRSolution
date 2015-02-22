<%@ page language="java" import="java.util.*, bean.* , java.sql.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Personnel Administration System</title>
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
          <h3>Searched Employees</h3>
          <%! String name;
      int flag=0;  int ecode; %>
    <%
               
        String fname= request.getParameter("fname");
        String lname= request.getParameter("lname");
    // fname=fname.toUpperCase();
      //lname= lname.toUpperCase();
        String designation= request.getParameter("designation");
     //  designation=designation.toUpperCase();
        String exp= request.getParameter("exp");
      //exp=exp.toUpperCase();
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Select fname,lname,ecode from employee where fname=? and lname=? and designation=? and exp=?";
           PreparedStatement st=con.prepareStatement(str);
           st.setString(1,fname);
           st.setString(2,lname);
           st.setString(3,designation);
           st.setString(4,exp);
           ResultSet rs=st.executeQuery();
           while(rs.next())
           {
           flag=1;
           name= rs.getString(1)+" "+rs.getString(2);
            ecode= rs.getInt(3) ;
           
           %>
           <p><br/><B>NAME</B>&nbsp;&nbsp;&nbsp;<%= name %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>EMPLOYEE CODE</b>&nbsp;&nbsp;&nbsp;<%="     "+ ecode %></p> 
           <% 
           }
           if(flag==0)
           {
           %>
           <p><%="No record found !!"%></p> 
           <%
           }
           }
        catch(Exception e)
         {
    System.out.println(e);
         }
         %>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
     <h3>Search Employees</h3>
          <form id="empsearch" name="empsearch" method="post" action="searchdb.jsp"> 
  <table width="562" height="158" border="0">
    <tr>
      <td width="244">Entert name</td>
      <td width="308"><label>
        <input name="fname" type="text" value="first name" />
        <input name="lname" type="text" value="Last name" />
      </label></td>
    </tr>
    <tr>
      <td>Enter designation </td>
      <td><label>
        <input type="text" name="designation" />
      </label></td>
    </tr>
    <tr>
      <td>Enter experience </td>
      <td><label>
        <input type="text" name="exp" />
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><label>
          <div align="center">
            <input type="submit" name="Submit" value="Search " />
          </div>
        </label>
          <div align="center"></div></td>
    </tr>
  </table>
</form>
<label></label>
<p>&nbsp;</p>
<p>&nbsp;</p>

 </div>
        
 
 
 <br/><br/>
 
         
  <div id="footer">
    <p class="left">Copyright &copy; 2010, Your Company Here, All Rights Reserved</p>
    
    <div class="cl"></div></div>
 

</body>
</html>