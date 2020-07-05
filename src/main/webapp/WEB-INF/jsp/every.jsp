<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>hive数据展示--个人消费页面</title>


    <link href="/statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="/statics/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="/statics/css/style.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/statics/css/loadcss/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/statics/css/loadcss/default.css">
    <link rel="stylesheet" href="/statics/css/loadcss/demo.css">
    <link rel="stylesheet" href="/statics/css/loadcss/fakeLoader.css">
</head>



<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="fakeloader"></div>
<div class="layout-web">
    <div class="layout-container">
        <!--左侧导航-->
        <aside class="layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header" style="width: 1px;height: 60px;"  >
            </div>
            <div class="layout-sidebar-scroll">

                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item active"> <a href="/index"><i class="mdi mdi-home"></i> 总消费情况</a> </li>
                        <li class="nav-item active"> <a href="/every"><i class="mdi mdi-account"></i> 个人消费情况</a> </li>
                    </ul>
                </nav>

                <div class="sidebar-footer">
                    <p class="copyright">2020 hive翻转课堂. </p>
                </div>
            </div>

        </aside>
        <!--End 左侧导航-->

        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="aside-toggler">
                            <span class="toggler-bar"></span>
                            <span class="toggler-bar"></span>
                            <span class="toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 个人消费统计 </span>
                    </div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="/statics/images/users/avatar.jpg" alt="管理员" />
                                <span>管理员 <span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li> <a href="pages_profile.html"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                                <li> <a href="pages_edit_pwd.html"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
                                <li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
                                <li class="divider"></li>
                                <li> <a href="pages_login.html"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>

                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="layout-content">

            <div class="container-fluid">

                <div class="row">


                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4>(2018-09-01到2019-07-10)每个用户每段时间的消费情况</h4>
                                <div style="width: 80px;height: 80px;margin-right: 0px">
                                    <svg class="lds-polar" width="80px" height="80px" id="exeveryload" xmlns="http://www.w3.org/2000/svg"   xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid"><g transform="translate(50 50)"><g transform="scale(0.561922 0.561922)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(0 0 0)" stroke="none" fill="#03a9f4"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.4441922226907069;0.9212942255950323;0.7254179414419684;0.16866440996591026;0.4441922226907069" keyTimes="0;0.25;0.5;0.75;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.417233 0.417233)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(60 0 0)" stroke="none" fill="#2196f3"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.48103273714863315;0.22248153159233008;0.9609955810332766;0.4101217550744469;0.48103273714863315" keyTimes="0;0.25;0.5;0.75;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.452492 0.452492)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(120 0 0)" stroke="none" fill="#3f51b5"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.46634874090016165;0.4289117772550146;0.29536309111218495;0.9219652470741289;0.7417446666006091;0.09080019883727686;0.46634874090016165" keyTimes="0;0.16666666666666666;0.3333333333333333;0.5;0.6666666666666666;0.8333333333333334;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.45034 0.45034)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(180 0 0)" stroke="none" fill="#673ab7"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.37047586445647696;0.6293958668130302;0.7936691659417414;0.4102572474324191;0.18414051445331947;0.37047586445647696" keyTimes="0;0.2;0.4;0.6;0.8;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.618775 0.618775)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(240 0 0)" stroke="none" fill="#9c27b0"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.6743411881507604;0.49419314360636624;0.812542322124922;0.2605174702235902;0.25732060102677745;0.6743411881507604" keyTimes="0;0.2;0.4;0.6;0.8;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.347078 0.347078)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(300 0 0)" stroke="none" fill="#e91e63"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.41923968455011407;0.029323953333915354;0.6746451917638001;0.41923968455011407" keyTimes="0;0.3333333333333333;0.6666666666666666;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g></g></svg>

                                </div >
                            </div>
                            <div class="form-group">
                                <div class="col-xs-13">
                                    <select name="example-select" class="form-control" id="line-cardid-select" size="1" >
                                        <option value="0">请选择用户卡号</option>
                                        <option value="101">cardid:101</option>
                                        <option value="103">cardid:103</option>
                                        <option value="104">cardid:104</option>
                                        <option value="105">cardid:105</option>
                                        <option value="106">cardid:106</option>
                                        <option value="107">cardid:107</option>

                                    </select>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-xs-13">
                                    <select name="example-select" class="form-control" id="line-time-select" size="1" onchange="f1()">
                                        <option value="0">请选择时间段</option>
                                        <option value="1">6:30~9:00早餐</option>
                                        <option value="2">9:00~13:30为上午</option>
                                        <option value="3">13:30~14:30为中午</option>
                                        <option value="4">14:00~19:30为下午</option>
                                        <option value="5">19:30~23:00为晚上</option>
                                    </select>
                                </div>

                            </div>

                            <div class="card-body" id="chart-line-2-div">
                                <canvas id="chart-line-2" width="400" height="250"></canvas>
                            </div>

                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4>(2018-09-01到2019-07-10)按天计算每个用户的消费情况</h4>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-13">
                                    <select name="example-select" class="form-control" id="allday-select" size="1" onchange="f3()">
                                        <option value="0">请选择用户</option>
                                        <option value="1">特殊:cardid:101</option>
                                        <option value="2">所有:cardid:...(除开特殊)</option>

                                    </select>
                                </div>

                            </div>
                            <div class="card-body" id="chart-line">
                                <canvas id="chart-line-4" width="400" height="363"></canvas>
                            </div>
                        </div>
                    </div>









                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4>按月计算每个用户的总消费和平均消费</h4>
                                <div style="width: 80px;height: 80px;margin-right: 0px">
                                    <svg class="lds-polar" width="80px" height="80px" id="monthload" xmlns="http://www.w3.org/2000/svg"   xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid"><g transform="translate(50 50)"><g transform="scale(0.561922 0.561922)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(0 0 0)" stroke="none" fill="#03a9f4"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.4441922226907069;0.9212942255950323;0.7254179414419684;0.16866440996591026;0.4441922226907069" keyTimes="0;0.25;0.5;0.75;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.417233 0.417233)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(60 0 0)" stroke="none" fill="#2196f3"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.48103273714863315;0.22248153159233008;0.9609955810332766;0.4101217550744469;0.48103273714863315" keyTimes="0;0.25;0.5;0.75;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.452492 0.452492)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(120 0 0)" stroke="none" fill="#3f51b5"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.46634874090016165;0.4289117772550146;0.29536309111218495;0.9219652470741289;0.7417446666006091;0.09080019883727686;0.46634874090016165" keyTimes="0;0.16666666666666666;0.3333333333333333;0.5;0.6666666666666666;0.8333333333333334;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.45034 0.45034)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(180 0 0)" stroke="none" fill="#673ab7"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.37047586445647696;0.6293958668130302;0.7936691659417414;0.4102572474324191;0.18414051445331947;0.37047586445647696" keyTimes="0;0.2;0.4;0.6;0.8;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.618775 0.618775)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(240 0 0)" stroke="none" fill="#9c27b0"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.6743411881507604;0.49419314360636624;0.812542322124922;0.2605174702235902;0.25732060102677745;0.6743411881507604" keyTimes="0;0.2;0.4;0.6;0.8;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g><g transform="scale(0.347078 0.347078)">
                                        <path d="M0 0L0 -40A40 40 0 0 1 34.64101615137754 -20.000000000000004" transform="rotate(300 0 0)" stroke="none" fill="#e91e63"></path>
                                        <animateTransform attributeName="transform" type="scale" values="0.41923968455011407;0.029323953333915354;0.6746451917638001;0.41923968455011407" keyTimes="0;0.3333333333333333;0.6666666666666666;1" dur="1s" repeatCount="indefinite"></animateTransform>
                                    </g></g></svg>

                                </div >
                            </div>
                            <div class="form-group">
                                <div class="col-xs-13">
                                    <select name="example-select" class="form-control" id="month-select" size="1" onchange="f2()">
                                        <option value="0">请选择用户卡号</option>
                                        <option value="101">cardid:101</option>
                                        <option value="103">cardid:103</option>
                                        <option value="104">cardid:104</option>
                                        <option value="105">cardid:105</option>
                                        <option value="106">cardid:106</option>
                                        <option value="107">cardid:107</option>

                                    </select>
                                </div>

                            </div>
                            <div class="card-body" id="chart-vbar-2-div" >
                                <canvas id="chart-vbar-2" width="400" height="250" ></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header"><h4>每个用户周末消费情况</h4></div>
                            <div class="card-body">
                                <canvas id="chart-doughnut" width="500" height="463"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<script type="text/javascript" src="/statics/js/jquery.min.js"></script>
<script type="text/javascript" src="/statics/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/statics/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="/statics/js/Chart.js"></script>
<script type="text/javascript" src="/statics/js/main.js"></script>
<script type="text/javascript" src="/statics/js/Myjs.js"></script>
<script type="text/javascript">

    data101 = ${allExEverDay101}
    data103 = ${allExEverDay103}
    data104 = ${allExEverDay104}
    data105 = ${allExEverDay105}
    data106 = ${allExEverDay106}
    data107 = ${allExEverDay107}

    datelable = ${allExEverDaylable}
    datelable101=${ExEverDaylable101}
    $("#exeveryload").hide()
    $("#monthload").hide()
    new Chart($("#chart-line-2"), {
        type: 'line',
        data: {
            labels:[1,1,1,1,1] ,
            datasets: [{
                label: "消费",
                fill: false,
                borderWidth: 3,
                pointRadius: 5,
                borderColor: "#9966ff",
                pointBackgroundColor: "#9966ff",
                pointBorderColor: "#9966ff",
                pointHoverBackgroundColor: "#fff",
                pointHoverBorderColor: "#9966ff",
                data:[1,1,1,1,1]
            }]
        },
        options: {
            legend: {
                display: false
            },
        }
    });



    function f3() {
       if( $("#allday-select").select().val()==1){

           $("#chart-line-4").remove()
           $('#chart-line').append('<canvas id="chart-line-4" width="400" height="363"></canvas>');
           new Chart($("#chart-line-4"), {
               type: 'bar',
               data: {
                   labels: datelable101,
                   datasets: [{
                       label: "cardid:101",
                       backgroundColor: "#36a2eb",
                       borderColor: "#36a2eb",
                       hoverBackgroundColor: "#36a2eb",
                       hoverBorderColor: "#36a2eb",
                       data: data101
                   }
                   ]
               },
               options: {
                   scales: {
                       yAxes: [{
                           ticks: {
                               beginAtZero: true
                           }
                       }]
                   }
               }
           });
       }
       else if ($("#allday-select").select().val() == 2) {
           $("#chart-line-4").remove()
           $('#chart-line').append('<canvas id="chart-line-4" width="400" height="363"></canvas>');
           new Chart($("#chart-line-4"), {
               type: 'bar',
               data: {
                   labels: datelable,
                   datasets: [
                       {
                           label: "cardid:103",
                           backgroundColor: "#ff3",
                           borderColor: "#ff3",
                           hoverBackgroundColor: "#ff3",
                           hoverBorderColor: "#ff3",
                           data: data103
                       }
                       ,
                       {
                           label: "cardid:104",
                           backgroundColor: "#FF8C00",
                           borderColor: "#FF8C00",
                           hoverBackgroundColor: "#FF8C00",
                           hoverBorderColor: "#FF8C00",
                           data: data104
                       },
                       {
                           label: "cardid:105",
                           backgroundColor: "#ff6384",
                           borderColor: "#ff6384",
                           hoverBackgroundColor: "#ff6384",
                           hoverBorderColor: "#ff6384",
                           data: data105
                       },
                       {
                           label: "cardid:106",
                           backgroundColor: "#9B30FF",
                           borderColor: "#9B30FF",
                           hoverBackgroundColor: "#9B30FF",
                           hoverBorderColor: "#9B30FF",
                           data: data106
                       },
                       {
                           label: "cardid:107",
                           backgroundColor: "#00CDCD",
                           borderColor: "#00CDCD",
                           hoverBackgroundColor: "#00CDCD",
                           hoverBorderColor: "#00CDCD",
                           data: data107
                       }
                   ]
               },
               options: {
                   scales: {
                       yAxes: [{
                           ticks: {
                               beginAtZero: true
                           }
                       }]
                   }
               }
           });

       }
       else if ($("#allday-select").select().val() ==0){
           alert("请选择正确的cardid")
       }
    }




    new Chart($("#chart-line-4"), {
        type: 'bar',
        data: {
            labels: datelable,
            datasets: [
                {
                    label: "cardid:103",
                    backgroundColor: "#ff3",
                    borderColor: "#ff3",
                    hoverBackgroundColor: "#ff3",
                    hoverBorderColor: "#ff3",
                    data: data103
                }
                ,
                {
                    label: "cardid:104",
                    backgroundColor: "#FF8C00",
                    borderColor: "#FF8C00",
                    hoverBackgroundColor: "#FF8C00",
                    hoverBorderColor: "#FF8C00",
                    data: data104
                },
                {
                    label: "cardid:105",
                    backgroundColor: "#ff6384",
                    borderColor: "#ff6384",
                    hoverBackgroundColor: "#ff6384",
                    hoverBorderColor: "#ff6384",
                    data: data105
                },
                {
                    label: "cardid:106",
                    backgroundColor: "#9B30FF",
                    borderColor: "#9B30FF",
                    hoverBackgroundColor: "#9B30FF",
                    hoverBorderColor: "#9B30FF",
                    data: data106
                },
                {
                    label: "cardid:107",
                    backgroundColor: "#00CDCD",
                    borderColor: "#00CDCD",
                    hoverBackgroundColor: "#00CDCD",
                    hoverBorderColor: "#00CDCD",
                    data: data107
                }






















                ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });



    new Chart($("#chart-vbar-2"), {
        type: 'bar',
        data: {
            labels: ["sep18", "oct18", "nov18", "dec18", "jan19", "feb19", "mar19","apr19","may19","jun19","jul19"],
            datasets: [{
                label: "总消费",
                backgroundColor: "rgba(51,202,185,0.5)",
                borderColor: "rgba(0,0,0,0)",
                hoverBackgroundColor: "rgba(51,202,185,0.7)",
                hoverBorderColor: "rgba(0,0,0,0)",
                data: [1,1, 1, 1,1, 1, 1,1,1,1,1]
            },
                {
                    label: "平均消费",
                    backgroundColor: "rgba(255,100,97,0.8)",
                    borderColor: "rgba(0,0,0,0)",
                    hoverBackgroundColor: "rgba(2255,100,97,1)",
                    hoverBorderColor: "rgba(255,100,97)",
                    data: [1,1, 1, 1,1, 1, 1,1,1,1,1]
                }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    var expend_all_lable = ${allExByWeek.cardids}	//因子中文


    var expend_all_data = ${allExByWeek.spends}	//因子中文





    new Chart($("#chart-doughnut"), {
        type: 'doughnut',
        data: {
            labels: expend_all_lable,
            datasets: [{
                data:expend_all_data,
                backgroundColor: ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)','rgba(91,44,33,0.2)','rgba(131,222,207,0.6)','rgba(194,182,102,0.7)']
            }]
        },
        options: {
            responsive: false
        }
    });



</script>
<script src="/statics/js/loadjs/fakeLoader.min.js"></script>
<script>
    $(document).ready(function(){
        $(".fakeloader").fakeLoader({
            timeToHide:1200,
            bgColor:"#34495e",
            spinner:"spinner3"
        });
    });
</script>
</body>


