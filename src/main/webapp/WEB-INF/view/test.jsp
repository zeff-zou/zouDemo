<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<c:set value="${pageContext.request.contextPath}" var="webRoot" />
<html>
<head>
    <title>Title</title>
    <script  type="text/javascript" src="${webRoot}/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript">
        function select(){
//            $.ajaxSettings['contentType'] = "application/x-www-form-urlencoded; charset=utf-8";
            $.ajax({
                url:"${webRoot}/test/select.json",
                type:"POST",
                dataType:"json",
                data:{id:1},
                success:function(data){
                   var sysUser = data;
                   alert("id="+sysUser.sysUserId+";name="+sysUser.userName);
//                    alert("123");
                },
                error: function(XMLHttpRequest, status){
                    if (XMLHttpRequest.status == 500) {
                        var result = eval("(" + XMLHttpRequest.responseText + ")");
                        alert(result.errorObject.errorText);
                    }
                }
            });
        }
        select();
    </script>
</head>

<body>
<div>
    <input type="text" id="SysUserId" value="" />
    <a onclick="select()" href="javascript:;">查询</a>
</div>


</body>
</html>
