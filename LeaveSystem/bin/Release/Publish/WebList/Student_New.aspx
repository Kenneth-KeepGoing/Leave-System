<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_New.aspx.cs" Inherits="LeaveSystem.WebList.Student_New" %>

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

<main>
<div class="container"  style="width: 100%; height:500px">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">姓名</label> 
        <asp:RequiredFieldValidator
            ID="RequiredFieldValidator4" runat="server" ErrorMessage="姓名不能为空！" 
            ControlToValidate="Name" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox class="form-control" id="Name"  runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">学号</label>
         <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ErrorMessage="学号不能为空！" 
            ControlToValidate="Xuehao" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Label ID="HeFa" class="text-danger" runat="server"
Text=""></asp:Label>
     <asp:TextBox class="form-control" id="Xuehao"  runat="server"></asp:TextBox>
    </div>
  </div>
    <div class="form-row">
  <div class="form-group col-md-6">
      <label for="inputState">性别</label>
      <select id="inputState1" class="form-control"  runat="server" >
        <option selected>男</option>
        <option>女</option>
      </select>
    </div>
         <div class="form-group col-md-6">
      <label for="inputZip">政治面貌</label>  
       <asp:TextBox class="form-control" id="political"  runat="server"></asp:TextBox>
    </div>
        </div>
  <div class="form-group">
    <label for="inputAddress">身份证号码</label>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="Pincodes" ErrorMessage="请输入合法的身份证号" 
            ValidationExpression="\d{17}[\d|X]|\d{15}" ForeColor="Red"></asp:RegularExpressionValidator>
    <asp:TextBox class="form-control" id="Pincodes"  runat="server"></asp:TextBox>

  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">年级</label>
    <asp:TextBox class="form-control" id="Nianji"  runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputState">班级</label>
     <asp:TextBox class="form-control" id="Banji"  runat="server"></asp:TextBox>
    </div>
  </div>
    <div class="form-row">
     <div class="form-group col-md-8">
    <label for="inputAddress">住址</label>
    <asp:TextBox class="form-control" id="Zhuzhi"  runat="server"></asp:TextBox>
  </div>
      <div class="form-group col-md-4">
      <label for="inputState">联系电话</label>
     <asp:TextBox class="form-control" id="Phone"  runat="server"></asp:TextBox>
    </div>
 </div>
    <div class="form-row">
        <div class="form-group col-md-8">
     <label for="exampleFormControlFile1">上传头像 </label>
     <asp:FileUpload ID="Picture" runat="server" />
              </div>
        </div>
   
  <asp:Button ID="Zhuce"  runat="server" class="btn btn-primary" Text="添加" onclick="New_Click" /> <asp:Label ID="Jianche" runat="server"
Text=""></asp:Label>
      
  
</div>
    </main>
        </div>
    </form>
</body>
</html>
