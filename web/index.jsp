<%-- 
    Document   : index
    Created on : 09/11/2018, 13:17:30
    Author     : tiago.lucas
--%>

<%@page import="ejb.NovoClass"%>
<%@page import="ejb.EJBLocalLocal"%>
<%@page contentType="text/html" pageEncoding="windows-1250"%>
<%!
    private EJBLocalLocal ejbl = null;
 
    NovoClass nc = new NovoClass();        
    

    public void jspDestroy() {
        ejbl = null;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1250">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>                
        <%
            ejbl = nc.lookupEJBLocalLocal();
            String l = ejbl.recuperarMsg();
            out.print(l);
        %>
    </body>
</html>
