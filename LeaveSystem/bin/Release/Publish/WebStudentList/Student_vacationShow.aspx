<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_vacationShow.aspx.cs" Inherits="LeaveSystem.WebStudentList.Student_vacationShow" %>

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
          <a class="nav-link" href="Student_Show.aspx">学生信息</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="Student_vacationNew.aspx">请假申请</a>
        </li>
      </ul>
    </div>
  </nav>
</header>
            <div class="container shadow-sm p-3 mb-5 bg-white rounded"  style="width: 100%; height:500px">
		<!--Tab 导航栏 -->
<ul class="nav nav-tabs"id="tab_xsxxgl" style="margin-bottom: 10px;padding-left:15px;">
  <li class="nav-item active ">
    <a class="nav-link " href="#home" role="tab"  data-toggle="tab">假条信息</a>
  </li>
</ul>
        <br />  
   <div class="tab-content">
    <div class="tab-pane fade in active" id="home">
        <div class="form-group row">
             <label class=" col-sm-2 col-form-label text-primary text-right">假条唯一识别号:</label>
            <div class="col-sm-2">
                <asp:Label class="form-control-plaintext" runat="server" id="number" ></asp:Label>
                </div>
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
         </div>
  <div class="form-group row">
          <label class=" col-sm-2 col-form-label text-primary text-right">假因:</label>
    <div class="col-sm-4">
      <asp:Label class="form-control-plaintext" runat="server" id="type" ></asp:Label>
        </div>
</div>
  <div class="form-group row">
            <label class=" col-sm-2 col-form-label text-primary text-right">详情:</label>
       <div class="col-sm-6">
      <asp:Label class="form-control-plaintext" runat="server" id="reason" ></asp:Label>
        </div>
      </div>
        <div class="form-group row">
            <label class=" col-sm-2 col-form-label text-primary text-right">请假时间:</label>
              <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="timestart" ></asp:Label>
        </div>
            <label class="col-form-label text-primary">--</label>
            <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="timeover" ></asp:Label>
        </div>
            </div>
         <div class="form-group row">
               <label class=" col-sm-2 col-form-label text-primary text-right">审批结果:</label>
               <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="condition" ></asp:Label>
                   </div>
                   <label class=" col-sm-2 col-form-label text-primary text-right">审批人:</label>
               <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="agreepeople" ></asp:Label>
                   </div>

               <label class=" col-sm-2 col-form-label text-primary text-right">申请时间:</label>
               <div class="col-sm-2">
      <asp:Label class="form-control-plaintext" runat="server" id="applytime" ></asp:Label>
                   </div>
             </div>
        <hr>
    </div>
</div>
       <script>

$(function ()
{
   $('#tab_xsxxgl li:eq(0) a').tab('show');
});

</script>
                 </div>
        </div>
    </form>
</body>
</html>
