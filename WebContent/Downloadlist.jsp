<%-- 
    Document   : Downloadlist
    Created on : Jul 18, 2011, 1:16:08 AM
    Author     : NEERAJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.* , bean.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 //Class.forName("oracle.jdbc.driver.OracleDriver");
                 //Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "password");
  Connection con=ConnectionProvider.getCon();
  Statement st=con.createStatement();
             
                ResultSet rs=st.executeQuery("select filepath from product_list1");

       // String path=application.getRealPath("ppt+")+"\\"+ss;
String ss=null;
                while(rs.next())
       {
    ss=rs.getString(1);

        %>

<%=ss%><a href="download.jsp?file=<%=ss%>">Download</a>
<br/>
<%}%>
<br/>
<img src="image.jsp" />
    </body>
</html>
