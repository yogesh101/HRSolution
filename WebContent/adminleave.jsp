
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
          <h3>All Employees</h3>
           <%! String name;
      int flag=0;  int ecode; %>
    
<table width="820" height="156" border="1">
  <tr>
    <th width="200" scope="col">Name</th>
    <th width="272" scope="col">Employee Code </th>
    <th width="326" scope="col">View and Sanction</th>
   
  </tr>
 
    <%
       
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=bean.ConnectionProvider.getCon();
           String str="Select fname,lname,ecode from empleaveapp where status=?";
           PreparedStatement st=con.prepareStatement(str);
           st.setString(1,"PENDING");
           ResultSet rs=st.executeQuery();
           while(rs.next())
           {
           flag=1;
           name= rs.getString(1)+" "+rs.getString(2);
           ecode= rs.getInt(3) ;
           request.setAttribute("ecode",ecode);
           %>
         <tr>
         <td width="200" scope="col" align="center"><%=name%></td>
         <td width="200" scope="col" align="center"><%=ecode%></td>
         <td width="200" scope="col" align="center">
         
        <a href="leavedetails.jsp?id=<%=ecode%>">View Leave Details</a>
         </td>
         
         </tr>    
              
 
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
 
 
  </table>
  
    
    
    
    
    
    
    
    
 </div>
               
 
 
 <br/><br/>
 
         
  <div id="footer">
    <p class="center">Copyright &copy; 2014, CMC LTD, All Rights Reserved</p>
    
    <div class="cl"></div></div>
 

</body>
</html>      
       
       
       
       
          