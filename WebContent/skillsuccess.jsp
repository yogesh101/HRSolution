<%@ page language="java" import="java.util.* , java.sql.*, bean.*" pageEncoding="ISO-8859-1"%>
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
        <li><a href="profile.jsp" class="active">Edit Profile</a></li>
        <li><a href="addskills.jsp">Add Skills</a></li>
      <!-- <li><a href="education.jsp">Add Qualification</a></li>
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
    <div id="main">
     <center><h3 style="color: red;">SKILLS ADDED SUCCESSFULLY</h3></center>
      <div id="content" class="left">
        <div class="highlight">

<form id="addskill" name="addskill" method="post" action="addskilldb.jsp">
  <table width="806" height="351" border="0">
    <tr>
      <th width="61" scope="col">&nbsp;</th>
      <th width="186" scope="col">SKILLS</th>
      <th width="470" scope="col">LEVEL</th>
    </tr>
    <tr>
      <td>1.</td>
      <td><label>
        <input type="text" name="skill1" />
      </label></td>
      <td><label>
        <input name="level1" type="radio" value="beginner" />
        Beginner
        <input name="level1" type="radio" value="intermediate" />
        Intermediate
        <input name="level1" type="radio" value="experienced" />
        Experienced</label></td>
    </tr>
    <tr>
      <td>2.</td>
      <td><input type="text" name="skill2" /></td>
      <td><label>
        <input name="level2" type="radio" value="beginner" />
        Beginner
        <input name="level2" type="radio" value="intermediate" />
        Intermediate
        <input name="level2" type="radio" value="experienced" />
        Experienced</label></td>
    </tr>
    <tr>
      <td>3.</td>
      <td><input type="text" name="skill3" /></td>
      <td><label>
        <input name="level3" type="radio" value="beginner" />
        Beginner
        <input name="level3" type="radio" value="intermediate" />
        Intermediate
        <input name="level3" type="radio" value="experinced" />
        Experienced</label></td>
    </tr>
    <tr>
      <td>4.</td>
      <td><input type="text" name="skill4" /></td>
      <td><label>
        <input name="level4" type="radio" value="beginner" />
        Beginner
        <input name="level4" type="radio" value="intermediate" />
        Intermediate
        <input name="leve41" type="radio" value="experienced" />
        Experienced</label></td>
    </tr>
    <tr>
      <td>5.</td>
      <td><input type="text" name="skill5" /></td>
      <td><label>
        <input name="level5" type="radio" value="beginner" />
        Beginner
        <input name="level5" type="radio" value="intermediate" />
        Intermediate
        <input name="level5" type="radio" value="experienced" />
        Experienced</label></td>
    </tr>
    <tr>
      <td colspan="3"><label>
          <div align="center">
            <input type="submit" name="Submit" value="Submit" />
            <input type="submit" name="Submit2" value="Add more .." />
          </div>
        </label></td>
    </tr>
  </table>
</form>
</div>
        
  <div id="footer">
    <p class="left">Copyright &copy; 2014, CMC LTD, All Rights Reserved</p>
    
    <div class="cl"></div>
  </div>
</div>
</body>
</html>  