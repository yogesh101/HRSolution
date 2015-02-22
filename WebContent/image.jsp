<%@ page import="java.io.*,java.sql.*" %>
<%@page contentType="image/gif" %><%
String file=null;
String s1=request.getParameter("val");

String saveDir = application.getRealPath("data");

                          OutputStream o = response.getOutputStream();
           
   InputStream is = new FileInputStream(new File
           (saveDir+"\\"+s1));        
                            byte[] buf = new byte[32 * 1024];
                 int nRead = 0;
    while( (nRead=is.read(buf)) != -1 ) {
        o.write(buf, 0, nRead);
    
    }
                 
    o.flush();
    o.close();
    //return;
    
    
%>
