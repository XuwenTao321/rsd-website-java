<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>网站后台管理系统HTML模板--模板之家 www.cssmoban.com</title>
    <link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery.js"></script>

    <script type="text/javascript">
        $(function () {
            $.get("${pageContext.request.contextPath}/student/list", function (data) {
                data.forEach(function (student, index) {
                    var str = "";
                    str += "<tr>";
                    str += "<td>" + (index + 1) + "</td>";
                    str += "<td>" + student.name + "</td>";
                    str += "<td>" + student.age + "</td>";
                    str += "<td>" + student.createTime + "</td>";
                    str += "<td>";
                    str += "<a href='${pageContext.request.contextPath}/admin/jsp/student/form.jsp?id=" + student.id + "'>修改</a>";
                    str += "&nbsp;&nbsp;&nbsp;&nbsp;";
                    str += "<a href='javascript:doDelete(" + student.id + ")'>删除</a>";
                    str += "</td>";
                    str += "</tr>";

                    $("tbody").append(str);

                })
            }, "json");
        });

        function doDelete(id) {
            if (confirm("您确定删除吗？")) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/student/delete/" + id,
                    type: "get",
                    success: function (data, status) {
                        if (status == "success") {
                            alert("删除成功！")
                            location.href = "${pageContext.request.contextPath}/admin/jsp/student/list.jsp";
                        } else {
                            alert("删除失败！");
                        }
                    }
                })
                <%--$.get("${pageContext.request.contextPath}/student/delete/"+id,function(data,status){--%>
                <%--    if (status == "success"){--%>
                <%--        alert("删除成功！")--%>
                <%--        location.href="${pageContext.request.contextPath}/admin/jsp/student/list.jsp";--%>
                <%--    }else {--%>
                <%--        alert("删除失败！");--%>
                <%--    }--%>
                <%--})--%>
            }
        }

        function toAddPage() {
            location.href = "${pageContext.request.contextPath}/admin/jsp/student/form.jsp";
        }
    </script>


</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="${pageContext.request.contextPath}/admin/index.jsp">首页</a></li>
        <li><a href="#">后台管理</a></li>
        <li><a href="#">学生管理</a></li>
        <ul class="toolbar1">
            <li onclick="toAddPage();"><span><img src="${pageContext.request.contextPath}/admin/images/t01.png"/></span>添加
            </li>
        </ul>
    </ul>
</div>

<div class="rightinfo">
    <table class="tablelist">
        <thead>
        <tr>
            <th>序号</th>
            <th>学生名称</th>
            <th>年龄</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>

<script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
</script>
</body>
</html>
