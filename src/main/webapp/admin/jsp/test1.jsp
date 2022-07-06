<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="test.js"></script>
    <script type="text/javascript">
        function checkForm(){
            var loginName = document.getElementById("loginName");
            var password = document.getElementById("password");
            if(loginName.value == ""){
                alert("用户名不能为空！")
                return false;
            }
            if (password.value == ""){
                alert("密码不能为空！")
                return  false;
            }
            return true;
        }
        function aa(){
            alert("AAAAAAAAAAAAAAAAAAAAAAAA")
        }
    </script>
</head>
<body>
    <form action="aaa/bbb" method="get" onsubmit="checkForm();">
        <input type="text" name="loginName" id="loginName" />
        <input type="password" name="password" id="password" />
        <input type="submit" />
    </form>
    <input type="button" value="点我" onclick="aa();"/>
</body>
</html>
