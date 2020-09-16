<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="StaffingSystem.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title>欢迎登陆请假管理系统</title>
    <link rel="icon" sizes="any"  href="/Img/heard.png"/>
    <link rel="stylesheet" href="css/layui.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/advanced.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="register-container">
    <h1 class="title">欢迎登陆</h1>
	<div class="connect">
        <p>请假管理系统</p>
    </div>
    <div class="choose">
        <!-- Nav tabs -->
        <a href="../StudentLogin.aspx" class="layui-btn layui-btn-normal"><i class="layui-icon layui-icon-face-smile"></i><p>学生登陆</p> </a>
      <a href="../managerLogin.aspx" class="layui-btn layui-btn-normal"><i class="layui-icon layui-icon-templeate-1"></i><p>辅导员登陆</p> </a>
    </div>
    <br/>
    <br/>
</div>
    </form>
</body>
<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
<!--背景图片自动更换-->
<script src="./js/supersized.3.2.7.min.js"></script>
<script src="./js/advanced.js"></script>
</html>
