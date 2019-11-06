<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>
        Simple Dictionary
    </title>
</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>

<%
    dic.put("hello","Xin chao");
    dic.put("how","The nao");
    dic.put("book","sach");
    dic.put("computer","may tinh");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    }else {
        out.println("not found");
    }
%>
</body>
</html>