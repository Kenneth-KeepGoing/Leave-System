<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Zhuye.aspx.cs" Inherits="LeaveSystem.WebStudentList.Student_Zhuye" %>

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
<main>
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/Img/school3.png" class="d-block w-100" alt="..." height="400">
      <div class="carousel-caption d-none d-md-block">
        <h5>《白鹿洞二首·其一》</h5>
        <p>读书不觉已春深，一寸光阴一寸金。不是道人来引笑，周情孔思正追寻</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/Img/school4.png" class="d-block w-100" alt="..." height="400">
      <div class="carousel-caption d-none d-md-block">
        <h5>《劝学》</h5>
        <p>三更灯火五更鸡，正是男儿读书时</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/Img/school5.png" class="d-block w-100" alt="..." height="400">
      <div class="carousel-caption d-none d-md-block">
        <h5>《清明》</h5>
        <p>昨日邻家乞新火，晓窗分与读书灯</p>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

  <div class="jumbotron">
  <h1 class="display-4">Hello, <asp:Label ID="Label2" runat="server"></asp:Label>!</h1>
  <p class="lead">欢迎来到请假管理系统</p>
  <hr class="my-4">
  <p class="text-danger">😀 请假需提前申请哟！</p>
  </div>


</main>      
        </div>
           
    </form>

</body>
</html>