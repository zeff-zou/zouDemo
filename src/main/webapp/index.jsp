<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<c:set value="${pageContext.request.contextPath}" var="webRoot" />
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录页面</title>
    <link href="${webRoot}/commons/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${webRoot}/css/index.css" rel="stylesheet">
    <script  type="text/javascript" src="${webRoot}/js/jquery-1.7.1.min.js"></script>
    <script  type="text/javascript" src="${webRoot}/js/jquery.md5.js"></script>
    <%--<script src="${webRoot}/commons/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
    <script type="text/javascript">
     $(function(){
         $('form').submit(function(){
             $.ajax({
                 url:"${webRoot}/admin/sysuser/login.json",
                 type:"POST",
                 dataType:"json",
                 data:{loginId:$("#loginId").val(),password:$.md5($("#userPsw").val())},
                 success:function(data){
                     if ("Y"==data.success){
                         window.location.href="${webRoot}/admin/sysuser/main.html";
                     }else{
                         alert("登录失败");
                     }
                 },
                 error: function(XMLHttpRequest, status){
                     if (XMLHttpRequest.status == 500) {
                         var result = eval("(" + XMLHttpRequest.responseText + ")");
                         alert(result.errorObject.errorText);
                     }
                 }
             });
             return false;
         });
     });

    </script>
</head>
<body>
    <div class="container">
        <form class="form-signin" role="form">
            <h2 class="form-signin-heading">Please sign in</h2>
            <input id="loginId" type="text" class="form-control" placeholder="请输入账号" required autofocus>
            <input id="userPsw" type="password" class="form-control" placeholder="请输入密码" required>
            <button id="aaaa" class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>
    </div>
</body>
</html>