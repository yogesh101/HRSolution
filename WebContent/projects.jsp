
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                          <%

        Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
  Statement st=con.createStatement();
             
                ResultSet rs=st.executeQuery("select * from PRODUCT_LIST1");

       // String path=application.getRealPath("ppt+")+"\\"+ss;
String s1=null, name=null, artist=null, des=null, cat=null, dorec=null;
double price=0, id=0, qua=0;

while(rs.next())
       {
                    
    id=rs.getInt(1);
s1=rs.getString(3);
//des=rs.getString(3);
name=rs.getString(2);
/*cat=rs.getString(6);
dorec=rs.getString(7);
qua=rs.getInt(5);
price=rs.getDouble(4);
  */             
%>
<table border="1">
<tr>
    <td>
        <table border="0">
            <tr>
                <td><img src="image.jsp?val=<%=s1%>" alt="" width="210" height="139" class="project-img"/>
                <%= name%>
                
            </tr>
        </table>
    </td>
    <td>
        
    </td>
   
</tr> 
       </table>           
                             
                    <%                }
%>

    </body>
</html>
