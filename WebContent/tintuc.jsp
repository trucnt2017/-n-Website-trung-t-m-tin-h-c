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
    <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">  

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->  
    <style>
      #imgBanner {
  background-image: url("img/slider/a.png");
  }
  .boder{
 border: 1px solid #dbd6d6;
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
                <li class="active"><a href="index.jsp">TRANG CHỦ</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">LỊCH KHAI GIẢNG<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="tinhocvanphong.jsp"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i> Tin học văn phòng</a></li>
                    <li><a href="#"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Lập trình di động</a></li>
                    <li><a href="#"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Thiết kế web</a></li>  
                    <li><a href="#"><i class="fa fa-calendar" aria-hidden="true" style="font-size:18px"></i>  Cơ sở dữ liệu</a></li>   
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
			<div class="modal-dialog modal-lg">
				<div class="col-md-11">
                    <div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">ĐĂNG NHẬP</h5>
						
					</div>
					<div class="modal-body">
						<form>
                            
                          

							<div class="form-row">
								<div class="form-group  col-md-6">
									<div>
										<label for="inputUsername">Họ tên</label>
										<span class="red_right" id="username_error_message2"></span>
                                        <input type="email" class="form-control" id="inputUsername" placeholder="Phạm Thị Quà">
									</div>
								</div>
								
							</div>

							

							<div class="form-group">
								<div>
									<label for="inputAddress">Ghi chú</label>
									<span class="red_right" id="address_error_message2"></span>
								</div>
								<input type="text" class="form-control" id="inputAddress" placeholder="">
							</div>

							

						</form>
					</div>
					<div class="modal-footer">
						<a href=""><button type="button" class="btn btn-primary">Đăng Nhập</button></a>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
					</div>
				</div>
			</div>
		</div>
    </div>
      <!-- END MENU -->    
    </header>
    <!--=========== END HEADER SECTION ================--> 

    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="slider">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="slider_area">
            <!-- Start super slider -->
            <div id="slides">
              <ul class="slides-container">                          
                <li>
                  <img src="img/slider/2.jpg" alt="img">
                   <div class="slider_caption">
                    
                    <a class="slider_btn" href="#"></a>
                  </div>
                  </li>
                <!-- Start single slider-->
                <li>
                  <img src="img/slider/3.jpg" alt="img">
                   <div class="slider_caption slider_right_caption">
                    <h2>Better Education Environment</h2>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search</p>
                    <a class="slider_btn" href="#">Know More</a>
                  </div>
                </li>
                <!-- Start single slider-->
                <li>
                  <img src="img/slider/4.jpg" alt="img">
                   <div class="slider_caption">
                    <h2>Find out you in better way</h2>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search</p>
                    <a class="slider_btn" href="#">Know More</a>
                  </div>
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
    <!--=========== END COURSE BANNER SECTION ================-->
    
    <!--=========== BEGIN COURSE BANNER SECTION ================-->
    <section id="courseArchive">
      <div class="container">
        <div class="row">
          <!-- start course content -->
          <div class="col-lg-8 col-md-8 col-sm-8">
            <div class="courseArchive_content">
              <!-- start blog archive  -->
              <div class="row">
                <!-- start single blog archive -->
                <div class="col-lg-12 col-12 col-sm-12">
                  <div class="single_blog_archive wow fadeInUp">
                    <div class="blogimg_container">
                      <a href="#" class="blog_img">
                        <img alt="img" src="img/cover.jpg">
                      </a>
                    </div>
                    <h3 class="blog_title"><a href="events-single.html" style=" color: #3030d3;"> VÌ SAO CHÚNG TA NÊN HỌC TIN HỌC VĂN PHÒNG</a></h3>
                    <div class="blog_commentbox">
                      <p><i class="fa fa-clock-o"></i>Thời gian: 7pm,10/12/2017</p>
                                       
                    </div>
                    <p class="">Bạn đang muốn hoàn thiện các kỹ năng để đi xin việc, hay để hoàn thành tốt công việc của mình đang đảm nhận, hay thậm chí là tự mình quản lý doanh nghiệp? Vậy thì một kỹ năng không thể thiếu đó chính là TIN HỌC VĂN PHÒNG.
                     Ở bất kỳ nơi đâu, trường học, công sở hay thậm chí những tổ chức kinh doanh nhỏ, tin học văn phòng sẽ là công cụ hỗ trợ đắc lực cho bạn. Nếu bạn thành thạo nó thì hơn bao giờ hết,
                      hiệu quả công việc của bạn sẽ được đánh giá cao vì sự chuyên nghiệp và nhanh chóng. Bài viết dưới đây sẽ giúp các bạn hiểu rõ sự thật trần trụi đó.
</p>
                    <a class="blog_readmore" href="events-single.html">Xem thêm</a>
                  </div>
                </div>
                <!-- End single blog archive -->
                <!-- start single blog archive -->
                <div class="col-lg-12 col-12 col-sm-12">
                  <div class="single_blog_archive wow fadeInUp">
                    <div class="blogimg_container">
                      <a href="#" class="blog_img">
                        <img alt="img" src="img/td.jpg">
                      </a>
                    </div>
                    <h3 class="blog_title"><a href="events-single.html" style=" color: #3030d3;"> Cách tạo mục lục tự động trong word</a></h3>
                    <div class="blog_commentbox">
                      <p><i class="fa fa-clock-o"></i>Thời gian: 7pm/1/01/2018</p>
                                        
                    </div>
                    <p class="">Điều cần thiết đối với 1 file văn bản lớn bắt buộc phải có mục lục. Bạn có thể tự tạo mục lục bằng tay nhưng điều đó tốn rất nhiều thời gian và công sức. Bài viết dưới đây hướng dẫn chi tiết Cách tạo mục lục tự động trong Word 2016, với các bản Word cũ hơn bạn cũng có thể thao tác tương tự....</p>
                    <a class="blog_readmore" href="events-single.html">Xem thêm</a>
                  </div>
                </div>
                <!-- End single blog archive -->
                <!-- start single blog archive -->
                <div class="col-lg-12 col-12 col-sm-12">
                  <div class="single_blog_archive wow fadeInUp">
                    <div class="blogimg_container">
                      <a href="#" class="blog_img">
                        <img alt="img" src="img/ex.jpg">
                      </a>
                    </div>
                    <h3 class="blog_title"><a href="events-single.html" style=" color: #3030d3;"> Các hàm thường dùng trong Excell</a></h3>
                    <div class="blog_commentbox">
                      <p><i class="fa fa-clock-o"></i>Thơi gian: 7pm/20/12/2017</p>
                      <p><i class="fa fa-map-marker"></i>Location: London,UK</p>                      
                    </div>
                    <p class="">Excel là bảng tính hỗ trợ các hàm giúp các bạn trong quá trình tính toán và xử lý dữ liệu, nếu các bạn biết các hàm tính toán, cách sử dụng chúng thì công việc của bạn sẽ được xử lý nhanh chóng hơn...</p>
                    <a class="blog_readmore" href="events-single.html">xem thêm</a>
                  </div>
                </div>
                <!-- start single blog archive -->
              </div>
              <!-- end blog archive  -->
              <!-- start previous & next button -->
              <div class="single_blog_prevnext">
                <a href="#" class="prev_post wow fadeInLeft animated" style="visibility: visible; animation-name: fadeInLeft;"><i class="fa fa-angle-left"></i>Previous</a>
                <a href="#" class="next_post wow fadeInRight animated" style="visibility: visible; animation-name: fadeInRight;">Next<i class="fa fa-angle-right"></i></a>
              </div>
            </div>
          </div>
          <!-- End course content -->

          <!-- start course archive sidebar -->
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="courseArchive_sidebar">
              <!-- start single sidebar -->
              <div class="single_sidebar">
                <h2>Bài viết gần đây <span class="fa fa-angle-double-right"></span></h2>
                <ul class="news_tab">
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a href="#" class="news_img">
                          <img alt="img" src="img/news.jpg" class="media-object">
                        </a>
                      </div>
                      <div class="media-body">
                       <a href="#">Vì sao chúng ta nên học tin học văn phòng ?</a>
                       <span class="feed_date">27.02.15</span>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a href="#" class="news_img">
                          <img alt="img" src="img/news.jpg" class="media-object">
                        </a>
                      </div>
                      <div class="media-body">
                       <a href="#">Cách tạo mục lục tự động trong word. </a>
                       <span class="feed_date">28.02.15</span>                
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="media">
                      <div class="media-left">
                        <a href="#" class="news_img">
                          <img alt="img" src="img/news.jpg" class="media-object">
                        </a>
                      </div>
                      <div class="media-body">
                       <a href="#">Các hàm thường dùng trong excell.</a>
                       <span class="feed_date">28.02.15</span>                
                      </div>
                    </div>
                  </li>                  
                </ul>
              </div>
              <!-- End single sidebar -->
              <!-- start single sidebar -->
              
              <!-- End single sidebar -->
              <!-- start single sidebar -->
             
              <!-- End single sidebar -->
              <!-- start single sidebar -->
              <hr></hr>
              <div class="single_sidebar">
              <div class="boder">
                <a class="side_add" href="#"><img src="img/tintuc/1.png" alt="img"></a>
                <p style="text-align: center;padding:10px"><a>Khai giảng lơp tin học văn phòng</a></p>
                </div>  <hr></hr>
               
               <div class="boder">
                <a class="side_add" href="#"><img src="img/tintuc/2.jpg" alt="img"></a>
                 <p style="text-align: center;padding:10px"><a>Khai giảng lơp thiết kế web</a></p>
                 </div>
                 <hr></hr>
                <div class="boder">
               
                <a class="side_add" href="#"><img src="img/tintuc/3.png" alt="img"></a>
                 <p style="text-align: center;padding:10px"><a>Khai giảng lơp tin học văn phòng</a></p>
                 </div>  <hr></hr>
                <div class="boder">
                <a class="side_add" href="#"><img src="img/tintuc/4.jpg" alt="img"></a>
                 <p style="text-align: center;padding:10px"><a>Khai giảng lơp lập trình Android</a></p>
                 </div>  <hr></hr>
              <div class="boder">
                <a class="side_add" href="#"><img src="img/tintuc/5.jpg" alt="img"></a>
                 <p style="text-align: center;padding:10px"><a>Khai giảng lơp mạng cơ bản</a></p>
               </div>  <hr></hr>
              </div>
              <!-- End single sidebar -->
            </div>
          </div>
          <!-- start course archive sidebar -->
        </div>
      </div>
    </section>
    <!--=========== END COURSE BANNER SECTION ================-->
    
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
      <!-- End footer top area -->

      <!-- Start footer bottom area -->
     
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