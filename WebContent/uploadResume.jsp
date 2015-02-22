<%@page import="bean.ConnectionProvider"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Date"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.*"%>
<%

           int ec = Integer.parseInt(request.getParameter("id")); 
            try 
                {
                              
                //Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = ConnectionProvider.getCon();
                final int limit = 1024 * 1024 * 1024;
                String saveDir = application.getRealPath("data");
                File f = new File(saveDir);
                f.mkdirs();                                 
                MultipartRequest  mpr = new MultipartRequest(request, application.getRealPath("data"), limit);
               
                       
                
                                 
                String fname = mpr.getOriginalFileName("file");
               int i1 = fname.lastIndexOf(".");
               String s= fname.substring(i1+1);
               System.out.println(s);
               if(s.equals("txt")||s.equals("pdf")||s.equals("docx")||s.equals("doc"))
               
                {
               
                System.out.println("yes");
                PreparedStatement ps=con.prepareStatement("select * from PRODUCT_LIST2 where ecode=?");
                ps.setInt(1, ec);
                ResultSet rss=ps.executeQuery();
                boolean update=false;
                if(rss.next()){
                	update=true;
                }
                String sql="";
                if(update){
                	sql="update PRODUCT_LIST2 set RESUME_FILEPATH=? where ecode=? ";
                }
                else{
                	sql="insert into PRODUCT_LIST2(RESUME_FILEPATH,ecode) values (?,?)";
                }
                
                PreparedStatement st = con.prepareStatement(sql);
         		
           
         
                 st.setInt(2, ec);
                 st.setString(1, fname);                             
                 
                 
                int i = st.executeUpdate();

                if (i > 0) {
                    
                     RequestDispatcher dispatcher = request.getRequestDispatcher("resumesuccess.jsp");
                     dispatcher.forward(request, response);
                } else {
                    out.println("not done");
                }
                }
                else {
                    out.println("not done");
            }
            }
            catch (Exception e) {
                out.print("in sql exception" + e.toString());
            }
%>


