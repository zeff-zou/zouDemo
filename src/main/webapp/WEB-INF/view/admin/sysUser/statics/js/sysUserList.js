/**
 * Created by zzf on 2016/12/22.
 */
$(function(){
    $("#userSearchBtn").click(function(){
        $("#userList").bootstrapTable('refresh', {url: webPath.webRoot+'/admin/sysuser/findSysUserPage.json',
         query:{searchUser:$("#searchUser").val()}
        });
    });

    $("#addUserBtn").click(function(){
        console.log("addUserBtn");
        $(".userPswDiv").show();
        $("#loginId").attr("disabled",false);
        $("#validateForm .modal-body input[type!='radio']").val("");
        $(".modal-footer .addSysUserForm").attr("value","addSysUser")
        $('#showSysRoleModal').modal('show')
    });


    $("#updateUserBtn").click(function(){
        console.log("updateUserBtn");
        var userArray = $('#userList').bootstrapTable('getSelections');
        if (userArray.length<1){
            alert("请选择一行数据");
            return;
        }else if(userArray.length>1){
            alert("只能选择一行数据");
            return;
        }
        var userId = userArray[0].id;
        $(".userPswDiv").hide();
        $("#loginId").attr("disabled",true);
        $(".modal-footer .addSysUserForm").attr("value","updateSysUser")
        $.ajax({
            url:webPath.webRoot+"/admin/sysuser/select.json",
            type:"post",
            dataType:"json",
            data:{id:userId},
            async: false,
            success:function(data){
                var sysUser=data;
                buildUserEditor(sysUser);
                $('#showSysRoleModal').modal('show')
            },
            error: function(XMLHttpRequest, status){
                if (XMLHttpRequest.status == 500) {
                    //var result = eval("(" + XMLHttpRequest.responseText + ")");
                    alert("系统错误，操作失败！");
                }
            }
        });
    });

    $('#validateForm').submit(function(){
        console.log(document.validateForm.submit.value);
        var userUrl=webPath.webRoot+'/admin/sysuser/add.json';
        var userdetil="添加";
        if (document.validateForm.submit.value !="addSysUser"){
            userUrl=webPath.webRoot+'/admin/sysuser/update.json';
            userdetil="修改";
        }
        $.ajax({
            url:userUrl,
            type:"POST",
            dataType:"json",
            data:$('#validateForm').serialize(),
            success:function(data){
                if ("success"==data.success){
                    alert(userdetil+"成功");
                    $("#userList").bootstrapTable('refresh');
                    $('#showSysRoleModal').modal('hide')
                }else if ("repeated loginId"==data.success){
                    alert("用户账号已存在，不能重复");
                }else if ("repeated userEmail"==data.success){
                    alert("用户邮箱已存在，不能重复");
                }else if ("repeated userMobile"==data.success){
                    alert("用户手机号已存在，不能重复");
                }
            },
            error: function(XMLHttpRequest, status){
                if (XMLHttpRequest.status == 500) {
                    //var result = eval("(" + XMLHttpRequest.responseText + ")");
                    alert("系统错误，操作失败！");
                }
            }
        });
        return false;
    });
});

function buildUserEditor(sysUser){
    //$("#validateForm .modal-body input[type!='radio']").val("");
    //$("#validateForm .modal-body input[type='radio']").removeAttr("checked");
    $("#userId").val(sysUser.id);
    $("#loginId").val(sysUser.loginId);
    $("#userName").val(sysUser.userName);
    $("#userMobile").val(sysUser.userMobile);
    $("#userEmail").val(sysUser.userEmail);
    $("#userSex input[name='userSex']").removeAttr("checked");
    if (sysUser.userSex=='0'){
        $("#userSex input[name='userSex'][value='0']").attr("checked","true");
    }else if(sysUser.userSex=='1'){
        $("#userSex input[name='userSex'][value='1']").attr("checked","true");
    }else if(sysUser.userSex=='2'){
        $("#userSex input[name='userSex'][value='2']").attr("checked","true");
    }
    $("#userIsAdmin input[name='isAdmin']").removeAttr("checked");
    if (sysUser.isAdmin=='Y'){
        $("#userIsAdmin input[name='isAdmin'][value='Y']").attr("checked","true");
    }else if(sysUser.isAdmin=='N'){
        $("#userIsAdmin input[name='isAdmin'][value='N']").attr("checked","true");
    }
    $("#userIsDelete input[name='isDelete']").removeAttr("checked");
    if (sysUser.isDelete=='Y'){
        $("#userIsDelete input[name='isDelete'][value='Y']").attr("checked","true");
    }else if(sysUser.isDelete=='N'){
        $("#userIsDelete input[name='isDelete'][value='N']").attr("checked","true");
    }
}

function userSexFormatter(val){
    if (val==0){
        return "女";
    }else if (val==1){
        return "男";
    }else {
        return "保密";
    }
}


function validatelt(inputelement,err){
    if(inputelement.validity.patternMismatch){
        inputelement.setCustomValidity(err);
    }else{
        inputelement.setCustomValidity("");
        return true;
    }
}