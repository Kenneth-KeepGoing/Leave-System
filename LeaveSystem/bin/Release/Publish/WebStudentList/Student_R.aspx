<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_R.aspx.cs" Inherits="LeaveSystem.WebStudentList.Student_R" %>

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
    <a class="navbar-brand" href="Student_Zhuye.aspx">主页</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="Student_Show.aspx">学生信息</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="Student_vacationNew.aspx">请假申请</a>
        </li>
      </ul>
    </div>
  </nav>
</header>
             <br />
              <br />
              <br />
            <main>
<div class="container"  style="width: 100%; height:500px">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">姓名</label>
      <asp:TextBox class="form-control" id="Name"  runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">学号</label> <asp:Label ID="HeFa" runat="server"
Text=""></asp:Label>
     <asp:Label class="form-control" id="Xuehao"  runat="server"></asp:Label>
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
  <asp:Button ID="Zhuce"  runat="server" class="btn btn-primary" Text="修改" onclick="New_Click" /> <asp:Label ID="Jianche" runat="server"
Text=""></asp:Label>
  
</div>
    </main>
        </div>
    </form>
</body>
</html>
