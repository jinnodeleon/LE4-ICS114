<%-- 
    Document   : index
    Created on : 03 5, 20, 7:24:30 PM
    Author     : Jinno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LE4</title>
    </head>
    <center>

    <header>

<%ServletContext context = getServletContext();
                        
                         String header = context.getInitParameter("header");
                          
                          RequestDispatcher rd=request.getRequestDispatcher(header);
                        rd.include(request, response); %>
    </header>
    <body>
        <form action="Controller" method="post">
Name:<input type="text" name="userName"/><br/>
Password:<input type="password" name="userPass"/><br/>
<input type="submit" value="login"/>

        </form>
    </body>
    <footer>
            <%=
                context.getAttribute("time")
            %>
    </footer>
    </center>
</html>
