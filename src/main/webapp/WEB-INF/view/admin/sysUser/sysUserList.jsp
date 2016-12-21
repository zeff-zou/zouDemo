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
<script type="text/javascript" src="${webRoot}/commons/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${webRoot}/commons/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${webRoot}/commons/bootstrap-table/dist/bootstrap-table.js"></script>
<script type="text/javascript" src="${webRoot}/commons/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Dashboard
        <small>Control panel</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Data Table With Full Features</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
                <table data-toggle="table"
                       id="roleList"
                       class="table table-bordered table-striped"
                       data-url="${webRoot}/admin/sysuser/findSysUserPage.json"
                       data-search="true"
                       data-show-refresh="true"
                       data-show-toggle="true"
                       data-side-pagination="server"
                       data-show-columns="true"
                       data-sort-name="id"
                       data-page-list="[5, 10, 10]"
                       data-page-size="10"
                       data-show-export="true"
                       data-query-params-type='limit'
                       data-pagination="true"
                       data-uniqueId="ID"
                       data-click-to-select="true"
                       data-single-select="true"
                >
                    <thead>
                    <tr>
                        <th data-field="listId"  data-checkbox="true"></th>
                        <th data-field="id" data-sortable="true">ID</th>
                        <th data-field="loginId" data-sortable="true">账号</th>
                        <th data-field="userName" data-sortable="true">名称</th>
                    </tr>
                    </thead>

                </table>
        </div>
        <!-- /.box-body -->
    </div>
</section>