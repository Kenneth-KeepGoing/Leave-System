<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Show.aspx.cs" Inherits="LeaveSystem.WebList.Student_Show" %>

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
<br />
  <div class="container shadow-sm p-3 mb-5 bg-white rounded"  style="width: 100%; height:500px">
		<!--Tab 导航栏 -->
<ul class="nav nav-tabs"id="tab_xsxxgl" style="margin-bottom: 10px;padding-left:15px;">
  <li class="nav-item active ">
    <a class="nav-link " href="#home" role="tab"  data-toggle="tab">基本信息</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#ios" role="tab" data-toggle="tab">请假情况</a>
  </li>
</ul>
        <br />  
   <div class="tab-content">
    <div class="tab-pane fade in active" id="home">
     <div class="form-group row">
     <img src="<%=ABC()%>" class="rounded mx-auto d-block" height="100"  width="100">
         </div>
  <div class="form-group row">
       <label class=" col-sm-2 col-form-label text-primary text-right">学生学号:</label>
    <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="xuehao" ></asp:Label>
    </div>

    <label class=" col-sm-2 col-form-label text-primary text-right">姓名:</label>
    <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="Name" ></asp:Label>
    </div>

    <label class=" col-sm-2 col-form-label text-primary text-right">性别:</label>
    <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="Sex" ></asp:Label>
    </div>
  </div>

    <div class="form-group row">
        <label class=" col-sm-2 col-form-label text-primary text-right">政治面貌:</label>
    <div class="col-sm-2">
        <asp:Label class="form-control-plaintext" runat="server" ID="Political"></asp:Label>
        </div>

         <label class=" col-sm-2 col-form-label text-primary text-right">身份证号码:</label>
    <div class="col-sm-5">
        <asp:Label class="form-control-plaintext" runat="server" ID="Pincodes"></asp:Label>
        </div>
    </div>

     <div class="form-group row">
          <label class=" col-sm-2 col-form-label text-primary text-right">联系方式:</label>
     <div class="col-sm-2">
        <asp:Label class="form-control-plaintext" runat="server" ID="Phone"></asp:Label>
        </div>

         <label class="  col-sm-2 col-form-label text-primary text-right">年级:</label>
     <div class="col-sm-2">
        <asp:Label class="form-control-plaintext" runat="server" ID="Grade"></asp:Label>
        </div>

         <label class="  col-sm-2 col-form-label text-primary text-right">班级:</label>
     <div class="col-sm-2">
        <asp:Label class="form-control-plaintext" runat="server" ID="Class"></asp:Label>
        </div>
     </div>

         <div class="form-group row">
             <label class=" col-sm-2 col-form-label text-primary text-right">详细住址:</label>
     <div class="col-sm-8">
        <asp:Label class="form-control-plaintext" runat="server" ID="Address"></asp:Label>
        </div>
             </div>
        <div class="form-group row">
         <asp:Button ID="Del"  runat="server" class="btn btn-primary mx-auto" Text="删除档案" onclick="Del_Click" /> <!-- mx-auto 居中-->
            </div>
    </div>

    <div class="tab-pane fade" id="ios">
        <table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">假条识别号</th>
      <th scope="col">学号</th>
      <th scope="col">姓名</th>
      <th scope="col">申请时间</th>
      <th scope="col">审批结果</th>
      <th scope="col">操作</th>
    </tr>
  </thead>
  <tbody>
    <asp:Repeater ID="Liebiao" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("Number") %>
                    </td>
                    <td>
                        <%#Eval("ID") %>
                    </td>
                    <td>
                       <%#Eval("name") %>
                    </td>
                    <td>
                        <%#Eval("applytime") %>
                    </td>
                    <td  class="red">
                        <%#Eval("condition") %>
                    </td>
                    <td>
                    <a href="Vacation_ShowResult.aspx?number=<%#Eval("Number") %>" class="red">查看</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
  </tbody>
</table>

    </div>

 
</div>
       <script>

$(function ()
{
   $('#tab_xsxxgl li:eq(0) a').tab('show');
});

</script>
</div>



  
 </main>
        </div>
    </form>
</body>
</html>
