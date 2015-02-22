<%@ page language="java" import="java.util.*, bean.*, java.sql.*" pageEncoding="ISO-8859-1"%>
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
     <!--   <li><a href="education.jsp">Add Qualification</a></li>
        <li><a href="experience.jsp">Add Work Experience</a></li>   -->
        <li><a href="Uplad.jsp">Upload Resume</a></li>
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
<%! String name,email,uname,designation,exp,cno,whrs,salary,pfs,das,tas,hras,workdays,slipid,fdate,tdate,str,nets;
     int x,days;
     Float earn; %>
<%
String code=(String)(session.getAttribute("ecode"));

try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Select name,email,designation,cno,WHRS,SALARY,PFS,DAS,TAS,HRAS,NETS,fdate,tdate,slipid from empslip where ecode=? AND FDATE=? AND TDATE=?";
           PreparedStatement st=con.prepareStatement(str);
           st.setInt(1,Integer.parseInt(code));
           
           java.util.Date dd=new java.util.Date(request.getParameter("from"));
           java.sql.Date date1=new java.sql.Date(dd.getTime());
           
           st.setDate(2, date1);
           
           java.util.Date dd1=new java.util.Date(request.getParameter("to"));
           java.sql.Date date2=new java.sql.Date(dd1.getTime());
           
           st.setDate(3, date2);
           
           ResultSet rs=st.executeQuery();
           while(rs.next())
           {
          
           name= rs.getString(1);
           email=rs.getString(2);
           designation=rs.getString(3);
           cno=rs.getString(4); 
           whrs=rs.getString(5);
           x=Integer.parseInt(whrs);
           days=x/8;
           workdays=new Integer(days).toString();
           salary=rs.getString(6);
           pfs=rs.getString(7);
           das=rs.getString(8);
           tas=rs.getString(9);
           hras=rs.getString(10);
           nets=rs.getString(11);
           earn=(Float.parseFloat(hras))+(Float.parseFloat(das))+(Float.parseFloat(tas))+(Float.parseFloat(salary));
           fdate=rs.getString(12);
           tdate=rs.getString(13);
           slipid=rs.getString(14);
           
           }
 
           }
        catch(Exception e)
         {
    System.out.println(e);
         }
         float x= Float.parseFloat(nets);
  int y = (int)x;
  nets= new Integer(y).toString();
  str= Convert.con(nets);
  System.out.println(str);

 %>



    <div id="main">
      <div id="content" class="left">
        <div class="highlight">


<form action="aa.jsp">
<br/>
<br/>
	<table align="center" width="100%">
	<tr>
	
	<td><select name="from">
	<%
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st1=con.createStatement();
		String sqll="select DISTINCT FDATE from EMPSLIP ";
		ResultSet rs=st1.executeQuery(sqll);
		while(rs.next())
		{
			%>
			
			
			
				<option value='<%=rs.getString("FDATE")%>'><%=rs.getString("FDATE")%></option>
			
			
			
			<%
		}%>
		</select></td>
		<td>
	
			<select name="to">
		<%
		String sql1="select DISTINCT TDATE from EMPSLIP ";
		ResultSet rs1=st1.executeQuery(sql1);
		while(rs1.next())
		{%>
			
				<option value='<%=rs1.getString("TDATE")%>'><%=rs1.getString("TDATE")%></option>
				
		<%}
	}catch(Exception e)
	{
		
	}
	%>
	</select>
			</td>
		</tr>
		
		<tr>
			<td><input type="submit" value="Submit"></td>
		</tr>
	</table>
</form>










<table width="900" height="599" border="1">
  <tr>
    <td height="58" colspan="4"><div align="center"><em><strong>HR SOLUTION CORPS.</strong> </em></div></td>
  </tr>
  <tr>
    <td height="25"colspan="4"> <div align="center"><em><strong>Pay Slip for the period from <%=fdate%> to <%=tdate%></strong> </em></div></td>
  </tr>
  <tr>
    <td height="25"colspan="4"> <div align="right"><em><strong>Slip Number: <%=slipid%></strong> </em></div></td>
  </tr>
  <tr>
    <td width="175" height="39"><strong>Employee id</strong> <br /></td>
    <td width="350"><div align="center"><%=code %></div></td>
    <td width="200"><strong>Name</strong></td>
    <td width="350"><div align="center"><%=name %></div></td>
  </tr>
  <tr>
    <td height="39"><strong>Designation</strong></td>
    <td><div align="center"><%=designation %></div></td>
    <td><strong>Email id</strong> </td>
    <td><div align="center"><%=email %></div></td>
  </tr>
  <tr>
    <td height="39"><strong>Contact number</strong> </td>
    <td><div align="center"><%=cno %></div></td>
    <td><strong>Days Worked</strong> </td>
    <td><div align="center"><%=workdays%></div></td>
  </tr>
  <tr>
    <td height="39"><strong>Earned Leave </strong></td>
    <td><div align="center">&nbsp;</div></td>
    <td><strong>Casual Leave </strong></td>
    <td><div align="center">&nbsp;</div></td>
  </tr>
  <tr>
    <td height="35" colspan="4">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="39"><strong>EARNINGS</strong></td>
    <td><div align="center"><strong>AMOUNT</strong></div></td>
    <td><strong>DEDUCTIONS</strong></td>
    <td><div align="center"><strong>AMOUNT</strong></div></td>
  </tr>
  <tr>
    <td height="39">Basic Pay </td>
    <td><div align="center"><%=salary %></div></td>
    <td>Provident Fund </td>
    <td><div align="center"><%=pfs %></div></td>
  </tr>
  <tr>
    <td height="39">Dearness Allowance</td>
    <td><div align="center"><%=das %></div></td>
    <td>Professional Tax </td>
    <td><div align="center">&nbsp;</div></td>
  </tr>
  <tr>
    <td height="39">House Rental Allowance </td>
    <td><div align="center"><%=hras %></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="39">T.A</td>
    <td><div align="center"><%=tas %></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="39"><strong>TOTAL EARNINGS</strong> </td>
    <td><div align="center"><%=earn%></div></td>
    <td><strong>TOTAL DEDUCTIONS</strong> </td>
    <td><div align="center"><%=pfs %></div></td>
  </tr>
  <tr>
    <td height="39"><strong>NET PAY</strong> : </td>
    <td height="39" colspan="3"><div align="center"><%=nets %></div></td>
  </tr>
  <%
  
   %>
  <tr>
    <td height="39"><strong>NET PAY(in words):</strong> : </td>
    <td height="39" colspan="3"><div align="center"><%=str %></div></td>
  </tr>
  <tr>
    <td height="39" colspan="4"> EMPLOYEE SIGNATURE : </td>
  </tr>
</table>
<p>&nbsp;</p>

<form>
<div align="center"><input type="button" onclick="window.print()" value="Print"></input></div>
</form>
            </div>
       
  <div id="footer">
    <p class="left">Copyright &copy; 2010, Your Company Here, All Rights Reserved</p>
    
    <div class="cl"></div>
  </div>
</div>
</body>
</html>