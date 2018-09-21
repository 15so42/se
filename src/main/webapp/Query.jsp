<%@ page import="java.sql.ResultSet" %>
<%@ page import="bean.DBBean" %><%--
  Created by IntelliJ IDEA.
  User: 12930
  Date: 2018/9/13
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询</title>
</head>
<body>
<table border=1 align="center">
    <tr>
<%
    DBBean db=new DBBean();
    ResultSet rs= db.Query();
    while(rs.next()){
%>
    <tr>
        <td><%=rs.getString("sno")%></td>
        <td><%=rs.getString("sname")%></td>
        <td><%=rs.getString("ssex")%></td>
        <td><%=rs.getString("stelephone")%></td>
        <td><%=rs.getString("smajor")%></td>

</tr>
        <%}%>

</table>
</body>
</html>
