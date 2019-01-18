<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MorvanHu
  Date: 2019/1/18
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>home</title>
</head>
<jsp:include page="header.jsp"/>
<body>
    ${value1}
    <br/>
    ${value2}
    <%--如果不存在强制为空--%>
    <br/>
    $!{value3}
    <br/>
    colors:${colors}
    <br/>
    <c:forEach var="color" items="${colors}" varStatus="s">
        This is color ${s.index}: ${color}
        <br/>
    </c:forEach>
    <br/>
    <c:forEach var="key" items="${map.keySet()}" varStatus="s">
        Number: ${key}, Value: ${map.get(key)}
        <br/>
    </c:forEach>
    <br/>
    <c:forEach var="kv" items="${map.entrySet()}" varStatus="s">
        Number: ${kv.key}, Value: ${kv.value}
        <br/>
    </c:forEach>
    <br/>
    User: ${user.name}
<br/>
    ${user.description}
    <br/>
    <c:set var="title" value="nowcoder"/>
    Title: ${title}


</body>
<jsp:include page="footer.jsp"/>
</html>
