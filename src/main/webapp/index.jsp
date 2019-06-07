<%@page contentType="text/html; charset=utf-8" language="java" %>
<%@page import="java.io.*,java.util.*" %>

<html>
<head>
    <title>MainServices</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- //js -->

    <link href='http://fonts.useso.com/css?family=Viga' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <script src="js/responsiveslides.min.js"></script>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <script src="js/easyResponsiveTabs.js"></script>
</head>
<body>
<!--header-->
<!-- header -->
<div class="header">
    <div class="container">
        <div class="logo">
            <h1><a href=""><i><img src="img/logo.png" href="index.html" alt="" /></i>先进装备<span>A Best Institution</span></a></h1>
        </div>
    </div>
</div>
</div>
<!-- //header -->
<br>
<!-- services -->
<div class="services">
    <div class="container">
        <h3>资源注册服务</h3>
        <div class="col-md-4 ser-left-grid">
            <h4>Main Services</h4>
            <p>提供便捷的资源注册接口，使用户能够从任何终端进行资源的注册。以构建资源池的方式，
                便于对离散资源的集中化管理。 </p>
            <ul>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="./device.jsp" >设备资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="./material.jsp" >物料资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="./human.jsp" >人力资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">服务资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">技术资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">计算资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">.....</a></li>
            </ul>
        </div>
        <div class="col-md-8 ser-right-grid">
            <div class="col-sm-6 main-ser">
                <div class="cont-grid-left wel-grid">
                    <div class="btm-clr4">
                        <figure class="icon">
                            <img src="./img/icon1.png" alt=" ">
                        </figure>
                    </div>
                </div>
                <div class="cont-grid-right">
                    <h4><a href="./device.jsp" >设备资源</a></h4>
                    <p>实现设备资源的集中化管理</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-sm-6 main-ser">
                <div class="cont-grid-left wel-grid">
                    <div class="btm-clr4">
                        <figure class="icon">
                            <img src="./img/icon2.png" alt=" ">
                        </figure>
                    </div>
                </div>
                <div class="cont-grid-right">
                    <h4><a href="./material.jsp" >物料资源</a></h4>
                    <p> 清晰的了解物料的使用状况</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-sm-6 main-ser mar-bot">
                <div class="cont-grid-left wel-grid">
                    <div class="btm-clr4">
                        <figure class="icon">
                            <img src="./img/icon3.png" alt=" ">
                        </figure>
                    </div>
                </div>
                <div class="cont-grid-right">
                    <h4><a href="./human.jsp" >人力资源</a></h4>
                    <p> 企业人员管理，了解人员分配</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-sm-6 main-ser mar-bot">
                <div class="cont-grid-left wel-grid">
                    <div class="btm-clr4">
                        <figure class="icon">
                            <img src="./img/icon1.png" alt=" ">
                        </figure>
                    </div>
                </div>
                <div class="cont-grid-right">
                    <h4>服务资源</h4>
                    <p> 服务注册与发布，提高服务效率</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-sm-6 main-ser mar-bot">
                <div class="cont-grid-left wel-grid">
                    <div class="btm-clr4">
                        <figure class="icon">
                            <img src="img/icon1.png" alt=" ">
                        </figure>
                    </div>
                </div>
                <div class="cont-grid-right">
                    <h4>技术资源</h4>
                    <p> 技术资源的共享</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-sm-6 main-ser mar-bot">
                <div class="cont-grid-left wel-grid">
                    <div class="btm-clr4">
                        <figure class="icon">
                            <img src="img/icon1.png" alt=" ">
                        </figure>
                    </div>
                </div>
                <div class="cont-grid-right">
                    <h4>计算资源</h4>
                    <p> 了解当前计算资源状态合理分配</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //services -->
<!-- footer -->
<div class="footer">
    <div class="container" style="height: 400px;">
        <h2>Get In Touch</h2>
        <p class="para">如果您存在任何问题请根据如下的联系方式联系我们！</p>
        <div class="col-md-6 footer-left">
            <div class="col-sm-2 foo-left text-center">
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
            </div>
            <div class="col-sm-10 foo-right">
                <h4>Information</h4>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus
                    qui blanditiis vero eos et accusamus et iusto dignissimos ducimus
                    qui blanditiis.</p>


            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-6 footer-right">
            <div class="col-sm-2 foo-left text-center">
                <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
            </div>
            <div class="col-sm-10 foo-right">
                <h4>Newsletter</h4>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus
                    qui blanditiis.</p>
                <form action="#" method="post">
                    <input type="text" name="Your email" value="Your email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Your email';}" required="">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <p class="copy-right">Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.dedembb.com/">先进装备制造实验室</a></p>
    </div>
</div>
<!-- //footer -->
<!-- smooth scrolling -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>
