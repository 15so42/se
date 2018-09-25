<%--
  Created by IntelliJ IDEA.
  User: 12930
  Date: 2018/9/11
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
<h2 align="center">新生信息注册</h2>
<%--这是Version2--%>
<form align="center" action="SubmitServlet" >
    <input type="button" value="查看信息" onclick="window.location.href='Query.jsp'"/><br><br>

    录取号<input type="text" name="sno"/><br><br>
    姓名<input  type="text" name="sname"/><br><br>
<Input type="submit" value="确认"/>

</form>

</body>
</html>
