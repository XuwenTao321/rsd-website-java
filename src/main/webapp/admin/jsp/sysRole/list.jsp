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
            location.href ="${pageContext.request.contextPath}/sysRole/toUpdatePage/" + id;
        }
        function doDelete(id){
            if (confirm("您确定删除吗？")){
                location.href ="${pageContext.request.contextPath}/sysRole/delete/" + id;
                alert("删除成功！")
            }
        }
        function toAddPage() {
            location.href ="${pageContext.request.contextPath}/admin/jsp/sysRole/form.jsp";
        }
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
    </div>
</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>
