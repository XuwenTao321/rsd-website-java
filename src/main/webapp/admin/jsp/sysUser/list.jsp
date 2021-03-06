<%@ page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
    <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery.js"></script>

    <script type="text/javascript">
        function toUpdatePage(id){
            location.href ="${pageContext.request.contextPath}/sysUser/toUpdatePage/" + id;
        }
        function doDelete(id){
            if (confirm("您确定删除吗？")){
                location.href ="${pageContext.request.contextPath}/sysUser/delete/" + id;
                alert("删除成功！")
            }
        }
        function toAddPage() {
            location.href ="${pageContext.request.contextPath}/admin/jsp/sysUser/form.jsp";
        }
        
        $(document).ready(function(){
            $(".click").click(function(){
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function(){
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });

        });
    </script>


</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">数据表</a></li>
        <li><a href="#">基本内容</a></li>
    </ul>
</div>

<div class="rightinfo">

    <div class="tools">

<%--        <ul class="toolbar">--%>
<%--            <li class="click"><span><img src="/admin/images/t01.png" /></span>添加</li>--%>
<%--&lt;%&ndash;            <li class="click"><span><img src="/admin/images/t02.png" /></span>修改</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li><span><img src="/admin/images/t03.png" /></span>删除</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li><span><img src="/admin/images/t04.png" /></span>统计</li>&ndash;%&gt;--%>
<%--        </ul>--%>


        <ul class="toolbar1">
            <li onclick="toAddPage();"><span><img src="${pageContext.request.contextPath}/admin/images/t01.png" /></span>添加</li>
        </ul>

    </div>
    <table class="tablelist">
        <thead>
        <tr>
            <th>序号</th>
            <th>登录名称</th>
            <th>密码</th>
            <th>用户角色</th>
            <th>真实姓名</th>
            <th>性别</th>
            <th>联系电话</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${pageInfo.list}" var="sysUser" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td>${sysUser.loginName}</td>
                <td>${sysUser.password}</td>
                <td>${sysUser.roleName}</td>
                <td>${sysUser.realName}</td>
                <td>${sysUser.sex}</td>
                <td>${sysUser.tel}</td>
                <td><fmt:formatDate value="${sysUser.createTime}" pattern="yyyy-MM-dd HH:mm" /></td>
                <td>
                    <a href="javascript:toUpdatePage(${sysUser.id});" class="tablelink">修改</a>
                    <a href="javascript:doDelete(${sysUser.id})" class="tablelink"> 删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="pagin">
        <div class="message">共<i class="blue">${pageInfo.total}</i>条记录，当前显示第&nbsp;<i class="blue">${pageInfo.pageNum}&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <c:forEach items="${pageInfo.navigatepageNums}" var="num">
                <li class="paginItem"><a href="/sysUser/list/${num}">${num}</a></li>
            </c:forEach>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>


    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>

        <div class="tipinfo">
            <span><img src="/admin/images/ticon.png" /></span>
            <div class="tipright">
                <p>是否确认对信息的修改 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>

        <div class="tipbtn">
            <input name="" type="button"  class="sure" value="确定" />&nbsp;
            <input name="" type="button"  class="cancel" value="取消" />
        </div>

    </div>




</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>
