<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%! int ecode; %>
    <% String code=(String)session.getAttribute("ecode");
       ecode= Integer.parseInt(code);     
      %>
        <form action="upload.jsp?id=<%=ecode %>" method="post" enctype="multipart/form-data">
            <table border="0" bgcolor="lightgreen" cellspacing="7" cellpadding="6">
                
                <tbody>
                <tr>
                        <td>Upload Photo:</td>
                        <td><input type="file" name="file" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
                 </form>
    </body>
</html>