<%--
  Created by IntelliJ IDEA.
  User: 12930
  Date: 2018/9/11
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<Head><title>表单</title></head>
<body>
<h2 align="center">新生信息注册</h2>

<form align="center" action="SubmitServlet" >
    <input type="button" value="查看信息" onclick="window.location.href='Query.jsp'"><br><br>

    学号<input type="text" name="sno"><br><br>
    姓名<input  type="text" name="sname"><br><br>
    电话号码<input type="text" name="stelephone"><br><br>
    男:<input type="radio" name="ssex" value="男">
    女:<input type="radio" name="ssex"  value="女"><br><br>
    专业<select name="smajor">
    <option value="软件工程">软件工程</option>
    <option value="电子信息工程">电子信息工程</option>
    <option value="通信工程">通信工程</option>
    <option value="数字媒体技术">数字媒体技术</option>
    <option value="物联网工程">物联网工程</option>
    <option value="网络工程">网络工程</option>

</select>
    <input type="submit" value="注册信息">

</form>

</body>
</html>
