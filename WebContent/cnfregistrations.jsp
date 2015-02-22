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
      <h1 id="logo"><a href="#" class="notext">&lt;%@ page language=&quot;java&quot; import=&quot;java.util.*, bean.* , java.sql.*&quot; pageEncoding=&quot;ISO-8859-1&quot;%&gt;<br />&lt;%<br />String path = request.getContextPath();<br />String basePath = request.getScheme()+&quot;://&quot;+request.getServerName()+&quot;:&quot;+request.getServerPort()+path+&quot;/&quot;;<br />%&gt;<br /><br />&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;<br />&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;<br />&lt;head&gt;<br />&lt;title&gt;Human Resource Solution&lt;/title&gt;<br />&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;<br />&lt;link rel=&quot;stylesheet&quot; href=&quot;css/style.css&quot; type=&quot;text/css&quot; media=&quot;all&quot; /&gt;<br />&lt;link rel=&quot;stylesheet&quot; href=&quot;css/jquery.jcarousel.css&quot; type=&quot;text/css&quot; media=&quot;all&quot; /&gt;<br />&lt;!--[if IE 6]&gt;&lt;link rel=&quot;stylesheet&quot; href=&quot;css/ie6.css&quot; type=&quot;text/css&quot; media=&quot;all&quot; /&gt;&lt;![endif]--&gt;<br />&lt;link rel=&quot;shortcut icon&quot; href=&quot;css/images/favicon.ico&quot; /&gt;<br />&lt;script type=&quot;text/javascript&quot; src=&quot;js/jquery-1.4.2.min.js&quot;&gt;&lt;/script&gt;<br />&lt;script type=&quot;text/javascript&quot; src=&quot;js/jquery.jcarousel.pack.js&quot;&gt;&lt;/script&gt;<br />&lt;script type=&quot;text/javascript&quot; src=&quot;js/func.js&quot;&gt;&lt;/script&gt;<br />&lt;/head&gt;<br />&lt;body&gt;<br />&lt;div class=&quot;shell&quot;&gt;<br />&nbsp; &lt;div class=&quot;border&quot;&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div id=&quot;header&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h1 id=&quot;logo&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;notext&quot;&gt;HR SOLUTION CORP.&lt;/a&gt;&lt;/h1&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;socials right&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ul&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;rss&quot;&gt;RSS&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;fb&quot;&gt;Facebook&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li class=&quot;last&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;twit&quot;&gt;Twitter&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/ul&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div id=&quot;navigation&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ul&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;register.jsp&quot; class=&quot;active&quot;&gt;Registration&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;search.jsp&quot;&gt;Search Employees&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;viewdelete.jsp&quot;&gt;View or Delete Employees&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;login.jsp&quot;&gt;Login&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;adminleave.jsp&quot;&gt;Leave Sanction&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Contact&lt;/a&gt;&lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/ul&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div class=&quot;slider&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;slider-nav&quot;&gt; &lt;a href=&quot;#&quot; class=&quot;left notext&quot;&gt;1&lt;/a&gt; &lt;a href=&quot;#&quot; class=&quot;left notext&quot;&gt;2&lt;/a&gt; &lt;a href=&quot;#&quot; class=&quot;left notext&quot;&gt;3&lt;/a&gt; &lt;a href=&quot;#&quot; class=&quot;left notext&quot;&gt;4&lt;/a&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;ul&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h3&gt;&lt;em&gt;achieve your&lt;/em&gt;&lt;/h3&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h2&gt;&lt;em&gt;TARGETS&lt;/em&gt;&lt;/h2&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;img src=&quot;css/images/slider01.gif&quot; alt=&quot;&quot; /&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h3&gt;&lt;em&gt;achieve your&lt;/em&gt;&lt;/h3&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h2&gt;&lt;em&gt;TARGETS&lt;/em&gt;&lt;/h2&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;img src=&quot;css/images/slider01.gif&quot; alt=&quot;&quot; /&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h3&gt;&lt;em&gt;achieve your&lt;/em&gt;&lt;/h3&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h2&gt;&lt;em&gt;TARGETS&lt;/em&gt;&lt;/h2&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;img src=&quot;css/images/slider01.gif&quot; alt=&quot;&quot; /&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h3&gt;&lt;em&gt;achieve your&lt;/em&gt;&lt;/h3&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h2&gt;&lt;em&gt;TARGETS&lt;/em&gt;&lt;/h2&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;img src=&quot;css/images/slider01.gif&quot; alt=&quot;&quot; /&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/li&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/ul&gt;<br />&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div id=&quot;main&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div id=&quot;content&quot; class=&quot;left&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;highlight&quot;&gt;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h3&gt;All Employees&lt;/h3&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;%! String name;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int flag=0;&nbsp; int ecode; %&gt;<br />&nbsp;&nbsp;&nbsp; <br />&lt;table width=&quot;820&quot; height=&quot;156&quot; border=&quot;1&quot;&gt;<br />&nbsp; &lt;tr&gt;<br />&nbsp;&nbsp;&nbsp; &lt;th width=&quot;200&quot; scope=&quot;col&quot;&gt;Name&lt;/th&gt;<br />&nbsp;&nbsp;&nbsp; &lt;th width=&quot;272&quot; scope=&quot;col&quot;&gt;Employee Code &lt;/th&gt;<br />&nbsp;&nbsp;&nbsp; &lt;th width=&quot;326&quot; scope=&quot;col&quot;&gt;View and Sanction&lt;/th&gt;<br />&nbsp;&nbsp; <br />&nbsp; &lt;/tr&gt;<br />&nbsp;<br />&nbsp;&nbsp;&nbsp; &lt;%<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Class.forName(&quot;oracle.jdbc.driver.OracleDriver&quot;);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Connection con=DriverManager.getConnection(&quot;jdbc:oracle:thin:@localhost:1521:XE&quot;,&quot;system&quot;,&quot;password&quot;); <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Connection con=ConnectionProvider.getCon();<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; String str=&quot;Select first_name,last_name,emp_code from empleaveapp where status=?&quot;;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PreparedStatement st=con.prepareStatement(str);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; st.setString(1,&quot;PENDING&quot;);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ResultSet rs=st.executeQuery();<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while(rs.next())<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; flag=1;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; name= rs.getString(1)+&quot; &quot;+rs.getString(2);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ecode= rs.getInt(3) ;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; request.setAttribute(&quot;ecode&quot;,ecode);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;tr&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td width=&quot;200&quot; scope=&quot;col&quot; align=&quot;center&quot;&gt;&lt;%=name%&gt;&lt;/td&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td width=&quot;200&quot; scope=&quot;col&quot; align=&quot;center&quot;&gt;&lt;%=ecode%&gt;&lt;/td&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;td width=&quot;200&quot; scope=&quot;col&quot; align=&quot;center&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;leavedetails.jsp?id=&lt;%=ecode%&gt;&quot;&gt;View Leave Details&lt;/a&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/td&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/tr&gt;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;% <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(flag==0)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;&lt;%=&quot;No record found !!&quot;%&gt;&lt;/p&gt; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;%<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; catch(Exception e)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp; System.out.println(e);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; %&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;&amp;nbsp;&lt;/p&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;&amp;nbsp;&lt;/p&gt;<br />&nbsp;<br />&nbsp;<br />&nbsp; &lt;/table&gt;<br />&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp; <br />&nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;projects&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h3&gt;Latest projects&lt;/h3&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;image left&quot;&gt; &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;css/images/project01.jpg&quot; alt=&quot;&quot; /&gt;&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text left&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h4&gt;simply dummy title&lt;/h4&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is&lt;/p&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;#&quot; class=&quot;more&quot;&gt;Find out more&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;image left&quot;&gt; &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;css/images/project02.jpg&quot; alt=&quot;&quot; /&gt;&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text left&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h4&gt;simply dummy title&lt;/h4&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is&lt;/p&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;#&quot; class=&quot;more&quot;&gt;Find out more&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;image left&quot;&gt; &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;css/images/project03.jpg&quot; alt=&quot;&quot; /&gt;&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text left&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h4&gt;simply dummy title&lt;/h4&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is&lt;/p&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;#&quot; class=&quot;more&quot;&gt;Find out more&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;item&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;image left&quot;&gt; &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;css/images/project04.jpg&quot; alt=&quot;&quot; /&gt;&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;text left&quot;&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;h4&gt;simply dummy title&lt;/h4&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is&lt;/p&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;a href=&quot;#&quot; class=&quot;more&quot;&gt;Find out more&lt;/a&gt; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&amp;nbsp;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div class=&quot;shadow-l&quot;&gt;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div class=&quot;shadow-r&quot;&gt;&lt;/div&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div class=&quot;shadow-b&quot;&gt;&lt;/div&gt;<br />&nbsp; &lt;/div&gt;<br />&nbsp; &lt;div id=&quot;footer&quot;&gt;<br />&nbsp;&nbsp;&nbsp; &lt;p class=&quot;left&quot;&gt;Copyright &amp;copy; 2010, Your Company Here, All Rights Reserved&lt;/p&gt;<br />&nbsp;&nbsp;&nbsp; &lt;p class=&quot;right&quot;&gt;&lt;a href=&quot;http://www.free-css.com/&quot;&gt;Free CSS Templates&lt;/a&gt; by &lt;a href=&quot;http://chocotemplates.com&quot;&gt;Chocotemplates.com&lt;/a&gt;&lt;/p&gt;<br />&nbsp;&nbsp;&nbsp; &lt;div class=&quot;cl&quot;&gt;&lt;/div&gt;<br />&nbsp; &lt;/div&gt;<br /><br />&lt;/body&gt;<br />&lt;/html&gt;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HR SOLUTION CORP.</a></h1>
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
        <li><a href="search.jsp">Search Employees</a></li>
        <li><a href="viewdelete.jsp">View or Delete Employees</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="adminleave.jsp">Leave Sanction</a></li>
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
          <h3>All Employees Training Registration approval</h3>
           <%! String name,cid,email;
      int flag=0;  int ecode; %>
    
<table width="820" height="156" border="1">
  <tr>
    <th width="200" scope="col">Name</th>
    <th width="272" scope="col">Employee Code </th>
    <th width="272" scope="col">Course Id </th>
    <th width="326" scope="col">View and Sanction</th>
   
  </tr>
 
    <%
       
        try
          {
           //Class.forName("oracle.jdbc.driver.OracleDriver");
           //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password"); 
           Connection con=ConnectionProvider.getCon();
           String str="Select first_name,last_name,emp_code,course_id,email_id from emptrainingreg where status=?";
           PreparedStatement st=con.prepareStatement(str);
           st.setString(1,"PENDING");
           ResultSet rs=st.executeQuery();
           while(rs.next())
           {
           flag=1;
           name= rs.getString(1)+" "+rs.getString(2);
           ecode= rs.getInt(3) ;
           cid=rs.getString(4);
           email=rs.getString(5);
           request.setAttribute("ecode",ecode);
           %>
         <tr>
         <td width="200" scope="col" align="center"><%=name%></td>
         <td width="200" scope="col" align="center"><%=ecode%></td>
         <td width="200" scope="col" align="center"><%=cid%></td>
         <td width="200" scope="col" align="center">
         
        <a href="approve.jsp?id=<%=ecode%>&cid=<%=cid%>&email=<%=email %>">Click here to confirm the registration</a>
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

</body>
</html>
          