/**
 * Created by zzf on 2016/12/22.
 */
$(function(){
    $("#userSearchBtn").click(function(){
        $("#userList").bootstrapTable('refresh', {url: webPath.webRoot+'/admin/sysuser/findSysUserPage.json',
         query:{searchUser:$("#searchUser").val()}
        });
    });
});


function userSexFormatter(val){
    if (val==0){
        return "女";
    }else {
        return "男";
    }
}