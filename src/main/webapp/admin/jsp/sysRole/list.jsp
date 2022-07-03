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
            location.href ="/sysRole/toUpdatePage/" + id;
        }
        function doDelete(id){
            if (confirm("您确定删除吗？")){
                location.href ="/sysRole/delete/" + id;
                alert("删除成功！")
            }
        }
        function toAddPage() {
            location.href ="/admin/jsp/sysRole/form.jsp";
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
            <th>用户角色</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${list}" var="sysRole" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td>${sysRole.name}</td>
                <td><fmt:formatDate value="${sysRole.createTime}" pattern="yyyy-MM-dd HH:mm" /></td>
                <td>
                    <a href="javascript:toUpdatePage(${sysRole.id});" class="tablelink">修改</a>
                    <a href="javascript:doDelete(${sysRole.id})" class="tablelink"> 删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
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
