<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close ngdialog-custom-close" data-dismiss="modal" aria-label="Close"><span class="ngdialog-custom-close" aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">修改密码</h4>
        </div>
            <div class="modal-body">
                    <input type="hidden" id="alertUserId"/>
                    <div class="form-group" style="height:40px">
                        <label class="control-label col-md-5" for="alertUserPsw" style="width: 120px;"><span style='color:red'>*</span>&nbsp;用户密码：</label>
                        <div class="col-md-7">
                            <input class="form-control" type="password" name="alertUserPsw"    id="alertUserPsw"  pattern="[A-Za-z0-9]{6,30}" name="password" oninvalid="validatelt(this,'密码长度至少为六位，且不能有中文')" >
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button"  name="submit" class="btn btn-primary" onclick="alertUserPswFct()">保存</button>
                <button type="button" class="btn btn-default ngdialog-custom-close" data-dismiss="modal">关闭</button>
            </div>
    </div>
</div>