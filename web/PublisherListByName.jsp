<%@page import="BookStoreShop.Publishers"%>
<%@page import="java.util.List"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title> </head> 
    <div style="background-color: #FFFF88; width:100%;">
    <br>
    <a href="ListController">Publisher List</a>
    <a href="SearchController">Search Publisher By ID</a>
    <a href="SearchPublisherByNameController">Search Publisher By Name</a>
    <a href="AddPublisher.jsp">Add Publisher</a>
    <br><br>
    </div>
    <center>
        <body>



            <div style="background-color: #A3E7D8; width:100%;">
                <br />
                <h1>Search Publisher By Name</h1> 
                <form name="formSearchPublisher" action="SearchPublisherByNameController" >

                    Enter Publisher Name: <input type="text" name="searchValue" value="" />

                    <input type="submit" value="Search" name="SearchPublisher" />
                    <br><br>

                </form>

                <%

                    try {

                        List<Publishers> publisherList = (List<Publishers>) session.getAttribute("actorListResult");

                        if (publisherList != null) {
                            if (publisherList.size() != 0) {
                                out.println("not null");
                                out.println(publisherList.size());
                %>

                <table border="1">

                    <tbody>

                        <tr bgcolor = "#FF9797">
                            <td>Publisher ID</td>
                            <td>Publisher Name</td>	
                            <td>URL</td>	
                        </tr>	
                        <%  for (Publishers acc : publisherList) {
                        %>

                        <tr bgcolor = "#FFDDDD">
                            <td><% out.println(acc.getPublisherId());%></td>

                            <td><% out.println(acc.getName());%></td>
                            <td><% out.println(acc.getUrl());%></td>

                        </tr> <% } %>

                    </tbody>

                </table>


                <%
                            }
                        } else {

                            out.println("return null");
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("error");

                    }

                %>




        </body>
    </center>

</html>

