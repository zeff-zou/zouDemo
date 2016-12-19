<%--
  Created by IntelliJ IDEA.
  User: zzf
  Date: 2016/12/9
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<c:set value="${pageContext.request.contextPath}" var="webRoot" />
<section class="sidebar">
    <!-- Sidebar user panel -->

    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
            <a href="#">
                <i class="fa fa-dashboard"></i> <span>会员</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">
                <li class="active"><a href="#/admin/sysuser/sysUserList"><i class="fa fa-circle-o"></i> 会员列表</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-files-o"></i>
                <span>审核</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
            </a>
            <ul class="treeview-menu">
                <li><a href="javascript:;"><i class="fa fa-circle-o"></i> 文章审核</a></li>
                <li><a href="javascript:;"><i class="fa fa-circle-o"></i> 评论审核</a></li>
            </ul>
        </li>
        <%--<li class="header">LABELS</li>--%>
        <%--<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>--%>
        <%--<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>--%>
        <%--<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>--%>
    </ul>
</section>
