<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>系统用户表单界面</title>
    <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-3.6.0.js"></script>

    <script type="text/javascript">
        $(function(){
            $("p").html("中国");
            $("#showInfo").html("日本");
            $(".aaa").html("北京");
            $(".aaa").css("color","red");
        });
    </script>
</head>

<body>
<div class="aaa" id="showInfo"></div>
<div class="aaa" id="showInfo2"></div>
<p></p>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">表单</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>基本信息</span></div>

    <form action="${pageContext.request.contextPath}/sysUser/save" method="post">
        <input type="hidden" name="id" value="${sysUser.id}"/>
        <ul class="forminfo">
            <li><label>登录名称</label><input name="loginName" type="text" class="dfinput" value="${sysUser.loginName}" /><i>登录名称只支持手机号</i></li>
            <li><label>密码</label><input name="password" type="text" class="dfinput" value="${sysUser.password}" /><i>至少包含大小写和数字</i></li>
            <li><label>用户角色</label><input name="roleId" type="text" class="dfinput" value="${sysUser.roleId}" /><i>在下列选项中选择一个</i></li>
            <li><label>真实姓名</label><input name="realName" type="text" class="dfinput" value="${sysUser.realName}" /><i>请输入身份证上的姓名</i></li>
            <li><label>性别</label><input name="sex" type="text" class="dfinput" value="${sysUser.sex}" /><i></i></li>
            <li><label>电话号码</label><input name="tel" type="text" class="dfinput" value="${sysUser.tel}" /><i>请输入正确的手机号</i></li></li></li>
            <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存" /></li>
        </ul>
    </form>
    <!--
        <ul class="forminfo">
        <li><label>文章标题</label><input name="" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
        <li><label>关键字</label><input name="" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
        <li><label>是否审核</label><cite><input name="" type="radio" value="" checked="checked" />是&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="radio" value="" />否</cite></li>
        <li><label>引用地址</label><input name="" type="text" class="dfinput" value="http://www..com/html/uidesign/" /></li>
        <li><label>文章内容</label><textarea name="" cols="" rows="" class="textinput"></textarea></li>
        <li><label>&nbsp;</label><input name="" type="button" class="btn" value="确认保存"/></li>
    </ul>
    -->
</div>
</body>
</html>
