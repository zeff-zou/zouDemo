<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close ngdialog-custom-close" data-dismiss="modal" aria-label="Close"><span class="ngdialog-custom-close" aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">新增用户</h4>
        </div>
        <form  w5c-form-validate="validateOptions" name="validateForm" id="validateForm" class="form-horizontal  w5c-form">
          <div class="modal-body">
              <div style="width: 35%;float: right;">
                  <div class="modal-body">
                      <div class="modal-body-right" style="margin-left:35px;margin-top:-14px">
                          <img src="" width="100px" height="100px" />
                      </div>
                  </div>
              </div>
              <div style="width: 60%">
                  <input type="hidden" name="id" id="userId" >
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="loginId"><span style='color:red'>*</span>&nbsp;用户账号：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="text" name="loginId"  id="loginId" required  pattern="[A-Za-z0-9]{5,10}" oninvalid="validatelt(this,'账号长度为5~10位，且不能有中文')" >
                      </div>
                  </div >
                  <div class="form-group userPswDiv" style="height:40px">
                      <label class="control-label col-md-5" for="userPsw"><span style='color:red'>*</span>&nbsp;用户密码：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="password" name="userPsw"    id="userPsw"  pattern="[A-Za-z0-9]{6,30}" name="password" oninvalid="validatelt(this,'密码长度至少为六位，且不能有中文')" >
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="userName"><span style='color:red'>*</span>&nbsp;用户昵称：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="text" name="userName"    id="userName" required pattern="{2,10}" oninvalid="validatelt(this,'昵称长度为2~10位')" >
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5"><span style='color:red'>*</span>&nbsp;性别：</label>
                      <div class="col-md-7" id="userSex">
                          <label class="radio-inline">
                              <input  type="radio" name="userSex"  value="0"   required> 女
                          </label>
                          <label class="radio-inline">
                              <input type="radio" name="userSex"   value="1" required> 男
                          </label>
                          <label class="radio-inline">
                              <input type="radio" name="userSex"  value="2"  required> 保密
                          </label>
                      </div>、
                      <%--checked="true"--%>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5"><span style='color:red'>*</span>&nbsp;是否管理员：</label>
                      <div class="col-md-7" id="userIsAdmin">
                          <label class="radio-inline">
                              <input  type="radio" name="isAdmin"  value="Y"  required> 是
                          </label>
                          <label class="radio-inline">
                              <input type="radio" name="isAdmin"  value="N" required> 否
                          </label>
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="userMobile"><span style='color:red'>*</span>&nbsp;手机号码：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="text" name="userMobile"   id="userMobile"  pattern="1[34578]\d{9}$"  oninvalid="validatelt(this,'手机号码错误')">
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5" for="userEmail"><span style='color:red'>*</span>&nbsp;邮 箱：</label>
                      <div class="col-md-7">
                          <input class="form-control" type="email" name="userEmail"   id="userEmail">
                      </div>
                  </div>
                  <div class="form-group" style="height:40px">
                      <label class="control-label col-md-5"><span style='color:red'>*</span>&nbsp;账号状态：</label>
                      <div class="col-md-7" id="userIsDelete">
                          <label class="radio-inline">
                              <input type="radio" name="isDelete" value="N"  required> 正常
                          </label>
                          <label class="radio-inline">
                              <input type="radio"  name="isDelete" value="Y" required> 冻结
                          </label>
                      </div>
                  </div>
              </div>
          </div>

            <div class="modal-footer">
                <button type="submit"  name="submit"  value="addSysUser" class="btn btn-primary addSysUserForm">保存</button>
                <button type="button" class="btn btn-default ngdialog-custom-close" data-dismiss="modal">关闭</button>
            </div>
        </form>
    </div>
</div>