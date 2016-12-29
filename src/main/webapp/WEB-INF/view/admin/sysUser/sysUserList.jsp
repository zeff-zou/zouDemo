<%--
  Created by IntelliJ IDEA.
  User: zzf
  Date: 2016/12/9
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<c:set value="${pageContext.request.contextPath}" var="webRoot" />
<link rel="stylesheet" href="${webRoot}/commons/bootstrap-table/dist/bootstrap-table.css">
<link rel="stylesheet" href="${webRoot}/admin/sysUser/statics/css/sysUserList.css">
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/jQuery/jquery-2.2.3.min.js"></script>--%>
<%--<script type="text/javascript" src="${webRoot}/commons/bootstrap/js/bootstrap.min.js"></script>--%>
<script type="text/javascript" src="${webRoot}/commons/bootstrap-table/dist/bootstrap-table.js"></script>
<script type="text/javascript" src="${webRoot}/commons/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/iCheck/icheck.min.js"></script>--%>
<script  type="text/javascript" src="${webRoot}/js/jquery.md5.js"></script>
<script type="text/javascript" src="${webRoot}/admin/sysUser/statics/js/sysUserList.js"></script>
<script type="text/javascript">


</script>
<div id="myAlert" class="alert " style="display: none;">
    <a href="#" class="close" >&times;</a>
    <strong>警告！您的网络连接有问题。</strong>
</div>
<%--<div class="alert alert-info alert-dismissablealert-warning">--%>
    <%--<button type="button" class="close" data-dismiss="alert"--%>
            <%--aria-hidden="true">--%>
        <%--&times;--%>
    <%--</button>--%>
    <%--信息！请注意这个信息。--%>
<%--</div>--%>
<%--<div class="alert alert-warning alert-dismissable">--%>
    <%--<button type="button" class="close" data-dismiss="alert"--%>
            <%--aria-hidden="true">--%>
        <%--&times;--%>
    <%--</button>--%>
    <%--警告！请不要提交。--%>
<%--</div>--%>
<%--<div class="alert alert-danger alert-dismissable">--%>
    <%--<button type="button" class="close" data-dismiss="alert"--%>
            <%--aria-hidden="true">--%>
        <%--&times;--%>
    <%--</button>--%>
    <%--错误！请进行一些更改。--%>
<%--</div>--%>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        用户管理列表
        <%--<small>Control panel</small>--%>
    </h1>
</section>

<!-- Main content -->
<section class="content">

    <div class="box">
        <div class="box-body">
            <div class="col-sm-1" style="width:100%;margin-top:16px;">
                    <label style="width: 200px;float: left;margin-right:15px">
                        <input class="form-control input-sm" id="searchUser" placeholder="搜索" >
                    </label>
                    <button id="userSearchBtn" class="btn btn-block btn-primary" type="button" style="width:70px;padding:3px 1px;">搜索</button>
            </div>
            <div class="col-sm-1" style="width:auto;margin-top:16px;">
                <button class="btn btn-block btn-success" id="addUserBtn" type="button" >添加</button>
                <button class="btn btn-block btn-warning" id="updateUserBtn" type="button" >编辑</button>
                <button class="btn btn-block btn-primary" id="alertUserPswbtn" type="button" >修改密码</button>
                <%--<button class="btn btn-block btn-info" type="button" >冻结</button>--%>
                <button class="btn btn-block btn-danger" id="deleteUser" type="button" >删除</button>
            </div>
                <table data-toggle="table"
                       id="userList"
                       class="table table-bordered table-striped"
                       data-url="${webRoot}/admin/sysuser/findSysUserPage.json"
                       data-search="false"
                       data-show-refresh="true"
                       data-show-toggle="true"
                       data-show-columns="true"
                       data-side-pagination="server"
                       data-sort-name="id"
                       data-page-list="[5, 10, 10]"
                       data-page-size="10"
                       data-show-export="true"
                       data-query-params-type='limit'
                       data-pagination="true"
                       data-uniqueId="ID"
                       data-click-to-select="true"
                       data-single-select="true">
                    <thead>
                    <tr>
                        <th data-field="listId"  data-checkbox="true"></th>
                        <th data-field="id" data-sortable="true">ID</th>
                        <th data-field="loginId" data-sortable="false">账号</th>
                        <th data-field="userName" data-sortable="false">名称</th>
                        <th data-field="userSex" data-sortable="false" data-formatter="userSexFormatter">用户性别</th>
                        <th data-field="userMobile" data-sortable="false">用户手机</th>
                        <th data-field="userEmail" data-sortable="false">用户邮箱</th>
                        <th data-field="createDateString" data-sortable="false">注册时间</th>
                        <th data-field="isAdmin" data-sortable="false">是否管理员</th>
                    </tr>
                    </thead>

                </table>
        </div>
        <!-- /.box-body -->
    </div>
</section>
<div class="modal fade" role="dialog" id="showSysRoleModal">
    <jsp:include page="sysUserEditor.jsp"/>
</div>
<div class="modal fade" role="dialog" id="showAlertPsw">
    <jsp:include page="alertUserPsw.jsp"/>
</div>