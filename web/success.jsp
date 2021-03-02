<%-- 
    Document   : success
    Created on : 03 22, 20, 2:44:21 PM
    Author     : Jinno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <center>
    <header>

<%ServletContext context = getServletContext();
                        
                         String header = context.getInitParameter("header");
                          
                          RequestDispatcher rd=request.getRequestDispatcher(header);
                        rd.include(request, response); %>
    </header>
<%
                String name = (String)request.getAttribute("user");
                String role = (String)request.getAttribute("role");             
%>
    <body>
    
                <h1> WELCOME <%=name%> </h1>
                <h2> Your Role: <%=role%> </h2>

        
       

        <form action="index.jsp">
            <input type="submit" value="Logout">
        </form>
    </body>
    <footer>

            <%=
                context.getAttribute("time")
            %>
    </footer>
</center>
</html>
