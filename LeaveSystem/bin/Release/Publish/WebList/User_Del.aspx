<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Del.aspx.cs" Inherits="LeaveSystem.WebList.User_Del" %>

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
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
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
    </div>
  </nav>
     <br />
    <br />
 <br />
</header>

              <div class="container" style="width: 100%; height:500px">
                   <div class="form-row">
              <div class="form-group col-md-4">
                  </div>
                <div class="form-group col-md-4">
                 <label for="inputId">用户ID</label>
                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="input here" readonly="true"></asp:TextBox>
                    </div>
                 </div>

                   <div class="form-row">
              <div class="form-group col-md-4">
                  </div>
                <div class="form-group col-md-4">
                 <label for="inputId">权限</label>
                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="input here" readonly="true"></asp:TextBox>
                    </div>
                 </div>

                 <div class="form-row">
              <div class="form-group col-md-4">
                  </div>
                      <div class="form-group col-md-4">
                  <div class="alert alert-danger w-100 accordion" role="alert">你确定要删除该用户吗?</div>
                   </div>
                </div>
                  

                   <div class="form-row">
         <div class="form-group col-md-5">
                  </div>
  <div class="form-group col-md-1">
            <asp:Button ID="ShanChu"  runat="server" class="btn btn-primary" Text="删除" onclick="New_Click" /> 
      </div>
    <div class="form-group col-md-2">
            <asp:Button ID="Quxiao"  runat="server" class="btn btn-primary" Text="取消" onclick="Exit_Click" /> 
      </div>
        </div>
    </div>

        </div>
    </form>
</body>
</html>
