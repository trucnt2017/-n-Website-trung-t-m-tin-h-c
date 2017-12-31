<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!--=============================================== 
    Template Design By WpFreeware Team.
    Author URI : http://www.wpfreeware.com/
    ====================================================-->
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>Tin tức</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="img/wpf-favicon.png"/>

    <!-- CSS
    ================================================== -->       
    <!-- Bootstrap css file-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome css file-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
   <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="css/style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->  
    <style>
    #imgBanner {
  background-image: url("img/slider/3.jpg");
  
         table {
            width: 99%;
            height: auto;
            margin: 5px;
            border-collapse: collapse;
           
        }
        body{
        font-size: 16px;
             font-family: sans-serif ;
        }
     
       
    </style>
  </head>
  <body>

    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">  <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" href="index.html">TTTH <span>ANGLE</span></a>              
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"></a>  -->            
                     
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
              <li class="nav-item active">
                <a class="nav-link" href="index.jsp"><i class="fa fa-home" aria-hidden="true" style="font-size:22px"></i></a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tin học văn phòng<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="404.html"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>  Tin học cơ bản</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Quản lý Access</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Excel cho kế toán</a></li>  
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Lập trình trên Excel</a></li>   
                                    
                  </ul>
                </li> 
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Lịch khai giảng<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                     <li><a href="404.html"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>  Tin học cơ bản</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Quản lý Access</a></li>
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Excel cho kế toán</a></li>  
                    <li><a href="#"><i class="fa fa-arrow-circle-right" aria-hidden="true" style="font-size:20px"></i>   Lập trình trên Excel</a></li>   
                  </ul>
                </li> 
                <li><a href="gochocvien.jsp">Góc học viên</a></li>
               
              </ul>           
            </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>
 
    <!--=========== END HEADER SECTION ================--> 

      <!-- END MENU -->    
    </header>
    <!--=========== END HEADER SECTION ================--> 

    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="imgBanner">
      <h2></h2>
        <br></br>
        <br></br>
        <br></br>
      <br></br>
          <section id="login" class="">
                    <div class="container text-center">
			
			         <div id="button" >

				<!-- Button trigger modal -->
				    <a  class="button"  href="#lich">
                    <span class="txt" >ĐĂNG KÍ NGAY</span>
                    <span class="round"><i class="fa fa-chevron-right"></i></span>
                         </a>
                         
				</div>
			</div>
      	 </section>
                 
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
   
      
       
            <div class="title_area" style="padding:40px 0px 0px 0px">
              <h2 class="title_two" >ĐỐI TƯỢNG KHÓA HỌC</h2>
             <i class="fa fa-2x fa-angle-down"></i>
             <div class="container">
             <p style=" padding:0px;text-align: left"> 
     	<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:30px;color:blue;" ></i>  Khóa học phù hợp với những ai là dân văn phòng, muốn hoàn thiện các kỹ năng Word, Excel, Powerpoint, Access và Office 365<br>
		<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:30px;color:blue;" ></i> Người mới sử dụng máy tính, cần biết các kỹ năng tin học để làm việc với máy tính<br>
		<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:30px;color:blue;" ></i> Sinh viên cần học kỹ năng tin học văn phòng để làm nổi bật CV, chinh phục nhà tuyển dụng và đàm phán được mức lương mong muốn<br>
		<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:30px;color:blue;" ></i> Giáo viên cần bổ sung các kỹ năng sử dụng máy tính để nâng cao chất lượng giảng dạy<br>
		<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:30px;color:blue;" ></i> Chủ shop Online muốn học tin học để thống kê hàng hóa, tối ưu chi phí, gia tăng lợi nhuận</p>
            </div></div>
        
       <!-- Our courses titile -->
        <div class="container">
       <br>
       <section id="login" class="">
       <div class="container text-center">
			<div id="button">
				<!-- Button trigger modal -->
				<a class="button" href="tinhocvanphong.html">
                    <span class="txt">ĐĂNG KÍ NGAY</span>
                    <span class="round"><i class="fa fa-chevron-right"></i></span>
                </a>
			</div>
		</div>
       </section>
       <br>
       <br></br>
      <div class="container">
        <div class="row"style="text-align: center">
          
               <h2>NỘI DUNG KHÓA HỌC</h2>
             <h3><b> Làm chủ bộ Office 365: Word, Excel, Powerpoint, Access</b>
               </h3> <i class="fa fa-2x fa-angle-down"></i>
         
        </div>
      
    </div>
  <div class="container">
       	<div id="" class="">
		<div class="row ">
			<div class="col-md-7">
                <h3 class="" style="color:#3030d3"><b >PHẦN 1: TRỌN BỘ KIẾN THỨC VỀ WORD</b></h3>
				<p ><b>Bạn đang gặp vấn đề?</b><br>
                </br>    <i class="fa fa-circle" aria-hidden="true" style="font-size:8px"></i> 27 video bài giảng cung cấp toàn bộ kỹ năng về Microsoft Word từ cơ bản đến nâng cao<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Phương pháp học đi đôi với thực hành giúp học viên nắm bắt kiến thức nhanh nhất.<br>
                    </p><br>
			</div>
			 <div class="col-lg-5  col-md-5 col-sm-5">
                        <a class="blog_img" href="#">
                          <img src="img/slider/wordq.jpg" alt="img">
                        </a>
                  </div>
			</div>

		<hr class="featurette-divider">

		<div class="row ">
		<div class="col-lg-5  col-md-5 col-sm-5">
                        <a class="blog_img" href="#">
                          <img src="img/slider/excel-2016.png" alt="img">
                        </a>
                  </div>
			
			<div class="col-md-7 order-md-2">
				<h3 class="featurette-heading" style="color:#3030d3"><b>PHẦN 2: EXCEL TỪ CƠ BẢN ĐẾN NÂNG CAO.</b></h3>
				<p class="lead">
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Xử lý dữ liệu trong excel: Nhập, xóa, trích lọc dữ liệu, xóa(chèn) cột(dòng), chuyển dữ liệu text thành cột trong excel<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Làm việc với bảng tính (Worksheet) và quản lý dữ liệu (Manage Data)<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Định dạng trong excel<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i>  Học viên đủ khả năng ứng tuyển vị trí lập trình Android tại các doanh nghiệp phần mềm.<br>
                    
			</div>
			
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h3 class="featurette-heading" style="color:#3030d3"><b>PHẦN 3: LÀM POWERPOINT CHUYÊN NGHIỆP</b></h3>
                 <p class="lead"> <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Thành thạo kĩ năng sử dụng các công cụ trên giao diện mới nhất của PowerPoint<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i>  Thành thạo kĩ năng cơ bản về xây dựng layout, theme, template, biểu đồ<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Sử dụng màu sắc, bố cục khoa học để xây dựng một bài thuyết trình thuyết phục nhất<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Các hiệu ứng nâng cao, trình chiếu tự động, các siêu liên kết và lệnh điều hướng với các slide<br>
                    
			</div>
			
			<div class="col-lg-5  col-md-5 col-sm-5">
                        <a class="blog_img" href="#">
                         <img src="img/slider/pow-2016.png" alt="img">
                        </a>
           </div>
			
		</div>
            <hr>
       <div class="row featurette">
       		 			<div class="col-lg-5 col-md-5 col-sm-5">
                      	<div class="blogimg_container">
                        <a class="blog_img" href="#">
                         <img src="img/slider/access-2016.png" alt="img">
                        </a>
                    </div>
                  </div>
			<div class="col-md-7 order-md-2">
				<h3 class="featurette-heading" style="padding: 20px 0 ;color:#3030d3"><b>PHẦN 4: MICROSOFT ACCESS</b></h3>
				<p class="lead"><i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i>Tạo Form bằng Form Wizard, Design</b><br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Làm quen với các công cụ Microsoft Access<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i>  Xây dựng cơ sở dữ liệu và quản lý dữ liệu<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Truy vấn chọn, truy vấn chọn có điều kiện <br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i>  Truy vấn có tính toán, truy vấn dạng bảng<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Làm báo cáo<br>
                    <i class="fa fa-circle" aria-hidden="true" style="font-size:10px"></i> Cách thêm xóa dòng dữ liệu</p>
			</div>
			
		</div>
	</div>
      
       <hr>
       
     <b>  TIN HỌC VĂN PHÒNG CƠ BẢN</b>
       <hr>
       <br>
    </div>
    <div class="container">
   <div class="row">
   
   <div class="card-deck">
 <div class="col-md-3">
     <div class="thumbnail">
  <div class="card">
      <a href="OfficeIn.html">   <img class="card-img-top"  src="img/ctdthvp/1.jpg" alt="Tin học văn phòng"></a>
   
  <div class="card-footer" style="padding: 0px 36px ">
      <a class="slider_btn" href="#">Lịch khai giảng</a>
    </div>
  </div>
     </div>
       </div>
     <div class="col-md-3">
     <div class="thumbnail">
  <div class="card">
      <a href="mangmt.html"><img class="card-img-top" src="img/ctdthvp/2.jpg" alt="Card image cap"></a>
   
  <div class="card-footer" style="padding: 0px 36px ">
       <a class="slider_btn" href="#">Lịch khai giảng</a>
    </div>
  </div>
         </div>   
       </div>
        <div class="col-md-3">
        <div class="thumbnail">
  <div class="card">
      <a href="tkweb.html"> <img class="card-img-top" src="img/ctdthvp/3.png" alt="Card image cap"></a>
    <div class="card-footer" style="padding: 0px 36px ">
     <a class="slider_btn" href="#">Lịch khai giảng</a>
    </div>
  </div>
            </div>
       </div>
       <div class="col-md-3">
        <div class="thumbnail">
  <div class="card">
      <a href="ltdidong.html"><img class="card-img-top" src="img/ctdthvp/4.jpg" alt="Card image cap"></a>
   
   <div class="card-footer" style="padding: 0px 36px; ">
     <a class="slider_btn" href="#" >Lịch khai giảng</a>
    </div>
  </div>
           </div>
       </div>
</div>
    </div>
    </div>
    </div>
    

    
    <!--=========== BEGIN FOOTER SECTION ================-->
    <footer id="footer">
      <!-- Start footer top area -->
      <div class="footer_top">
        <div class="container">
          <div class="row">
            <div class="col-ld-6 col-md-6 col-sm-6">
              <div class="single_footer_widget">
                <h3>TRUNG TÂM TIN HỌC ANGLE</h3>
                <p> <i class="fa fa-map-marker" aria-hidden="true"></i>  Địa chỉ: 134 Lê Văn Việt, Hiệp Phú, Quận 9,TPHCM</p>
                <p><i  class="fa fa-phone-square" aria-hidden="true"></i>  Số điện thoại: 028 434 2323</p>
						<p ><i class="fa fa-envelope" aria-hidden="true"></i>  Email: ttthangle@edu.vn</p>
              </div>
            </div>
           
           
            <div class="col-ld-6  col-md-6 col-sm-6">
              <div class="single_footer_widget">
                <h3>Liên hệ</h3>
                <ul class="footer_social">
                  <p class="lead social-icons">
						<a href=""> <i class="fa fa-facebook-square"></i></a>
						<a href="" class="tw"> <i class="fa fa-twitter-square"></i></a>
						<a href="" class="rs"> <i class="fa fa-rss-square"></i></a>
						<a href="" class="yt"> <i class="fa fa-youtube-square"></i></a>
						<a href="" class="li"> <i class="fa fa-linkedin-square"></i></a>
						<a href="" class="gp"> <i class="fa fa-google-plus-square"></i></a>
					</p>
					
                </ul>
                 <p >&copy; 2017 Trung Tâm Tin Học Angle All Rights Reserved</p>
              </div>
            </div>
          </div>
        </div>
      </div>
     
    </footer>
    <!--=========== END FOOTER SECTION ================--> 

  

    <!-- Javascript Files
    ================================================== -->

    <!-- initialize jQuery Library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   
    <!-- For smooth animatin  -->
    <script src="js/wow.min.js"></script>  
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>
    <!-- superslides slider -->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.animate-enhanced.min.js"></script>
    <script src="js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>   
    <!-- for circle counter -->
    <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
    <!-- Gallery slider -->
    <script type="text/javascript" language="javascript" src="js/jquery.tosrus.min.all.js"></script>   
   
    <!-- Custom js-->
    <script src="js/custom.js"></script>
  <!--=============================================== 
    Template Design By WpFreeware Team.
    Author URI : http://www.wpfreeware.com/
  ====================================================-->

  </body>
</html>