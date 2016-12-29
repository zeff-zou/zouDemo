<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<input type="hidden" id="common_confirm_btn" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#common_confirm_model">
<div id="common_confirm_model" class="modal">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h5 class="modal-title"><i class="fa fa-exclamation-circle"></i> <span class="title"></span></h5>
            </div>
            <div class="modal-body small">
                <p ><span class="message"></span></p>
            </div>
            <div class="modal-footer" >
                <button type="button" class="btn btn-primary ok" data-dismiss="modal">确认</button>
                <button type="button" class="btn btn-default cancel" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>
