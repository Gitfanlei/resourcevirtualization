<%--
  Created by IntelliJ IDEA.
  User: 81949
  Date: 2019/4/11
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DevicesResource</title>
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
            <h2 style="text-align:center;">设备资源录入端</h2>
            <div id="deviceInfo">
                <form action="/jspbean/outdevices.jsp" target="_blank" method="get">
                    <div id="bascInfo">
                        <div>
                            <fieldset style="border-style:double;border-color: black">
                                <div>
                                    <legend>基本信息</legend>
                                </div>
                                <div>
                                    名称：<input type="text" name="Name" size="10"/>
                                    编号：<input type="text" name="Number" size="10"/>
                                    类型：<select name="DeviceType" id="DeviceType">
                                    <option value="设备">设备</option>
                                    <option value="物料">物料</option>
                                    <option value="人员">人员</option>
                                </select>
                                    型号：<input type="text" name="Type" size="10"/>
                                    部门：<input type="text" name="WorkShop" size="10"/>
                                </div>
                                <div>
                                    品牌：<input type="text" name="Brand" size="10" style="margin: 3px 0"/>
                                    厂商：<input type="text" name="Manufacturing" size="10" style="margin: 3px 0"/>
                                    资费/小时：<input type="text" name="HourCost" size="12" style="margin: 3px 0"/>
                                    出场时间：<input type="text" name="Datetime" size="12" style="margin: 3px 0"/>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="deviceparameter">
                        <div>
                            <fieldset style="border-style:double;border-color: black">
                                <div>
                                    <legend>设备参数</legend>
                                </div>
                                <div>
                                    尺寸：<input type="text" name="Size" size="14"/>
                                    重量：<input type="text" name="Weight" size="10"/>
                                    最大载荷：<input type="text" name="Load" size="10"/>
                                    最大转速：<input type="text" name="Speed" size="10"/>
                                </div>
                                <div>
                                    最大进给：<input type="text" name="Feed" size="10" style="margin: 3px 0"/>
                                    刀库类型：<input type="text" name="ToolType" size="6" style="margin: 3px 0"/>
                                    刀具数量：<input type="text" name="ToolNum" size="10" style="margin: 3px 0"/>
                                    额定功率：<input type="text" name="Power" size="10" style="margin: 3px 0"/>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="processperformance">
                        <div>
                            <fieldset style="border-style:double;border-color: black">
                                <div>
                                    <legend>加工性能</legend>
                                </div>
                                <div>
                                    加工精度：<input style="margin: auto" type="text" name="ProcessPre" size="16"/>
                                    定位精度：<input style="margin: auto" type="text" name="LocalPre" size="16"/>
                                    重复定精度：<input style="margin: auto" type="text" name="ReLocalPre" size="16"/>
                                </div>
                                <div style="margin: 3px 0">
                                    材料类型：<input type="text" name="MaterialType" size="45"/>
                                    加工硬度：<input type="text" name="Hardness" size="18"/>
                                </div>
                                <div style="margin: 3px 0">
                                    X轴行程：<input type="text" name="XStroke" size="10"/>
                                    Y轴行程：<input type="text" name="YStroke" size="10"/>
                                    Z轴行程：<input type="text" name="ZStroke" size="10"/>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div id="techperformance">
                        <div>
                            <fieldset style="border-style:double;border-color: black">
                                <div>
                                    <legend>技术指标</legend>
                                </div>
                                <div>
                                    控制系统：<input type="text" name="ControlSys" size="16"/>
                                    操作模式：<input type="text" name="OperatorModel" size="16"/>
                                    通讯方式：<input type="text" name="Communication" size="16"/>
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
        <p class="para">If you hava any problems,please contact us！</p>
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
        <p class="copy-right">Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.dedembb.com/">先进装备制造实验室</a>
        </p>
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
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
</body>
</html>
