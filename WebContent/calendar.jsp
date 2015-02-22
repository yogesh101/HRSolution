<%@ page  language="java" import="java.util.*,java.text.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Personnel Administration System</title>

<script>
function goTo()
{
  document.frm.submit()
}
</script>

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
        <li><a href="#">About</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Recruitments</a></li>
        <li><a href="#">Contact</a></li>
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
<h3>Calender</h3>
<%!
public int nullIntconv(String inv)
{   
	int conv=0;
		
	try{
		conv=Integer.parseInt(inv);
	}
	catch(Exception e)
	{}
	return conv;
}
%>
<%!
int iMonth,iTDay;
String str;%>
<%
 int iYear=nullIntconv(request.getParameter("iYear"));
  iMonth=nullIntconv(request.getParameter("iMonth"));

 Calendar ca = new GregorianCalendar();
  iTDay=ca.get(Calendar.DATE);
 int iTYear=ca.get(Calendar.YEAR);
 int iTMonth=ca.get(Calendar.MONTH);
 

 if(iYear==0)
 {
	  iYear=iTYear;
	  iMonth=iTMonth;
 }

 GregorianCalendar cal = new GregorianCalendar (iYear, iMonth, 1); 

 int days=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
 int weekStartDay=cal.get(Calendar.DAY_OF_WEEK);
 
 cal = new GregorianCalendar (iYear, iMonth, days); 
 int iTotalweeks=cal.get(Calendar.WEEK_OF_MONTH);
  
%>



<form name="frm" method="post">
<table width="150%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="6%">Year</td>
        <td width="7%">
		<select name="iYear" onchange="goTo()">
        <%
	    for(int iy=iTYear-70;iy<=iTYear+70;iy++)
		{
		  if(iy==iYear)
		  {
		    %>
          <option value="<%=iy%>" selected="selected"><%=iy%></option>
          <%
		  }
		  else
		  {
		    %>
          <option value="<%=iy%>"><%=iy%></option>
          <%
		  }
		}
	   %>
        </select></td>
        <td width="73%" align="center"><h3><%=new SimpleDateFormat("MMMM").format(new Date(2008,iMonth,01))%> <%=iYear%></h3></td>
        <td width="6%">Month</td>
        <td width="8%">
		<select name="iMonth" onchange="goTo()">
        <%
		// print month in combo box to change month in calendar
	    for(int im=0;im<=11;im++)
		{
		  if(im==iMonth)
		  {
	     %>
          <option value="<%=im%>" selected="selected"><%=new SimpleDateFormat("MMMM").format(new Date(2008,im,01))%></option>
          <%
		  }
		  else
		  {
		    %>
          <option value="<%=im%>"><%=new SimpleDateFormat("MMMM").format(new Date(2008,im,01))%></option>
          <%
		  }
		  
		}
	   %>
        </select></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table style="background-color: lime; border-color: black"   align="center" border="1" cellpadding="3" cellspacing="0" width="100%">
      <tbody>
        <tr>
          <th>Sun</th>
          <th>Mon</th>
          <th>Tue</th>
          <th>Wed</th>
          <th>Thu</th>
          <th>Fri</th>
          <th>Sat</th>
        </tr>
        <%
         final int iDay=iTDay;
        int cnt =1;
        for(int i=1;i<=iTotalweeks;i++)
        {
		%>
        <tr>
          <% 
	        for(int j=1;j<=7;j++)
	        {
		        if(cnt<weekStartDay || (cnt-weekStartDay+1)>days)
		        {
		         %>
                <td align="center" height="35">&nbsp;</td>
               <% 
		        }
		        else
		        {
		        	switch(iMonth)
		        {
		        case 0 :{ 
		                 switch(cnt-weekStartDay+1)
		                 {
		                 case 1 : str="New Year"; %>
		                          <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 11 : str ="Interaction meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 case 15 : str ="Director's Meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td>
		                 <%
		                 break;
		                 case 26 : str ="Republic Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break; 
		                 case 31 : str ="Report Submission Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                 }
		        break;
		        
		        case 1 :{
		                 switch(cnt-weekStartDay+1)
		                 {
		                 case 11 : str ="Interaction meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 case 15 : str ="Director's Meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td>
		                 <%
		                 break;
		                 
		                case 29 : str ="Report Submission Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 case 28 : str ="Report Submission Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                 }
		        break;
		        
		        case 2 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 8 : str ="Women's Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 case 11 : str ="Interaction meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 case 15 : str ="Director's Meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td>
		                 <%
		                 break;
		                 
		                case 28 : str ="Report Submission Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 case 31 : str ="Closing Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }	
		                 }	                
		        break;
		        
		        case 3 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 11 : str="Interaction meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 30 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;  
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                }
		        break;
		        
		        case 4 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 1: str = "Labour Day "; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 11 : str="Interaction meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 31 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;  
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                }
		        break;
		        
		        case 5 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 5 : str= "World Environment Day"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                case 11 : str="Interaction meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 30 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;  
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                }
		        break;
		        
		        case 6 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 11 : str="Interaction meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 31 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;  
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                   }
		                }
		        break;
		        
		        case 7 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 1 : str = " Boss Day "; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 11 : str="Interaction meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 14 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Independence Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 31 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;  
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                }
		        break;
		        
		        case 8 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 11 : str="Bonus Day"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 17 : str ="Employee's Day";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 30 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%
		                 break;  
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                }
		        break;
		        
		        case 9 :{
		                switch(cnt-weekStartDay+1)
		                 {
		                 case 11 : str="Interaction meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 31 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <%  
		                 break;
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                }
		        break;
		        
		        case 10 :{
		                 switch(cnt-weekStartDay+1)
		                 {
		                 case 11 : str="FOUNDATION DAY"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><i><%=str%></i></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 30 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break; 
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                 }
		        break;
		        
		        case 11 :{
		                 switch(cnt-weekStartDay+1)
		                 {
		                 case 11 : str="Interaction meeting"; %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 15 : str ="Director's Meeting";
		                 %>
		                 <td style="color: red" align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 30 : str="Report Submission";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break;
		                 case 31 : str="Year End Celebration";
		                 %>
		                 <td style="color: red" align="center" height="55" id="day_<%=(cnt-weekStartDay+1)%>"><span><b><%=(cnt-weekStartDay+1)%></b></span><br/><span><b><%=str%></b></span></br></td> 
		                 <% 
		                 break; 
		                 default :
		                 %>
		                 <td align="center" height="55" width="175" id="day_<%=(cnt-weekStartDay+1)%>"><span><%=(cnt-weekStartDay+1)%></span></td> 
		                 <% 
		                 break;
		                 }
		                 }
		        break;
                 }	        
		        
		        
		        
		                 
		        }
		        cnt++;
		      }
	        %>
        </tr>
        <% 
	    }
	    %>
      </tbody>
    </table></td>
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
