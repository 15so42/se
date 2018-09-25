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
Hello
<table  border=1 align="center">
    <tr>
        <td>考生号</td>
        <td>姓名</td>
        <td>院</td>
        <td>专业</td>
        <td>缴费情况</td>
        <td>宿舍号</td>

    </tr>
<%
    String sno=request.getParameter("sno");

    DBBean db=new DBBean();
    String sql="select * from freshman where 考生号='"+sno+"'";
    ResultSet rs= db.QueryByString(sql);

    while(rs.next()){
%>

    <tr>
        <td><%=rs.getString("考生号")%></td>
        <td><%=rs.getString("姓名")%></td>
        <td><%=rs.getString("院")%></td>
        <td><%=rs.getString("专业")%></td>
        <td><%=rs.getString("缴费情况")%></td>
        <td><%=rs.getString("序号")%></td>

</tr>
        <%}%>

</table>
</body>
</html>
