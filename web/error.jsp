<%-- 
    Document   : error
    Created on : 03 28, 20, 3:08:25 PM
    Author     : Jinno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center>
        <header>

<%ServletContext context = getServletContext();
                        
                         String header = context.getInitParameter("header");
                          
                          RequestDispatcher rd=request.getRequestDispatcher(header);
                        rd.include(request, response); %>
    </header>
    <body>
        <% String error=(String)request.getAttribute("error");  
        %>
        <p> <%=error%></p>
        <h2> error </h2>
                <form action="index.jsp">
            <input type="submit" value="Back">
        </form>
    </body>
    <footer>

            <%=
                context.getAttribute("time")
            %>
    </footer>
    </center>
    
</html>
