<%--
  Created by IntelliJ IDEA.
  User: 81949
  Date: 2019/4/11
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HumenResource</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- //js -->

    <link href='http://fonts.useso.com/css?family=Viga' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <script src="js/responsiveslides.min.js"></script>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
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
            <h1><a href="http://localhost:8081/"><i><img src="img/logo.png" href="http://localhost:8081/" alt=""/></i>先进装备<span>A Best Institution</span></a>
            </h1>
        </div>
    </div>
</div>
</div>
<!-- //header -->
<!-- services -->
<div class="services">
    <div class="container">
        <h3>资源注册服务</h3>
        <div class="col-md-4 ser-left-grid">
            <h4>Main Services</h4>
            <p>提供便捷的资源注册接口，使用户能够从任何终端进行资源的注册。以构建资源池的方式，
                便于对离散资源的集中化管理。 </p>
            <ul>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="./device.jsp">设备资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="./material.jsp">物料资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="./human.jsp">人力资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">服务资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">技术资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">计算资源注册接口</a></li>
                <li><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span><a href="#">.....</a></li>
            </ul>
        </div>
        <div class="col-md-8 ser-right-grid">
            <h2 style="text-align:center;">人力资源录入端</h2>
            <div id="humanInfo">
                <form action="jspbean/outhumen.jsp" target="_blank" method="get">
                    <div id="bascInfo">
                        <div>
                            <fieldset style="border-style:double;border-color: black;">
                                <div>
                                    <legend>人员信息</legend>
                                </div>
                                <div>
                                    姓名：<input type="text" name="PerName" size="10" style="margin: 3px 0"/>
                                    性别：<input type="text" name="Sex" size="5" style="margin: 3px 0"/>
                                    ID：<input type="text" name="PerID" size="15" style="margin: 3px 0"/>
                                    工号：<input type="text" name="JobNumber" size="20" style="margin: 3px 0"/>
                                </div>
                                <div>
                                    电话：<input type="text" name="TelephoneNum" size="13" style="margin: 3px 0"/>
                                    Email：<input type="text" name="EmailAddress" size="13" style="margin: 3px 0"/>
                                    部门/车间：<input type="text" name="DepartName" size="10" style="margin: 3px 0"/>
                                    职位：<input type="text" name="WorkPosition" size="6" style="margin: 3px 0"/>

                                </div>
                                <div>
                                    地址：<input type="text" name="DepartAddress" size="15" style="margin: 3px 0"/>
                                    技能：<input type="text" name="SkillName" size="10" style="margin: 3px 0"/>
                                    职称：<input type="text" name="JobTitle" size="10" style="margin: 3px 0"/>
                                    技能等级：<input type="text" name="SkillLevel" size="9" style="margin: 3px 0"/>
                                </div>
                                <div>
                                    工龄：<input type="text" name="WorkYears" size="10" style="margin: 3px 0"/>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <br>
                    <div align="center">
                        <input type="reset" value="重置" onclick="window.parent.frames.location.reload()"
                               style="margin:0 20px 0 0"/>
                        <input type="submit" value="提交" onclick=""/>
                    </div>
                </form>
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
                    <input type="text" name="Your email" value="Your email" onFocus="this.value = '';"
                           onBlur="if (this.value == '') {this.value = 'Your email';}" required="">
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
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({easingType: 'easeOutQuart'});
    });
</script>

<%--测试是否可以直接读写表单数据--%>
<%

%>


<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>
