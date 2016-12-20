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
<%--<link rel="stylesheet" href="${webRoot}/commons/bootstrap/css/bootstrap.min.css">--%>
<link rel="stylesheet" href="${webRoot}/commons/bootstrap-table/dist/bootstrap-table.css">
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/jQuery/jquery-2.2.3.min.js"></script>--%>
<%--<script type="text/javascript" src="${webRoot}/commons/bootstrap/js/bootstrap.min.js"></script>--%>
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
                   data-striped="true"
                   data-sort-stable="true"
                   data-page-number="1"
                   data-page-size="1"
                   data-page-list="[10, 25, 50]"
                   data-select-item-name="Item ID"
                   data-show-refresh="true"
                   >
                <thead>
                <tr>
                    <th>Item ID</th>
                    <th>Item Name</th>
                    <th>Item Price</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Item 1</td>
                    <td>$1</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Item 2</td>
                    <td>$2</td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>
</section>