<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="book.BookInList" %>
<%@ page import="book.BookFactory" %>

<%@ include file="./header.jsp" %>

<body>
<table width="1000">
    <tr>
        <td>
            <table width=600>
                <%
                List<BookInList> list = BookFactory.getBest5Books();

                for(BookInList book: list) {
                %>
                    <tr>
                        <td width="52"><img src="images/<%= book.getImage() %>" width="50" /></td>
                        <td>
                            <span style="font-weight:bold"><%= book.getTitle() %></span> <span style="font-size:8pt;color:gray;"><%= book.getSubTitle() %></span><br />
                            <span style="font-size:10pt"><%= book.getAuthor() %></span><br />
                            <span style="font-size:10pt;color:teal;"><%= book.getUnitPrice() %></span>
                        </td>
                    </tr>
                <%
                }
                %>
            </table>
        </td>
    </tr>
</table>
</body>

<%@ include file="./tail.jsp" %>