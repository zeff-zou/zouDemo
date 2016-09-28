<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set value="${pageContext.request.contextPath}" var="webRoot" />
<html>
<head>
    <title>Title</title>
    <script  type="text/javascript" src="http://localhost:8080/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript">
        function select(){
            $.ajax({
                url:"http://localhost:8080/test/select.ac",
                type:"POST",
                dataType:"json",
                data:{id:1},
                success:function(data){
                   var sysUser = data.SysUser;
                   alert("id="+sysUser.sysUserId+";name="+sysUser.userName);
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
    <input type="button" value="查询" onclick="select()" />
</div>


</body>
</html>
