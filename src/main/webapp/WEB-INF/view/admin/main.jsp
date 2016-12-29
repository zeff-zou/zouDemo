<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<c:set value="${pageContext.request.contextPath}" var="webRoot" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="${webRoot}/commons/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">--%>
    <link href="${webRoot}/css/main.css" rel="stylesheet">
    <!-- Ionicons -->
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">--%>
    <!-- Theme style -->
    <link rel="stylesheet" href="${webRoot}/commons/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${webRoot}/commons/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${webRoot}/commons/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="${webRoot}/commons/plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="${webRoot}/commons/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="${webRoot}/commons/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="${webRoot}/commons/plugins/daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="${webRoot}/commons/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>-->
    <%--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>
    <%--<![endif]-->--%>
    <script type="text/javascript">
        var webPath = {webRoot: "${webRoot}"};
    </script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <jsp:include page="includes/main-header.jsp"/>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <jsp:include page="includes/main-leftmenu.jsp"/>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div style="background-color: #ecf0f5;">
    <div class="content-wrapper" id="main-content-wrapper">


    </div>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.7
        </div>
        <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
        reserved.
    </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script type="text/javascript" src="${webRoot}/commons/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- js路由 -->
<script type="text/javascript" src="${webRoot}/commons/route.js"></script>
<script type="text/javascript" src="${webRoot}/commons/main.js"></script>
<%--<script type="text/javascript">--%>
    <%--$.widget.bridge('uibutton', $.ui.button);--%>
<%--</script>--%>
<!-- Bootstrap 3.3.6 -->
<script type="text/javascript" src="${webRoot}/commons/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>--%>
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/morris/morris.min.js"></script>--%>
<!-- Sparkline 柱状图，折线图js-->
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/sparkline/jquery.sparkline.min.js"></script>--%>
<!-- jvectormap 地图js-->
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>--%>
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>--%>
<!-- jQuery Knob Chart 旋钮插件-->
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/knob/jquery.knob.js"></script>--%>
<!-- daterangepicker 日历插件-->
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>--%>
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/daterangepicker/daterangepicker.js"></script>--%>
<!-- datepicker 日历插件-->
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/datepicker/bootstrap-datepicker.js"></script>--%>
<!-- Bootstrap WYSIHTML5 -->
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>--%>
<!-- Slimscroll 滚动条插件-->
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/slimScroll/jquery.slimscroll.min.js"></script>--%>
<!-- FastClick 触发应用程序插件-->
<%--<script type="text/javascript" src="${webRoot}/commons/plugins/fastclick/fastclick.js"></script>--%>
<!-- AdminLTE App wab端插件-->
<script type="text/javascript" src="${webRoot}/commons/dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) 仪表盘插件-->
<%--<script type="text/javascript" src="${webRoot}/commons/dist/js/pages/dashboard.js"></script>--%>
<!-- AdminLTE for demo purposes -->
<%--<script type="text/javascript" src="${webRoot}/commons/dist/js/demo.js"></script>--%>
<%--bootstrap 提示框html--%>
<jsp:include page="includes/main-alert.jsp"/>
</body>
</html>
