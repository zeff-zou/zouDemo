/**
 * Created by zzf on 2016/12/19.
 */
var TYPE=(function(){
    var r={},types=['Arguments','Function','String','Number','Date','RegExp','Error','Null'];
    for(var i=0,t;t=types[i++];){
        !function(t){
            r['is'+t]=function(obj){
                return Object.prototype.toString.call(obj) === '[object '+t+']';
            }
        }(t)
    }
    return r;
})();
//前端路由 本来打算写成一个函数，但路由对象只需要全局存在一个即可 并没有发现需要多个对象存在的场景
var route=(function(){
    var p={
        //全局拦截器，本来想用链表来实现，但基于Javascript的特性用数组实现更加简单 和易用
        headUseFns:[],
        gets:[],
        type:{
            'number':/^\d+$/,
            'string':/^[^\/]+$/,
            'date':/^[0-9]{6,6}$/
        }
    };
    function getPath(url){
        var path=url.split("#")[1];
        if(!path)return "/";
        if(path.charAt(0)!="/")path="/"+path;
        return path;
    }

    function use(fn){
        p.headUseFns.push(fn);
    }

    function hashchange(path){
        var req={path:path},hlen=p.headUseFns.length;
        if(hlen==0){
            doother(req);
            return;
        }
        //执行拦截器链
        !function intec(i){
            if(i==hlen){
                doother(req);
                return;
            }
            p.headUseFns[i](req,function(){
                intec(i+1);
            });
        }(0);
    }

    function doother(req){
        var path=req.path,hlen=p.gets.length;
        var a=path.split('?');
        if(a[1])path=a[0];
        path=path.split('//').join('/');
        if(path.charAt(path.length-1)=='/')path=path.substr(0,path.length-1);
        //执行拦截器链
        !function intec(i){
            if(i==hlen){
                return;
            }
            if(p.gets[i].match(path,req)){
                p.gets[i].fn(req,function(){
                    intec(i+1);
                });
            }else{
                intec(i+1);
            }

        }(0);
    }

    function get(context,fn){
        var match=null;
        if(TYPE.isFunction(context))match=context;
        else if(TYPE.isRegExp(context)){
            match=function(path,req){
                var para=context.exec(path);
                if(para){
                    req.para=para;
                }
                return para;
            }
        }else if(TYPE.isString(context)){
            match=stringmatch(context);
        }
        var getter={
            match:match,
            fn:fn
        };
        p.gets.push(getter);
    }
    function stringmatch(context){
        var a=context.split(':'),b=context.split('*');
        if(a.length==1&&b.length==1){
            return function(path,req){
                return path==context;
            }
        }else if(a.length!=1){
            var reg=p.type[a[1]];
            if(reg==null)reg=new RegExp(a[1]);
            return function(path,req){
                var para=path.substr(a[0].length);
                var r=path.indexOf(a[0])==0&&reg.test(para);
                if(r)req.para=para;
                return r;
            }
        }else if(b.length!=1){
            return function(path,req){
                return path.indexOf(b[0])==0;
            }
        }
    }
    function start(){
        window.onhashchange=function(){
            var path=getPath(location.href);
            hashchange(path);
        }
        var path=getPath(location.href);
        hashchange(path);
    }

    return {
        start:start,
        use:use,
        get:get
    }
})();

function querystring(req,next){
    var query={};
    //解析req.path 获取参数封装成对象 然后赋值给query 先不做
    req.query=query;
    next();
}
    route.use(querystring);
    route.get('/admin/*',function(req,next){
        //console.log('/admin/*',req);
        $("#main-content-wrapper").load(webPath.webRoot+req.path+".html");
        next();
    });
$(function(){
    route.start();
});
