<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close ngdialog-custom-close" data-dismiss="modal" aria-label="Close"><span class="ngdialog-custom-close" aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">新增用户</h4>
        </div>
        <form  w5c-form-validate="validateOptions" novalidate name="validateForm" id="validateForm" class="form-horizontal  w5c-form">
          <div class="modal-body">
              <div style="width: 35%;float: right;">
                  <div class="modal-body">
                      <div class="modal-body-right" style="margin-left:35px;margin-top:-14px">
                          <img src="" width="100px" height="100px" />
                      </div>
                  </div>
              </div>
              <div style="width: 60%">
                  <input type="hidden" name="id" id="id" >
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="alterLoginId"><span style='color:red'>*</span>&nbsp;用户账号：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="text" name="loginId"    id="alterLoginId" >
                      </div>
                  </div >
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="alterUserName"><span style='color:red'>*</span>&nbsp;用户昵称：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="text" name="userName"    id="alterUserName" >
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5"><span style='color:red'>*</span>&nbsp;性别：</label>
                      <div class="col-md-7">
                          <label class="radio-inline">
                              <input  type="radio" name="userSexCode"  value="0"> 男
                          </label>
                          <label class="radio-inline">
                              <input type="radio" name="userSexCode"   value="1"> 女
                          </label>
                          <label class="radio-inline">
                              <input type="radio" name="userSexCode"  value="2" checked="true"> 保密
                          </label>
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5"><span style='color:red'>*</span>&nbsp;是否管理员：</label>
                      <div class="col-md-7">
                          <label class="radio-inline">
                              <input  type="radio" name="userSexCode"  value="0"> 是
                          </label>
                          <label class="radio-inline">
                              <input type="radio" name="userSexCode"   value="1"> 否
                          </label>
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="userMoble"><span style='color:red'>*</span>&nbsp;手机号码：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="password" name="userPsw"   id="userMoble">
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="userEmail"><span style='color:red'>*</span>&nbsp;邮 箱：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="password" name="userPsw"   id="userEmail">
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5"><span style='color:red'>*</span>&nbsp;账号状态：</label>
                      <div class="col-md-7">
                          <label class="radio-inline">
                              <input type="radio" name="isDelete" value="N" checked="true"> 正常
                          </label>
                          <label class="radio-inline">
                              <input type="radio"  name="isDelete" value="Y"> 冻结
                          </label>
                      </div>
                  </div>
              </div>
          </div>

            <div class="modal-footer">
                <button type="submit"  onclick="addSysUserForm()" value="Submit" class="btn btn-primary addSysUserForm">保存</button>
                <button type="submit"  onclick="updateSysUserForm()" value="Submit" class="btn btn-primary updateSysUserForm" style="display: none;">修改</button>
                <button type="button" class="btn btn-default ngdialog-custom-close" data-dismiss="modal">关闭</button>
            </div>
        </form>
    </div>
</div>