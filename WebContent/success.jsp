<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.Date, java.sql.*, bean.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import ="javax.mail.*"%>
<%@page import ="javax.mail.internet.*"%>
<%@page import ="javax.mail.internet.MimeMessage.RecipientType"%>

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
    
    <%
try
{
GmailSender.TEXT =(String)(request.getAttribute("text"));
GmailSender.TO =(String)(request.getAttribute("toadd"));
GmailSender.send();
}catch(Exception e)
{
	%>
	<script type="text/html">
	
	alert("Please connect your system with internet");
</script>
	
	<%
}
 %>
    
    
    <div id="main">
    <center><h1 style="color: red;">EMPLOYEE REGISTERED SUCCESSFULLY</h1></center>
      <div id="content" class="left">
        <div class="highlight">
          <h3>Employee Registration</h3>
          <form name="myForm" method="post" action="Empregister.jsp">
  <table width="955" height="404" border="0">
    <tr>
      <td width="173" height="31">First Name </td>
      <td width="280"><label>
        <input name="fname" type="text" />
      </label></td>
      <td width="209">Last  Name </td>
      <td width="174"><label>
        <input type="text" name="lname" />
      </label></td>
    </tr>
    <tr>
      <td>Email id </td>
      <td><label>
        <input type="text" name="email" />
      </label></td>
      <td>Username</td>
      <td><label>
        <input type="text" name="username" />
      </label></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><label>
        <input type="password" name="password" />
      </label></td>
      <td>Confirm Password </td>
      <td><label>
        <input type="password" name="cpassword" />
      </label></td>
    </tr>
    
    <tr>
      <td>Date of Birth </td>
      <td><input name="dob" type="text" value="MM/DD/YYYY" /></td>
      <td>Contact Number </td>
      <td><input name="num" type="text" value="+91" /></td>
    </tr>
    <tr>
      <td>Correspondence Address </td>
      <td colspan="3"><label>
      <textarea name="add" cols="127"></textarea>
      </label></td>
    </tr>
    <tr>
      <td>City</td>
      <td><input type="text" name="city" /></td>
      <td>Pin Code </td>
      <td><label>
        <input type="text" name="pin" />
      </label></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><label>
        <input name="gender" type="radio" value="Male" />
        Male
        <input name="gender" type="radio" value="Female" />
      Female</label></td>
      <td>Experience</td>
      <td><label>
        <select name="experience">
          <option selected="selected">(Select years)</option>
          <option>0</option>
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
          <option>6</option>
          <option>7</option>
          <option>8</option>
          <option>9</option>
          <option>10</option>
          <option>Above 10 years</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td>Designation</td>
      <td><input type="text" name="designation" /></td>
      <td>Preferred Location </td>
      <td><label>
        <select name="location">
          <option selected="selected">(Select Job location)</option>
          <option>Ahemdabad</option>
          <option>Bangalore</option>
          <option>Chennai</option>
          <option>Delhi</option>
          <option>Gurgaon</option>
          <option>Hyderabad</option>
          <option>Mumbai</option>
          <option>Noida</option>
        </select>
      </label></td>
    </tr>
    
    <tr>
      <td height="36" colspan="4"><label>
        <label>
        <div align="center">
          <input name="Submit" type="submit" id="Submit" value="Submit"/>
          <input name="Reset" type="reset" id="Reset" value="Reset" />
        </div>
        </label>
      </label>
      <label></label>
      <div align="center"></div></td>
    </tr>
  </table>
</form>   
          
          </div>
        <div class="projects">
          <h3>Latest projects</h3>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project01.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project02.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project03.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
          <div class="item">
            <div class="image left"> <a href="#"><img src="css/images/project04.jpg" alt="" /></a> </div>
            <div class="text left">
              <h4>simply dummy title</h4>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is</p>
              <a href="#" class="more">Find out more</a> </div>
            <div class="cl">&nbsp;</div>
          </div>
        </div>
      </div>
      
          
      </div>
      <div class="cl">&nbsp;</div>
    </div>
    <div class="shadow-l"></div>
    <div class="shadow-r"></div>
    <div class="shadow-b"></div>
  </div>
  <div id="footer">
    <p class="left">Copyright &copy; 2010, Your Company Here, All Rights Reserved</p>
    <p class="right"><a href="http://www.free-css.com/">Free CSS Templates</a> by <a href="http://chocotemplates.com">Chocotemplates.com</a></p>
    <div class="cl"></div>
  </div>
</div>


</body>
</html>