l<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vacation_New.aspx.cs" Inherits="LeaveSystem.WebList.Vacation_New" %>

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

<main class="p-3 mb-2 bg-light text-dark">

    <div class="container "  style="width: 100%; height:500px">
        <div class="form-row  was-validated">
     <div class="form-group  col-md-4">
     <label id="Name1">姓名</label> 
      <asp:TextBox class="form-control" id="Name" runat="server" required="required" ></asp:TextBox>   
</div>
     <div class="form-group col-md-4">
    <label  id="id">学号</label>
    <asp:TextBox class="form-control" id="Id"  runat="server" required="required"></asp:TextBox>
</div>
      </div>

              <div class="form-row">
      <div class="input-group form-group  col-md-8">
            <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="ill" value="病假">
  <label class="form-check-label" for="inlineRadio1">病假</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="matter" value="事假">
  <label class="form-check-label" for="inlineRadio2">事假</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="ether" value="其他">
  <label class="form-check-label" for="inlineRadio3">其他</label>
</div>
     </div>
     </div>
        
     <div class="form-row">
      <div class="input-group form-group  col-md-8">
        <div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text">请假事由</span>
  </div>
  <textarea class="form-control" name="reason" aria-label="With textarea"></textarea>
</div>
           </div>
     </div>

         <div class="form-row">
             <div class="form-group col-md-4">
        <label id="inputState">请假日期</label>
         <input  class="form-control" type="date" name="time1" />
              </div>
              <div class="form-group col-md-4">
        <label id="inputState2">销假日期</label>
         <input  class="form-control" type="date" name="time2"/>
              </div>
      </div>

        <div class="form-row col-md-8">
           
  <asp:Button ID="Tijiao"  runat="server" class="btn btn-primary mx-auto" Text="提交" onclick="New_Click" /> 
                    
            </div>

      
</div>
     
    </main>
           
        </div>
    </form>
</body>
</html>
