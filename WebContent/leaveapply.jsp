<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.Date, java.sql.*, bean.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
<script type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</script>
</head>
<body onload="noBack();" 	onpageshow="if (event.persisted) noBack();" onunload="">


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
        <li><a href="experience.jsp">Add Work Experience</a></li> -->
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
      <div id="content" class="left">
        <div class="highlight">
       <%! String fname,lname,ecode,cstat;%> 
        
<%
    ecode = (String)(session.getAttribute("ecode"));
   int count=0; int sent=0;
   int empcode=Integer.parseInt(ecode);
String stat="Pending";
          try
           {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           
           String query="Select status from empleaveapp where ref_id=(select max(ref_id) from empleaveapp where ecode="+empcode+")" ;
           Statement statement = con.createStatement();
           ResultSet status = statement.executeQuery(query);
           while(status.next())
           {
           sent++;
           cstat=status.getString(1);
           }
           if(sent>0)
           {
           System.out.println(cstat);
          out.println("Your current status of last application sent is " +cstat + "!!!");
           }
           else
           {
           out.println("You have not sent an application yet so no status available of leaves");
           }
                                              
           String str= "Select fname, lname from employee where ecode=?";
           PreparedStatement ps = con.prepareStatement(str);
           ps.setString(1,ecode);
           ResultSet rs = ps.executeQuery();
           while(rs.next())
           {
           fname = rs.getString(1);
           lname = rs.getString(2);
           }
           String str1="Select status from empleaveapp where ecode=?";
           PreparedStatement st=con.prepareStatement(str1);
           st.setInt(1,empcode);
           ResultSet rs1 = st.executeQuery();
           while(rs1.next())
           {
          count++;
          stat= rs1.getString(1);
          System.out.println(stat);
            }
            System.out.println(count);
            if(count>0)
            {
            if(stat.equalsIgnoreCase("Approved")||stat.equalsIgnoreCase("Denied"))
            {
            %>
<form id="leave" name="leave" method="post" action="leavedb.jsp">
  <table width="992" height="377" border="0">
    
    <tr>
      <th scope="row">FROM</th>
      <td><label></label>
          <label>
          <input type="text" name="fname" value='<%=fname %>'/>
          <input type="text" name="lname" value='<%=lname %>'/>
        </label></td>
    </tr>
    <tr>
      <th scope="row">EMPLOYEE CODE </th>
      <td><input type="text" name="ecode" value='<%=ecode %>'/></td>
    </tr>
    <tr>
      <th scope="row">SUBJECT</th>
      <td><label>
        <textarea name="subject" cols="100"></textarea>
      </label></td>
    </tr>
    <tr>
      <th scope="row">DATE</th>
      <td><input type="text" name="dates" value="MM/DD/YYYY"/></td>
    </tr>
    <tr>
      <th scope="row">REASON</th>
      <td><textarea name="reason" cols="100"></textarea></td>
    </tr>
    <tr>
      <th scope="row">LEAVE PERIOD</th>
            <td><label>FROM
          <input name="fdate" type="text" value="MM/DD/YYYY" />
     &nbsp; &nbsp; &nbsp;
      TO
      <input name="tdate" type="text" value="MM/DD/YYYY" />
      </label></td>
            
    </tr>
    <tr>
      <th colspan="2" scope="row"><label>
        <input type="submit" name="Submit" value="Submit" />
      </label></th>
    </tr>
  </table>
</form> 
<% 
}
else
{
%>
<b><%="You already have an application waiting to be approved so you cannot apply for further leaves"%></b>
<%
}
}
else
{
 %>
 <form id="leave" name="leave" method="post" action="leavedb.jsp">
  <table width="992" height="377" border="0">
    
    <tr>
      <th scope="row">FROM</th>
      <td><label></label>
          <label>
          <input type="text" name="fname" value='<%=fname %>'/>
          <input type="text" name="lname" value='<%=lname %>'/>
        </label></td>
    </tr>
    <tr>
      <th scope="row">EMPLOYEE CODE </th>
      <td><input type="text" name="ecode" value='<%=ecode %>'/></td>
    </tr>
    <tr>
      <th scope="row">SUBJECT</th>
      <td><label>
        <textarea name="subject" cols="100"></textarea>
      </label></td>
    </tr>
    <tr>
      <th scope="row">DATE</th>
      <td><input type="text" name="dates" value="MM/DD/YYYY"/></td>
    </tr>
    <tr>
      <th scope="row">REASON</th>
      <td><textarea name="reason" cols="100"></textarea></td>
    </tr>
    <tr>
      <th scope="row">LEAVE PERIOD</th>
            <td><label>FROM
          <input name="fdate" type="text" value="MM/DD/YYYY" />
      TO
      <input name="tdate" type="text" value="MM/DD/YYYY" />
      </label></td>
            
    </tr>
    <tr>
      <th colspan="2" scope="row"><label>
        <input type="submit" name="Submit" value="Submit" />
      </label></th>
    </tr>
  </table>
</form>
<%
}
} 
           catch(Exception e)
           {
           out.println(e);
           }

%></div>
        
  <div id="footer">
    <p class="center">Copyright &copy; 2014, CMC LTD, All Rights Reserved</p>
    
    <div class="cl"></div>
 
</body>
</html>
