/**
 * Created by zzf on 2016/12/22.
 */
$(function(){
    $("#userSearchBtn").click(function(){
        $("#userList").bootstrapTable('refresh', {url: webPath.webRoot+'/admin/sysuser/findSysUserPage.json',
         query:{searchUser:$("#searchUser").val()}
        });
    });
    $('#validateForm').submit(function(){
        //console.log(document.validateForm.submit.value);
        var userUrl=webPath.webRoot+'/admin/sysuser/add.json';
        var userdetil="添加";
        if (document.validateForm.submit.value !="addSysUser"){
            url=webPath.webRoot+'/admin/sysuser/update.json';
            userdetil="修改";
        }
        $.ajax({
            url:userUrl,
            type:"POST",
            dataType:"json",
            data:$('#validateForm').serialize(),
            success:function(data){
                if ("Y"==data.success){
                    alert(userdetil+"成功");
                }else{
                    alert(userdetil+"失败");
                }
            },
            error: function(XMLHttpRequest, status){
                if (XMLHttpRequest.status == 500) {
                    var result = eval("(" + XMLHttpRequest.responseText + ")");
                    alert(result.errorObject.errorText);
                }
            }
        });
        return false;
    });
});


function userSexFormatter(val){
    if (val==0){
        return "女";
    }else {
        return "男";
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