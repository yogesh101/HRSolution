<%@page import="java.sql.*;" %>

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
          <h3>HR SOLUTIONS CORP PAY SLIP GENERATION</h3>
           <%! String name,email,username,designation,exp,cno,id;
       %>
      
      <%
       
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=bean.ConnectionProvider.getCon();
           String str="Select first_name,last_name,email_id,username,designation,experience,contact_no from employee where emp_code=?";
           PreparedStatement st=con.prepareStatement(str);
           st.setInt(1,Integer.parseInt(request.getParameter("select")));
           ResultSet rs=st.executeQuery();
           while(rs.next())
           {
          
           name= rs.getString(1)+" "+rs.getString(2);
           email=rs.getString(3);
           username=rs.getString(4);
           designation=rs.getString(5);
           exp=rs.getString(6);
           cno=rs.getString(7); 
           
           }
 
           }
        catch(Exception e)
         {
  
         }
         id=request.getParameter("select");
         %>
     
    
<form id="generation" name="generation" method="post" action="paydb.jsp?id=<%=id%>">
<h3 style="color: red;">Please, fill all the important records.</h3>
  <table width="962" border="0">
    <tr>
      <th width="254" scope="row">EMPLOYEE CODE </th>
      <td colspan="2"><label>
          <div align="left">
            <input type="text" name="ecode" value='<%=Integer.parseInt(request.getParameter("select"))%>' readonly="readonly"/>
          </div>
        </label></td>
      <td width="303"><div align="center"><strong>HR SOLUTION CORPS. </strong></div></td>
    </tr>
    <tr>
      <th scope="row" height="50">NAME</th>
      <td width="206">
          <input type="text" name="names" value='<%=name%>' readonly="readonly"/>
      </div></td>
      <td width="255"><div align="center"><strong>EMAIL ID </strong></div></td>
      <td><div align="center">
          <input type="text" name="email" value='<%=email%>' readonly="readonly"/>
      </div></td>
    </tr>
    <tr>
      <th scope="row" height="50">CONTACT NUMBER </th>
      <td>
          <input type="text" name="cno" value='<%=cno%>' readonly="readonly"/>
      </div></td>
      <td><div align="center"><strong>USERNAME</strong></div></td>
      <td><div align="center">
          <input type="text" name="username" value='<%=username%>' readonly="readonly"/>
      </div></td>
    </tr>
    <tr>
      <th scope="row" height="50">DESIGNATION</th>
      <td>
          <input type="text" name="designation" value='<%=designation%>' readonly="readonly"/>
      </div></td>
      <td><div align="center"><strong>EXPERIENCE</strong></div></td>
      <td><div align="center">
          <input type="text" name="exp" value='<%=exp%>' readonly="readonly"/>
      </div></td>
    </tr>
    <tr>
      <th scope="row" height="50">FROM DATE </th>
      <td>
          <input type="text" name="fdate" />
      </div></td>
      <td><div align="center"><strong>TO DATE </strong></div></td>
      <td><div align="center">
          <input type="text" name="tdate" />
      </div></td>
    </tr>
    <tr>
      <th scope="row" height="50">TOTAL HOURS </th>
      <td>
          <input type="text" name="thrs" />
      </div></td>
      <td><div align="center"><strong>WORKED HOURS </strong></div></td>
      <td><div align="center">
          <input type="text" name="whrs" />
      </div></td>
    </tr>
    <tr>
      <th scope="row" height="50">BASIC SALARY </th>
      <td>
          <input type="text" name="salary" />
      </div></td>
      <td><div align="center"><strong>PROVIDENT FUND </strong></div></td>
      <td><div align="center">
          <input type="text" name="pf" value="5%" readonly="readonly"/>
      </div></td>
    </tr>
    <tr>
      <th scope="row" height="50">DEARNESS ALLOWANCE </th>
      <td>
          <input type="text" name="da" value="20%" readonly="readonly"/>
      </div></td>
      <td><div align="center"><strong>T.A.</strong></div></td>
      <td><div align="center">
          <input type="text" name="ta" value="5%" readonly="readonly"/>
      </div></td>
    </tr>
    <tr>
      <th height="72" colspan="4" scope="row"><div align="center">
          <label>
          <input name="Submit" type="submit" id="Submit" value="Generate Salary Slip" />
          </label>
      </div></th>
    </tr>
  </table>
</form>  
    
    
    
 </div>
       
       
              
 
 
 <br/><br/>
 
         
  <div id="footer">
    <p class="left">Copyright &copy; 2010, Your Company Here, All Rights Reserved</p>
    
    <div class="cl"></div></div>
 

</body>
</html>      
       
       
       
       
       