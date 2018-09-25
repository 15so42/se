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
<h1 align="center">--专业报到率--</h1>
<table border=1 align="center">

<%
    DBBean db=new DBBean();
    String sql="select 专业,sum(case when 缴费情况='已缴费' then 1 else 0 end)/count(*),count(*) from freshman group by 专业";
    ResultSet rs= db.QueryByString(sql);
    while(rs.next()){
%>
    <tr>
        <td><%=rs.getString("专业")%></td>
        <td><%=rs.getFloat(2)%></td>
        <td><%=rs.getInt(3)%></td>
</tr>
        <%}%>

</table>


<h1 align="center">--学院报到率--</h1>
<table border=1 align="center">

    <%
        int arrived=0;
        int all=0;
        rs=db.QueryByString("select count(*) from freshman where 缴费情况='已缴费'");
        if(rs.next())
             arrived=rs.getInt(1);

        rs=db.QueryByString("select count(*) from freshman");
        if(rs.next())
            all=rs.getInt(1);
//         sql="select select count(*) from freshman where 缴费情况=''已缴费)/(select count(*) from freshman) from freshman ";
//         rs= db.QueryByString(sql);
//        while(rs.next()){
    %>
    <tr>
        <%--<td><%=rs.getString("院")%></td>--%>
        <td><%=(float)arrived/all%></td>
    </tr>
    <%//}%>

</table>

<h1 align="center">--生源省份--</h1>
<table border=1 align="center">

    <%

        sql="select 生源省份,(select  count(*) from freshman where rownum=1  group by 生源省份)/count(*) from freshman group by 生源省份";
        rs= db.QueryByString(sql);
        while(rs.next()){
    %>
    <tr>
        <td><%=rs.getString("生源省份")%></td>
        <td><%=rs.getFloat(2)%></td>
    </tr>
    <%}%>

</table>

</body>
</html>
