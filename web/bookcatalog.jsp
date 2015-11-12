<%--
  Created by IntelliJ IDEA.
  User: 145916h
  Date: 11/5/2015
  Time: 5:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Duke's Bookstore</title></head>
<%@ page import="demo.*" %>
<%@ page import="java.util.List" %>
<%
  List<BookDetails> list = (List<BookDetails>)request.getAttribute("bookcatalog");
%>
<body bgcolor="#ffffff">
<center>
  <hr>
  <br> &nbsp;<h1><font size="+3" color="#CC0066">Duke's </font> <img src="./duke.books.gif" alt="Duke holding books">
  <font size="+3" color="black">Bookstore</font></h1>
  <br> &nbsp;
  <hr>
</center>
<br>
<h3>Please Choose from our selection</h3>
<br>
<center>

  <table summary="layout">
    <% for (BookDetails book : list) {%>
    <tr>
      <td bgcolor="#ffffaa"><a href="/bookdetails?bookId=<%= book.getBookId() %>"> <strong><%= book.getTitle() %></strong></a></td>
      <td bgcolor="#ffffaa" rowspan=2><%= book.getPrice() %></td>
      <td bgcolor="#ffffaa" rowspan=2><a href="/bookcatalog?bookId=<%= book.getBookId() %>"> Add to Cart </a></td>
    </tr>
    <tr>
      <td>by<em> Duke</em></td>
    </tr>
<% }%>
  </table>
</center>
</body>
</html>
