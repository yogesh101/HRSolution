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
      <h1 id="logo"><br /></h1><h1 id="logo"><br /></h1><h1 id="logo"><a href="#" class="notext">&lt;/HR SOLUTION CORP.</a></h1>
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
      <!-- <li><a href="education.jsp">Add Qualification</a></li>
        <li><a href="experience.jsp">Add Work Experience</a></li> -->
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
        
       
     <centre><h3>Select your training module </h3></centre>
     <%! String code,fname,lname,des,email,cno;
     int ecode; %>
     <%
    code=request.getParameter("id");
    ecode=Integer.parseInt(code);
    
      try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           
           String str= "Select fname, lname, email, contactno , designation from employee where ecode=?";
           PreparedStatement ps = con.prepareStatement(str);
           ps.setInt(1,ecode);
           ResultSet rs = ps.executeQuery();
           while(rs.next())
           {
           fname = rs.getString(1);
           lname = rs.getString(2);
           email = rs.getString(3);
           cno   = rs.getString(4);
           des = rs.getString(5);
           }
           
           
          }
        catch(Exception e)
         {
    System.out.println(e);
        }
   
   %>
   
   <form id="form1" name="form1" method="post" action="emptrainingregdb.jsp">
  <table width="900" height="382" border="1">
    <tr>
      <td width="232"><strong>FIRST NAME </strong></td>
      <td width="250"><label>
        <input type="text" name="fname" value='<%=fname %>'/>
      </label></td>
      <td width="243"><strong>LAST NAME </strong></td>
      <td width="240"><label>
        <input type="text" name="lname" value='<%=lname %>'/>
      </label></td>
    </tr>
    <tr>
      <td><strong>EMPLOYEE CODE </strong></td>
      <td><label>
        <input type="text" name="ecode" value='<%=code %>'/>
      </label></td>
      <td><strong>EMAIL ID </strong></td>
      <td><label>
        <input type="text" name="email" value='<%=email %>'/>
      </label></td>
    </tr>
    <tr>
      <td><strong>CONTACT NO.</strong> </td>
      <td><label>
        <input type="text" name="cno" value='<%=cno %>'/>
      </label></td>
      <td><strong>COURSE MODULE</strong></td>
      <td><label>
        <select name="select">
          <option selected="selected">(SELECT)</option>
          <option>C</option>
          <option>Java</option>
          <option>.Net</option>
          <option>Oracle</option>
          <%!String cid,cname,list; %>
      <% try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Select course_id, course_name  from trainings where course_designation=?";
           PreparedStatement st=con.prepareStatement(str);
           st.setString(1,des);
           ResultSet rs=st.executeQuery();
           while(rs.next())
           {
           cid=rs.getString(1);
           cname=rs.getString(2);
           list=cid+" "+cname;
           %>
            <option><%=list%></option>
<%
}
}
catch(Exception e)
{
}
 %> 
        </select>
      </label></td>
    </tr>
    <tr>
      <td colspan="4"><label>
          <div align="center">
            <input type="submit" name="Submit" value="Submit" />
          </div>
        </label></td>
    </tr>
  </table>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
