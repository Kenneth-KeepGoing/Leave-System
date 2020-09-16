<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Information.aspx.cs" Inherits="LeaveSystem.WebList.User_Information" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    <title>请假管理系统</title>
      <link rel="icon" sizes="any"  href="/Img/heard.png"/>
  </head>
<body>
    <form id="form1" runat="server">
        <div>
<header >
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" >
    <a class="navbar-brand" href="Zhuye.aspx">主页</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="User_Information.aspx">用户信息</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="Student_Information.aspx">学生信息</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="Vacation_New.aspx">请假申请</a>
        </li>
          <li class="nav-item active">
          <a class="nav-link" href="Vacation_Information.aspx">假条审批</a>
        </li>
          <li class="nav-item active">
<div class="dropdown">
<a class="nav-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">新增用户</a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="Student_New.aspx">新增学生信息</a>
  </div>
</div>
        </li>
      </ul>
      <div class="form-inline mt-2 mt-md-0"> 
        <asp:TextBox ID="TextBox1" class="form-control mr-sm-2" runat="server" placeholder="Search" aria-label="Search"></asp:TextBox>
        <asp:Button runat="server" ID="Chaxun" class="btn btn-outline-success my-2 my-sm-0" onclick="Chxun_Click" Text="Search" />
           &nbsp;
           <asp:Button runat="server" ID="XianShi" class="btn btn-outline-success my-2 my-sm-0" onclick="Xianshi_Click" Text="AllShow" />
      </div>
    </div>
  </nav>
    <br />
    <br />
</header>

<main role="main">
<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">用户ID</th>
      <th scope="col">用户密码</th>
      <th scope="col">权限</th>
      <th scope="col">操作</th>
      <th scope="col">操作</th>
    </tr>
  </thead>
  <tbody>
    <asp:Repeater ID="Liebiao" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("ID") %>
                    </td>
                    <td>
                       <%#Eval("Password") %>
                    </td>
                    <td>
                        <%#Eval("Privilege") %>
                    </td>
                    <td>
                    <a href="User_New.aspx?id=<%#Eval("ID") %>" class="red">编辑</a>
                    </td>
                    <td>
                    <a href="User_Del.aspx?id=<%#Eval("ID") %>" class="red">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
  </tbody>
</table>
&nbsp;&nbsp;
<asp:Button ID="Tijiao"  runat="server" class="btn btn-primary " Text="添加" onclick="New_Click" /> 
</main>
        </div>
    </form>
</body>
</html>
