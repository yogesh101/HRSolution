<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.*"%>


<%
     String file1=null;
      file1=request.getParameter("file");
     response.setHeader( "Content-disposition","attachment;filename="+file1);
String path=application.getRealPath("data")+"\\"+file1;


response.setContentType("text/doc");
//response.setContentType("video/x-msvideo");

File ff=new File(path);
out.print(ff);
byte b[]=new byte[(int) ff.length()];
FileInputStream pp=new FileInputStream(ff);
pp.read(b);
OutputStream os=response.getOutputStream();
os.write(b);
pp.close();
os.close();



%>