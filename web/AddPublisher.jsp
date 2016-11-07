<%@page contentType="text/html" pageEncoding="UTF-8"%> <!DOCTYPE html>

<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title> </head>  
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
                <h1>Add Publisher</h1>


                <%

                    String message = request.getParameter("message");
                    if (message != null) {

                        out.println(message);

                    }

                %>


                <form name="formAddPublisher" action="AddPublishersController"> 
                    <table border="0" style="width: 300px" align="center">
                        <tbody>
                            <tr>
                                <td> &nbsp;Publisher ID</td>
                                <td>
                                    <input name="id" type="text">
                                </td>
                            </tr>
                            <tr>
                                <td> &nbsp;Publisher Name</td>
                                <td><input name="name" type="text" >
                                </td>
                            </tr>
                            <tr>
                                <td> &nbsp;URL</td>
                                <td><input name="url" type="text" >
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    </table> 
                    <input type="submit" value="Submit" name="AddPublisher" />
                </form>

                <br><br>

                </body>
                </center>

                </html>
