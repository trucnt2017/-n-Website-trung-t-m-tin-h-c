<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>TRUNG TÂM TIN HỌC:HƠME</title>

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
   <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      
      <link href="css/elementdk.css" rel="stylesheet" />
    <![endif]-->
   
 <style>
 h2{ color: #3030d3;
}

.tutors_socnav li a:hover{opacity:0.5}
}

#abc {
width:100%;
height:100%;
top:0;
left:0;

position:fixed;
overflow:auto
}

div#popupContact {
position:absolute;
left:45%;
top:17%;
margin-left:-202px;
font-family:'Raleway',sans-serif
}
#abc form {
max-width:450px;
min-width:450px;
padding:10px 50px;
border:2px solid gray;
border-radius:10px;
font-family:raleway;
background-color:#fff
}
#abc p {
margin-top:30px
}
#abc h2 {
background-color:#0a984e;
padding:20px 35px;
margin:-10px -50px;
text-align:center;
border-radius:10px 10px 0 0
}
#abc hr {
margin:10px -50px;
border:0;
border-top:1px solid #ccc
}
#abc  input[type=text] {
width:100%;
padding:7px;
margin-top:5px;
border:1px solid #ccc;
padding-left:20px;

font-size:20px;
font-family:raleway
}
#abc  input[type=password] {
width:100%;
padding:7px;
margin-top:5px;
border:1px solid #ccc;
padding-left:20px;

font-size:20px;
font-family:raleway
}
#name {
background-image:url(../images/name.jpg);
background-repeat:no-repeat;
background-position:5px 7px
}
#email {
background-image:url(../images/email.png);
background-repeat:no-repeat;
background-position:5px 7px
}
#abc label{


margin-top:20px;
font-size:20px;
font-family:raleway
}
#abc textarea {
background-image:url(../images/msg.png);
background-repeat:no-repeat;
background-position:5px 7px;
width:82%;
height:95px;
padding:10px;
resize:none;
margin-top:30px;
border:1px solid #ccc;
padding-left:40px;
font-size:16px;
font-family:raleway;
margin-bottom:30px
}
#submit {
text-decoration:none;
width:100%;
text-align:center;
display:block;
background-color:#FFBC00;
color:#fff;
border:1px solid #FFCB00;
padding:10px 0;
font-size:20px;
cursor:pointer;
border-radius:5px
}
#abc span {
color:red;
font-weight:700
}

#abc button {
width:25%;
height:45px;
border-radius:3px;
background-color:#0a984e;
color:#fff;
font-family:'Raleway',sans-serif;
font-size:18px;
cursor:pointer
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
                <li class="active"><a href="">TRANG CHỦ</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">LỊCH KHAI GIẢNG<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="DisplayLop"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i> Tin học văn phòng</a></li>
                    <li><a href="tinhocvanphong.jsp"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Lập trình di động</a></li>
                    <li><a href="#"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Thiết kế web</a></li>  
                    <li><a href="cosodulieu.jsp"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Cơ sở dữ liệu</a></li>   
                    <li><a href="#"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Mạng máy tính</a></li>   
                    <li><a href="#"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Lập trình Java</a></li>                
                  </ul>
                </li> 
               <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">CHƯƠNG TRÌNH DẠY<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="ctdthvp.jsp"><i class="fa fa-desktop" aria-hidden="true" style="font-size:18px"></i> Tin học văn phòng</a></li>
                    <li><a href="#"><i class="fa fa-mobile" aria-hidden="true"style="font-size:28px"></i>  Lập trình di động</a></li>
                    <li><a href="#"><i class="fa fa-globe" aria-hidden="true" style="font-size:18px"></i>  Thiết kế web</a></li>  
                    <li><a href="#"><i class="fa fa-database" aria-hidden="true"style="font-size:18px"></i>  Cơ sở dữ liệu</a></li>   
                    <li><a href="#"><i class="fa fa-sitemap" aria-hidden="true"style="font-size:18px"></i>  Mạng máy tính</a></li>   
                    <li><a href="#"><i class="fa fa-keyboard-o" aria-hidden="true"style="font-size:18px"></i>  Lập trình Java</a></li>            
                  </ul>
                </li> 
                <li><a href="tintuc.jsp">TIN TỨC</a></li>
                <li><a href="lienhe.jsp">LIÊN HỆ</a></li>                
                <li><a href="" data-toggle="modal" data-target="#register-modal">ĐĂNG NHẬP</a></li>
              </ul>           
            </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>
 
    <!--=========== END HEADER SECTION ================--> 
<div id="register-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
			<div id="abc">
			<!-- Popup Div Starts Here -->
			<div id="popupContact">
				<!-- Contact Us Form -->
				<form  id="form" action="LoginController" method="post">
					<h2>ĐĂNG NHẬP</h2>
					<hr>
					<label>Username:</label>
						<input id="tendangnhap" name="tenDangNhap" placeholder="Username" type="text" >
						<label>Password:</label>
						<input id="matkhau" name="matKhau" placeholder="Password" type="password">
						<div class="modal-footer">
						<button type="submit"  class="btn btn-default btn-sm" class="animated"> Login</button >
						<button type="submit" class="btn btn-default"  style="width:100px" class="animated md-close">
						<i class="fa fa-close" aria-hidden="true" style="font-size: 20px; color: red"></i> Cancel
						</button>
						</div>
				</form>
			</div>
			<!-- Popup Div Ends Here -->
			
		</div>
    </div>

    <!--=========== BEGIN SLIDER SECTION ================-->
    <section id="slider">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="slider_area">
            <!-- Start super slider -->
            <div id="slides">
              <ul class="slides-container">                          
                <li>
                  <img src="img/slider/1.jpg" alt="img">
                    <div class="slider_caption">
                     
                    <h2>WELCOM TO ANGLE</h2>
                    <p>Cảm ơn bạn đã tin tưởng và đồng hành cùng chúng tôi !
                    <br>Hãy tham gia các khóa học cùng chúng tôi bạn sẽ có những trải nghiệm thú vị </p>
                     <a class="slider_btn" href="#">ĐĂNG KÍ NGAY</a>
                  </div>
                  </li>
                  
                <!-- Start single slider-->
                <li>
                  <img src="img/slider/2.jpg" alt="img">
                   
                </li>
                <!-- Start single slider-->
                <li>
                  <img src="img/slider/3.jpg" alt="img">
                   
                </li>
              </ul>
              <nav class="slides-navigation">
                <a href="#" class="next"></a>
                <a href="#" class="prev"></a>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=========== END SLIDER SECTION ================-->

    <!--=========== BEGIN ABOUT US SECTION ================-->
    <section id="aboutUs">
      <div class="container">
        <div class="row">
        <!-- Start about us area -->
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="aboutus_area wow fadeInLeft">
            <h2 class="titile">TRUNG TÂM TIN HỌC ANGLE</h2>
            <p><i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:30px;color:blue;" ></i> Trung Tâm Tin Học Angle là địa chỉ học tập uy tín cho các bạn trẻ Việt Nam đam mê khám phá công nghệ thông ... Trung Tâm Tin Học ĐH KHTN tuyển dụng giáo viên giảng dạy chuyên đề Wordpress. 19 Tháng 9. Số lượng: 1 ... Trực Nguyễn, Hong Truong, Thành Phát và 6 người khác thích điều này.</p>
            <p><i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:30px;color:blue;" ></i>  Trung Tâm Tin Học thường xuyên khai giảng các khóa học ngắn hạn và chuyên sâu về CNTT dành cho tất cả những đối tượng muốn tìm hiểu và ứng dụng ... Trung tâm là một trong những kết quả của Chương trình "Hợp tác Cộng đồng - Trường Đại học" của trường Đại học Khoa học Tự nhiên TP HCM hợp tác với Đại học ...</p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6">
          <div class="newsfeed_area wow fadeInRight">
            <ul class="nav nav-tabs feed_tabs" id="myTab2">
              <li class="active"><a href="#news" data-toggle="tab">Tin tức </a></li>
              <li><a href="#notice" data-toggle="tab">Thông báo </a></li>
              <li><a href="#events" data-toggle="tab">Sự kiện</a></li>         
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
              <!-- Start news tab content -->
              <div class="tab-pane fade in active" id="news">                
                <ul class="news_tab">
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a class="news_img" href="#">
                          <img class="media-object" src="img/news/3.jpg" alt="img">
                        </a>
                      </div>
                      <div class="media-body">
                      <a href="#">Khai giảng lớp Tin học văn phòng cấp chứng chỉ tin học nâng cao</a>
                       <span class="feed_date">27.02.15</span>
                      </div>
                    </div>                    
                  </li>
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a class="news_img" href="#">
                           <img class="media-object" src="img/news/2.gif" alt="img">
                        </a>
                      </div>
                      <div class="media-body">
                       <a href="#">Khai giảng lớp Tin học văn phòng cấp chứng chỉ tin học nâng cao</a>
                       <span class="feed_date">28.02.15</span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a class="news_img" href="#">
                          <img class="media-object" src="img/news/1.gif" alt="img">
                        </a>
                      </div>
                      <div class="media-body">
                      <a href="#">Khai giảng lớp Tin học văn phòng cấp chứng chỉ tin học nâng cao</a>
                       <span class="feed_date">28.02.15</span>
                      </div>
                    </div>
                  </li>
                </ul>                
                <a class="see_all" href="#">Xem thêm</a>
              </div>
              <!-- Start notice tab content -->  
              <div class="tab-pane fade " id="notice">
                <div class="single_notice_pane">
                  <ul class="news_tab">
                    <li>
                      <div class="media">
                        <div class="media-left">
                          <a class="news_img" href="#">
                            <img class="media-object" src="img/thongbao/1.jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                         <a href="#">Thông báo phát chứng chỉ tin học khóa 2015</a>
                         <span class="feed_date">27.02.15</span>
                        </div>
                      </div>                   
                    </li>
                    <li>
                      <div class="media">
                        <div class="media-left">
                          <a class="news_img" href="#">
                            <img class="media-object" src="img/thongbao/2.png" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                         <a href="#">Thông báo phát chứng chỉ tin học khóa 2015</a>
                         <span class="feed_date">28.02.15</span>             
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="media">
                        <div class="media-left">
                          <a class="news_img" href="#">
                            <img class="media-object" src="img/thongbao/3.gif" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                         <a href="#">Thông báo phát chứng chỉ tin học khóa 2015</a>
                         <span class="feed_date">28.02.15</span>             
                        </div>
                      </div>
                    </li>                                    
                  </ul>
                  <ul class="news_tab">
                    <li>
                      <div class="media">
                        <div class="media-left">
                          <a class="news_img" href="#">
                            <img class="media-object" src="img/sukien/ql00.png" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                         <a href="#">Contrary to popular belief, Lorem Ipsum is not simply random text</a>
                         <span class="feed_date">27.02.15</span>
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="media">
                        <div class="media-left">
                          <a class="news_img" href="#">
                           <img class="media-object" src="img/sukien/ql011.jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                         <a href="#">Dummy text of the printing and typesetting industry</a>
                         <span class="feed_date">28.02.15</span>          
                        </div>
                      </div>
                    </li>
                    <li>
                      <div class="media">
                        <div class="media-left">
                          <a class="news_img" href="#">
                           <img class="media-object" src="img/sukien/ql022.jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                         <a href="#">Contrary to popular belief, Lorem Ipsum is not simply random text</a>
                         <span class="feed_date">28.02.15</span>
                        </div>
                      </div>
                    </li>                                    
                  </ul>
                </div>               
              </div>
              <!-- Start events tab content -->
              <div class="tab-pane fade " id="events">
                <ul class="news_tab">
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a class="news_img" href="#">
                           <img class="media-object" src="img/sukien/ql00.png" alt="img">
                        </a>
                      </div>
                      <div class="media-body">
                       <a href="#">Ngày hội tin học Thành phố Hồ Chí  Minh</a>
                       <span class="feed_date">27.02.15</span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a class="news_img" href="#">
                         <img class="media-object" src="img/sukien/ql011.jpg" alt="img">
                        </a>
                      </div>
                      <div class="media-body">
                       <a href="#">Dự án trường học thông minh</a>
                       <span class="feed_date">28.02.15</span>                
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a class="news_img" href="#">
                          <img class="media-object" src="img/sukien/ql022.jpg" alt="img">
                        </a>
                      </div>
                      <div class="media-body">
                       <a href="#">Hệ thống mang ngày càng được mở rộng</a>
                       <span class="feed_date">28.02.15</span>                
                      </div>
                    </div>
                  </li>                  
                </ul>
                <a class="see_all" href="#">See All</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>
    <!--=========== END ABOUT US SECTION ================--> 

    <!--=========== BEGIN WHY US SECTION ================-->
    
      <!-- End why us top -->

      <!-- Start why us bottom -->
      
      
      <!-- End why us bottom -->
    </section>
    <!--=========== END WHY US SECTION ================-->
   

    <!--=========== BEGIN OUR COURSES SECTION ================-->
    <section id="ourCourses">
      <div class="container">
       <!-- Our courses titile -->
        <div class="row">
          <div class="col-lg-12 col-md-12"> 
          
            <div class="title_area">
              <h2 class="title_two">CÁC KHÓA HỌC</h2>
              <span></span> 
            </div>
          </div>
        </div>
        <!-- End Our courses titile -->
        <!-- Start Our courses content -->
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="ourCourse_content">
              <ul class="course_nav">
                <li>
                 <div class="single_course">
                    <div class="singCourse_imgarea">
                      <img src="img/cources/th.jpg" />
                      <div class="mask">                         
                         <a href="#" class="course_more">XEM CHI TIẾT</a>
                      </div>
                    </div>
                    <div class="singCourse_content">
                    <h3 class="singCourse_title"><a href="#">Tin học văn phòng</a></h3>
                  
                    
                    </div>
                   
                  </div>
                </li>
                <li>
                  <div class="single_course">
                    <div class="singCourse_imgarea">
                      <img src="img/cources/12.png" />
                      <div class="mask">                         
                         <a href="#" class="course_more">XEM CHI TIẾT</a>
                      </div>
                    </div>
                    <div class="singCourse_content">
                    <h3 class="singCourse_title"><a href="#">Thiết kế website</a></h3>
                
                    
                    </div>
                   
                  </div>
                </li> 
                <li>
                 <div class="single_course">
                    <div class="singCourse_imgarea">
                      <img src="img/cources/dd.jpg" />
                      <div class="mask">                         
                         <a href="#" class="course_more">XEM CHI TIẾT</a>
                      </div>
                    </div>
                    <div class="singCourse_content">
                    <h3 class="singCourse_title"><a href="#">Lập trinh di động</a></h3>
                    
                    
                    </div>
                   
                  </div>
                </li>  
                <br></br>
                <ul>
                <li>
                 <div class="single_course">
                    <div class="singCourse_imgarea">
                      <img src="img/cources/mmtq.jpg" />
                      <div class="mask">                         
                         <a href="#" class="course_more">XEM CHI TIẾT</a>
                      </div>
                    </div>
                    <div class="singCourse_content">
                    <h3 class="singCourse_title"><a href="#">Mạng máy tính</a></h3>
                   
                    
                    </div>
                   
                  </div>
                </li>  
               <li>
                 <div class="single_course">
                    <div class="singCourse_imgarea">
                      <img src="img/cources/csdl2.png" />
                      <div class="mask">                         
                         <a href="#" class="course_more">XEM CHI TIẾT</a>
                      </div>
                    </div>
                    <div class="singCourse_content">
                    <h3 class="singCourse_title"><a href="#">Cơ sở dữ liệu</a></h3>
                   
                    
                    </div>
                   
                  </div>
                </li>  
               <li>
                 <div class="single_course">
                    <div class="singCourse_imgarea">
                      <img src="img/cources/java.jpg" />
                      <div class="mask">                         
                         <a href="#" class="course_more">XEM CHI TIẾT</a>
                      </div>
                    </div>
                    <div class="singCourse_content">
                    <h3 class="singCourse_title"><a href="#">Lập trình Java</a></h3>
                    </div>
                   
                  </div>
                </li>       
              </ul>
            </div>
          </div>
        </div>
        <!-- End Our courses content -->
      </div>
    </section>
    
    <!--=========== END OUR COURSES SECTION ================-->  

    <!--=========== BEGIN OUR TUTORS SECTION ================-->
    <section id="ourTutors">
      <div class="container">
       <!-- Our courses titile -->
        <div class="row">
          <div class="col-lg-12 col-md-12"> 
            <div class="title_area">
              <h2 class="title_two">ĐỘI NGŨ GIẢNG VIÊN</h2>
              <span></span> 
            </div>
          </div>
        </div>
        <!-- End Our courses titile -->

        <!-- Start Our courses content -->
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="ourTutors_content">
              <!-- Start Tutors nav -->
              <ul class="tutors_nav">
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/teachers/1.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Lê Minh Huân</h3>
                      <span>Giáo viên LTDD</span>
                     <p>Là giáo viên có nhiều năm kinh nghiệm trong giảng dạy</p>
                    </div>
                   
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/teachers/2.jpg" />                       
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Nguyễn Thúy Vi</h3>
                      <span>Giáo viên THVPr</span>
                      <p>Là giáo viên có nhiều năm kinh nghiệm trong giảng dạy</p>
                    </div>
                    
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                     <img src="img/teachers/3.jpg" />                   
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Nguyễn Anh Minh</h3>
                      <span>Giáo vien MCB</span>
                      <p>Là giáo viên có nhiều năm kinh nghiệm trong giảng dạy</p>
                    </div>
                    
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                     <img src="img/teachers/4.jpg" />                  
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Trần Phú Quốc</h3>
                      <span>Giáo viên TKW</span>
                      <p>Là giáo viên có nhiều năm kinh nghiệm trong giảng dạy</p>
                    </div>
                    
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                       <img src="img/teachers/5.jpg" />               
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Nguyễn Long Thành</h3>
                      <span>Giáo viên LTA</span>
                      <p>Là giáo viên có nhiều năm kinh nghiệm trong giảng dạy</p>
                    </div>
                    
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/course-1.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Jame Burns</h3>
                      <span>Technology Teacher</span>
                      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                    </div>
                    
                  </div>
                </li>                                             
              </ul>
            </div>
          </div>
        </div>
        <!-- End Our courses content -->
      </div>
    </section>
    <!--=========== END OUR TUTORS SECTION ================-->

    <!--=========== BEGIN STUDENTS TESTIMONIAL SECTION ================-->
    <section id="studentsTestimonial">
      <div class="container">
       <!-- Our courses titile -->
        <div class="row">
          <div class="col-lg-12 col-md-12"> 
            <div class="title_area">
              <h2 class="title_two">CẢM NHẬN CỦA HỌC VIÊN</h2>
              <span></span> 
            </div>
          </div>
        </div>
        <!-- End Our courses titile -->

        <!-- Start Our courses content -->
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="studentsTestimonial_content">              
              <div class="row">
                <!-- start single student testimonial -->
                <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="single_stsTestimonial wow fadeInUp">
                    <div class="stsTestimonial_msgbox">
                      <p>Trong thời gian học tập tại trung tâm tôi cảm thấy rât thỏa mái. Giáo viên dạy dễ hiểu và rất nhiệt tình</p>
                    </div>
                    <img class="stsTesti_img" src="img/comment/cg.png" alt="img">
                    <div class="stsTestimonial_content">
                      <h3>Phương Linh</h3>                      
                      <p>Thiết kế website</p>
                    </div>
                  </div>
                </div>
                <!-- End single student testimonial -->
                <!-- start single student testimonial -->
                <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="single_stsTestimonial wow fadeInUp">
                    <div class="stsTestimonial_msgbox">
                      <p>Mình biết đến Trung tâm từ trước đó nên mình đăng kí học lớp tin học văn phòng tại TT. Trong quá trình học mình cảm thấy giáo viên tại    trung tâm giảng dạy tốt lại còn nhiệt tình với học viên.</p>
                    </div>
                    <img class="stsTesti_img" src="img/comment/cg.png" alt="img">
                    <div class="stsTestimonial_content">
                      <h3>Ái My</h3>                      
                     
                      <p>Tin học văn phòng</p>
                    </div>
                  </div>
                </div>
                <!-- End single student testimonial -->
                <!-- start single student testimonial -->
                <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="single_stsTestimonial wow fadeInUp">
                    <div class="stsTestimonial_msgbox">
                      <p>Trong thời gian học tập tại trung tâm tôi cảm thấy rât thỏa mái. Giáo viên dạy dễ hiểu và rất nhiệt tình</p>
                    </div>
                    <img class="stsTesti_img" src="img/comment/cg.png" alt="img">
                    <div class="stsTestimonial_content">
                      <h3>Bảo Trân</h3>                      
                     
                      <p>Tin học văn phòng</p>
                    </div>
                  </div>
                </div>
                <!-- End single student testimonial -->
              </div>
            </div>
          </div>
        </div>
        <!-- End Our courses content -->
      </div>
    </section>
    <!--=========== END STUDENTS TESTIMONIAL SECTION ================-->    
    
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
    <!-- Preloader js file -->
<!--     <script src="js/queryloader2.min.js" type="text/javascript"></script> -->
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