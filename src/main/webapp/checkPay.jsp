<%@ page import="bean.DBBean" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 12930
  Date: 2018/9/11
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
<%
String sno=request.getParameter("sno");
DBBean db=new DBBean();
String sql="select 缴费情况 from freshman where 考生号='"+sno+"'";
System.out.println(sql);
ResultSet rs= db.QueryByString(sql);

if(rs.next()){
    if(rs.getString("缴费情况").equals("已缴费")){
        request.getRequestDispatcher("freshmanInfo.jsp").forward(request,response);
    }
}

%>
<h2 align="center">尚未缴费,无法查看信息,请先缴费再来</h2>
<%--这是Version2--%>


</body>
</html>
