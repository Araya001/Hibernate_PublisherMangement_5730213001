
<%@page import="BookStoreShop.Publishers"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="background-color: #FFFF88; width:100%;">
    <br>
        <a href="ListController">Publisher List</a>
        <a href="SearchController">Search Publisher By ID</a>
        <a href="SearchPublisherByNameController">Search Publisher By Name</a>
        <a href="AddPublisher.jsp">Add Publisher</a>
        <br><br>
        </div>
         <div style="background-color: #A3E7D8; width:100%;"> 
                <br />
        <h1 align="center">Publishers List</h1>

        <%
            try {

                List<Publishers> publisherList = (List<Publishers>) session.getAttribute("listResult");

                if (publisherList != null) {
                    //    out.println("not null");
                    //   out.println(filmList.size());

        %>
        <table border="1" align="center">

            <tbody>
                <tr>
                    <td bgcolor = "#FF9797">Publisher ID</td>
                    <td bgcolor = "#FF9797">Publisher Name</td>
                    <td bgcolor = "#FF9797">URL</td>

                </tr>
                <%                        for (Publishers acc : publisherList) {
                %>
                <tr bgcolor = "#FFDDDD">
                    <td><% out.println(acc.getPublisherId()); %></td>
                    <td><% out.println(acc.getName()); %></td>
                    <td><% out.println(acc.getUrl()); %></td>  
                </tr>
                <% } %>
            </tbody>
        </table>  


        <%

                } else {
                    out.println("return null");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("error");
            }

        %>
    </body>
</html>
