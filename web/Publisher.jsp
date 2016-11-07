<%@page import="BookStoreShop.Publishers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head> 
    <div style="background-color: #FFDDDD; width:100%;">
    <br>
    <a href="ListController">Publisher List</a>
    <a href="SearchController">Search Publisher By ID</a>
    <a href="SearchPublisherByNameController">Search Publisher By Name</a>
    <a href="AddPublisher.jsp">Add Publisher</a>
    <br><br>
    </div>
    <center>
        <body>

            <div style="background-color: #D0B3E1; width:100%;"> 
                <br />
                <h1 align = "center">Publisher Search Form</h1>

                <form align = "center" name="searchForm" action="SearchController" align="center">
                    Enter Publisher ID:<input type="text" name="searchValue" value="" >
                    <input type="submit" value="Find Publishers Details" name="searchButton" />
                    <br><br>
                </form>


                <%
                    try {
                        // Create a session object if it is already not  created.
                        Publishers acc = (Publishers) session.getAttribute("searchResult");

                        if (acc != null) {
                %>


                <table border="1"  >

                    <tbody>
                        <tr>
                            <td bgcolor ="#FDB4BF">Publisher ID</td>
                            <td bgcolor ="#F4EFAF"><% out.println(acc.getPublisherId()); %></td>
                        </tr>
                        <tr>
                            <td bgcolor ="#FDB4BF">Publisher Name</td>
                            <td bgcolor ="#F4EFAF"><% out.println(acc.getName()); %></td>
                        </tr>
                        <tr> 
                            <td bgcolor ="#FDB4BF">URL</td>
                            <td bgcolor ="#F4EFAF"><% out.println(acc.getUrl()); %></td>
                        </tr>
                    </tbody>
                </table>

                <%
                        }

                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }

                %>


        </body>
    </center>
</html>
