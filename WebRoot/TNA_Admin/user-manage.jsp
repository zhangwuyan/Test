<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <title>电信网络学院</title>
  <meta name="description" content="app, web app, responsive, responsive layout, admin, admin panel, admin dashboard, flat, flat ui, ui kit, AngularJS, ui route, charts, widgets, components" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="css/animate.css" type="text/css" />
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="css/font.css" type="text/css" />
  <link rel="stylesheet" href="css/app.css" type="text/css" />

</head>

  
  <body>
   <div class="app app-header-fixed" id="app">
    <!-- navbar -->
    <div class="app-header navbar">
      <!-- navbar header -->
      <div class="navbar-header bg-dark">
        <button class="pull-right visible-xs dk" data-toggle="class:show" data-target=".navbar-collapse">
          <i class="glyphicon glyphicon-cog"></i>
        </button>
        <button class="pull-right visible-xs" data-toggle="class:off-screen" data-target=".app-aside" ui-scroll="app">
          <i class="glyphicon glyphicon-align-justify"></i>
        </button>
        <!-- brand -->
        <a href="#/" class="navbar-brand text-lt">
          <i class="fa fa-btc"></i>
           <!-- 这里删除了logo代码 -->
          <span class="hidden-folded m-l-xs">电信网络学院</span>
        </a>
        <!-- / brand -->
      </div>
      <!-- / navbar header导航栏代码-->
      <!-- navbar collapse -->
      <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
        <!-- buttons -->
        <div class="nav navbar-nav hidden-xs">
          <a href="#" class="btn no-shadow navbar-btn" data-toggle="class:app-aside-folded" data-target=".app">
            <i class="fa fa-dedent fa-fw text"></i>
            <i class="fa fa-indent fa-fw text-active"></i>
          </a>
          <a href class="btn no-shadow navbar-btn" data-toggle="class:show" data-target="#aside-user">
            <i class="icon-user fa-fw"></i>
          </a>
        </div>
        <!-- / buttons -->
       
        <!-- search form -->
   
        <form class="navbar-form navbar-form-sm navbar-left shift" ui-shift="prependTo" data-target=".navbar-collapse" role="search" ng-controller="TypeaheadDemoCtrl">
          <div class="form-group">
            <div class="input-group">
              <input type="text" ng-model="selected" typeahead="state for state in states | filter:$viewValue | limitTo:8" class="form-control input-sm bg-light no-border rounded padder" placeholder="查询...">
              <span class="input-group-btn">
                <button type="submit" class="btn btn-sm bg-light rounded"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </div>
        </form>
        <!-- / search form -->

        <!-- nabar right -->
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">
              <i class="icon-bell fa-fw"></i>
              <span class="visible-xs-inline">Notifications</span>
              <span class="badge badge-sm up bg-danger pull-right-xs">2</span>
            </a>
            <!-- dropdown -->
            <div class="dropdown-menu w-xl animated fadeInUp">
              <div class="panel bg-white">
                <div class="panel-heading b-light bg-light">
                  <strong>You have <span>2</span> notifications</strong>
                </div>
                <div class="list-group">
                  <a href class="media list-group-item">
                    <span class="pull-left thumb-sm">
                      <img src="img/b20.jpg" alt="..." class="img-circle">
                    </span>
                    <span class="media-body block m-b-none">
                                                                        刘世杰申请添加您为好友<br>
                      <small class="text-muted">10 minutes ago</small>
                    </span>
                  </a>
                  <a href class="media list-group-item">
                    <span class="media-body block m-b-none">
                                                                          林晓智对您发起了一个约会邀请<br>
                      <small class="text-muted">1 hour ago</small>
                    </span>
                  </a>
                </div>
                <div class="panel-footer text-sm">
                  <a href class="pull-right"><i class="fa fa-cog"></i></a>
                  <a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
                </div>
              </div>
            </div>
            <!-- / dropdown -->
          </li>
          <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle clear" data-toggle="dropdown">
              <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                <img src="img/b20.jpg" alt="...">
                <i class="on md b-white bottom"></i>
              </span>
              <span class="hidden-sm hidden-md">张无言</span> <b class="caret"></b>
            </a>
            <!-- dropdown -->	
            <ul class="dropdown-menu animated fadeInRight w">
              <li class="wrapper b-b m-b-sm bg-light m-t-n-xs">
                <div>
                  <p>管理员账户</p>
                </div>
                <progressbar value="60" class="progress-xs m-b-none bg-white"></progressbar>
              </li>
              <li>
                <a href>
                  <span class="badge bg-d	anger pull-right"></span>
                  <span>账号设置</span>
                </a>
              </li>
              <li>
                <a ui-sref="app.page.profile">个人中心</a>
              </li>	
              <li>
                <a ui-sref="app.docs">
                  <span class="label bg-info pull-right">new</span>
                                                  帮助
                </a>
              </li>
              <li class="divider"></li> 
              <li>
                 <a href = "../WebApp/login.jsp">注销</a> 
              </li>
            </ul>
            <!-- / dropdown -->
        </div>
            <div class="line dk hidden-folded"></div>
          </div>
          <!-- / user -->
    
      <!-- nav用来将具有导航性质的链接划分在一起 -->
       <!-- nav 左边导航栏-->
          <!-- menu -->
    <div class="app-aside hidden-xs bg-dark">
      <div class="aside-wrap">
        <div class="navi-wrap">
          <!-- user -->
          <div class="clearfix hidden-xs text-center hide" id="aside-user">
            <div class="dropdown wrapper">
              <a ui-sref="app.page.profile">
                <span class="thumb-lg w-auto-folded avatar m-t-sm">
                  <img src="img/b20.jpg" class="img-full" alt="...">
                </span>
              </a>
              <a href="#" data-toggle="dropdown" class="dropdown-toggle hidden-folded">
                <span class="clear">
                  <span class="block m-t-sm">
                    <strong class="font-bold text-lt">张无言</strong> 
                    <b class="caret"></b>
                  </span>
                  <span class="text-muted text-xs block">管理员</span>
                </span>
              </a>
              <!-- dropdown -->
              <ul class="dropdown-menu animated fadeInRight w hidden-folded">
                <li class="wrapper b-b m-b-sm bg-info m-t-n-xs">
                  <span class="arrow top hidden-folded arrow-info"></span>
                  <div>
                    <p>300mb of 500mb used</p>
                  </div>
                  <progressbar value="60" type="white" class="progress-xs m-b-none dker"></progressbar>
                </li>
                <li>
                  <a href>Settings</a>
                </li>
                <li>
                  <a ui-sref="app.page.profile">Profile</a>
                </li>
                <li>
                  <a href>
                    <span class="badge bg-danger pull-right">3</span>
                    Notifications
                  </a>
                </li>
                <li class="divider"></li>
                <li>
                 <a href="../WebApp/login.jsp">注销</a>
                </li>
              </ul>
              <!-- / dropdown -->
            </div>
            <div class="line dk hidden-folded"></div>
          </div>
          <!-- / user -->
       
      <!-- 左头像下导航栏  -->     
       <nav ui-nav class="navi">
            <ul class="nav">
              <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span translate="aside.nav.HEADER">个人中心</span>
              </li>
              <li>
                <a href class="auto">      
                  <span class="pull-right text-muted">
                    <i class="fa fa-fw fa-angle-right text"></i>
                    <i class="fa fa-fw fa-angle-down text-active"></i>
                  </span>
                  <i class="glyphicon glyphicon-stats icon text-primary-dker"></i>
                  <span class="font-bold" translate="aside.nav.DASHBOARD">个人中心</span>
                </a>
                <ul class="nav nav-sub dk">
                  <li class="nav-sub-header">
                    <a href>
                      <span translate="aside.nav.DASHBOARD">账号管理 </span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="app.dashboard-v1">
                      <span>密码修改</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="app.dashboard-v2">
                      <b class="label bg-info pull-right">N</b>
                      <span>密保设置</span>
                    </a>
                  </li>
                </ul>
              </li>
              <li ui-sref-active="active">
                <a ui-sref="app.calendar" href="../WebApp/TNA_Admin/user-manage.jsp">
                  <i class="glyphicon glyphicon-calendar icon text-info-dker"></i>
                 <span class="font-bold" translate="aside.nav.CALENDAR">首页</span>
                </a>
              </li>
              <li ui-sref-active="active">
                <a ui-sref="app.mail.list">
                  <b class="badge bg-info pull-right">9</b>
                  <i class="glyphicon glyphicon-envelope icon text-info-lter"></i>
                  <span class="font-bold" translate="aside.nav.EMAIL">信箱</span>
                </a>
              </li>
              <li>
                <a href class="auto">
                  <span class="pull-right text-muted">
                    <i class="fa fa-fw fa-angle-right text"></i>
                    <i class="fa fa-fw fa-angle-down text-active"></i>
                  </span>
                  <i class="glyphicon glyphicon-th-large icon text-success"></i>
                  <span class="font-bold">好友</span>
                </a>
                <ul class="nav nav-sub dk">
                  <li class="nav-sub-header">
                    <a href>
                      <span>好友</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="apps.note">
                      <span>好友列表</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="apps.contact">
                      <span>添加好友</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="app.weather">
                      <span>好友动态</span>
                    </a>
                  </li>
                </ul>
              </li>

              <li class="line dk"></li>

              <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                <span translate="aside.nav.components.COMPONENTS">学院管理</span>
              </li>
              <li>
                <a href class="auto">      
                  <span class="pull-right text-muted">
                    <i class="fa fa-fw fa-angle-right text"></i>
                    <i class="fa fa-fw fa-angle-down text-active"></i>
                  </span>
                  <b class="badge bg-info pull-right"></b>
                  <i class="glyphicon glyphicon-th"></i>
                  <span>题库管理</span>
                </a>
                <ul class="nav nav-sub dk">
                  <li class="nav-sub-header">
                    <a href>
                      <span>题库管理</span>
                    </a> 
                  </li>
                  <li ui-sref-active="active">
                     <a ui-sref="layout.app" href="../WebApp/TNA_Admin/question-bank.jsp">
                     <span>查看题库</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                      <a ui-sref="layout.fullwidth" href="">
                   <span>编辑题库</span>
                 	   </a>
                      </li>
                </ul>
              </li>
              
              <li ng-class="{active:$state.includes('app.table')}">
                <a href class="auto">
                  <span class="pull-right text-muted">
                    <i class="fa fa-fw fa-angle-right text"></i>
                    <i class="fa fa-fw fa-angle-down text-active"></i>
                  </span>
                  <i class="glyphicon glyphicon-list"></i>
                  <span translate="aside.nav.components.table.TABLE">用户管理</span>
                </a>
                       <ul class="nav nav-sub dk">
                  <li class="nav-sub-header">	
                    <a href>
                      <span translate="aside.nav.components.table.TABLE">用户管理</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="app.table.static" href="../WebApp/TNA_Admin/userlist.jsp">
                      <span  translate="aside.nav.components.table.TABLE_STATIC">用户列表</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">	
                    <a ui-sref="app.table.datatable">
                      <span style ="display:inline">用户状态</span>
                    </a>
                  </li>
                </ul>
              </li>
              
              <li ng-class="{active:$state.includes('app.form')}">
                <a href class="auto">
                  <span class="pull-right text-muted">
                    <i class="fa fa-fw fa-angle-right text"></i>
                    <i class="fa fa-fw fa-angle-down text-active"></i>
                  </span>
                  <i class="glyphicon glyphicon-edit"></i>
                  <span translate="aside.nav.components.form.FORM">考试管理</span>
                </a>
                <ul class="nav nav-sub dk">
                  <li class="nav-sub-header">
                    <a href>
                      <span translate="aside.nav.components.form.FORM">Form</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="app.form.elements" href="../WebApp/TNA_Admin/ScoreList.jsp">
                      <span translate="aside.nav.components.form.FORM_ELEMENTS">考试记录</span>
                    </a>
                  </li>
                  <li ui-sref-active="active">
                    <a ui-sref="app.form.validation">
                      <span translate="aside.nav.components.form.FORM_VALIDATION">考试成绩</span>
                    </a>
                  </li>
                </ul>
              </li>
              
              
              <li ui-sref-active="active">
                <a ui-sref="app.chart">
                  <i class="glyphicon glyphicon-signal"></i>
                  <span translate="aside.nav.components.CHART">学院日程</span>
                </a>
              </li>
             
              
              <li ui-sref-active="active">
                <a ui-sref="app.chart">
                  <i class="glyphicon glyphicon-file icon"></i>
                  <span translate="aside.nav.components.CHART">在线题库</span>
                </a>
              </li>

              <li class="line dk hidden-folded"></li>

              <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">          
                <span translate="aside.nav.your_stuff.YOUR_STUFF">学院</span>
              </li>  
              <li>
                <a ui-sref="app.page.profile">
                  <i class="icon-user icon text-success-lter"></i>
                  <b class="badge bg-success pull-right">7</b>
                  <span translate="aside.nav.your_stuff.PROFILE">学院新闻</span>
                </a>
              </li>
              <li>
                <a ui-sref="app.docs">
                  <i class="icon-question icon"></i>
                  <span translate="aside.nav.your_stuff.DOCUMENTS">帮助中心</span>
                </a>
              </li>
            </ul>
          </nav>
              <!-- nav结束 -->    
        </div>
      </div>
    </div>
    <!-- / menu -->
     
     <!-- content开始 -->     
 <div class="app-content">
      <div ui-butterbar></div>
      <a href class="off-screen-toggle hide" data-toggle="class:off-screen" data-target=".app-aside" ></a>
      <div class="app-content-body fade-in-up">
        <!-- COPY the content from "tpl/" -->
          <div class="hbox hbox-auto-xs hbox-auto-sm">
            <div class="col">
              <div style="background:url(img/c4.jpg) center center; background-size:cover">
                <div class="wrapper-lg bg-white-opacity">
                  <div class="row m-t">
                    <div class="col-sm-7">
                      <a href class="thumb-lg pull-left m-r">
                        <img src="img/b20.jpg" class="img-circle"> <!-- main 区域头像 -->
                      </a>
                      <div class="clear m-b">
                        <div class="m-b m-t-sm">
                          <span class="h3 text-black">张无言</span>
                          <small class="m-l">计算机系教师</small>       
                        </div>	
                      </div>
                    </div>
                    <div class="col-md-5">
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col w-lg bg-light lter b-l bg-auto ">
              <div class="wrapper">
                <div class="">
                  <h4 class="m-t-xs m-b-xs">学生主机</h4>
                  <ul class="list-group no-bg no-borders pull-in">
                    <li class="list-group-item">
                      <a herf class="pull-left thumb-sm avatar m-r">
                        <img src="img/b4.jpg" alt="..." class="img-circle">
                        <i class="on b-white bottom"></i>
                      </a>
                      <div class="clear">
                        <div><a href>蒋香香</a></div>
                        <small class="text-muted">pc-1(online)</small>
                      </div>
                    </li>
                    <li class="list-group-item">
                      <a herf class="pull-left thumb-sm avatar m-r">
                        <img src="img/b5.jpg" alt="..." class="img-circle">
                        <i class="on b-white bottom"></i>
                      </a>
                      <div class="clear">
                        <div><a href>林晓智</a></div>
                        <small class="text-muted">pc-2(online)</small>
                      </div>
                    </li>
                    <li class="list-group-item">
                      <a herf class="pull-left thumb-sm avatar m-r">
                        <img src="img/b6.jpg" alt="..." class="img-circle">
                        <i class="busy b-white bottom"></i>
                      </a>
                      <div class="clear">
                        <div><a href>刘世杰</a></div>
                        <small class="text-muted">pc-3(online)</small>
                      </div>
                    </li>
                    <li class="list-group-item">
                      <a herf class="pull-left thumb-sm avatar m-r">
                        <img src="img/b7.jpg" alt="..." class="img-circle">
                        <i class="away b-white bottom"></i>
                      </a>
                      <div class="clear">
                        <div><a href>吴彦川</a></div>
                        <small class="text-muted">pc-4(offline)</small>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
        <!-- PASTE above -->
      </div>


    </div>
    </div>
     
       	
       
       
       
       
       
       
       
  <!-- jQuery -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/jquery/bootstrap.js"></script>
  <script type="text/javascript">
    +function ($) {
      $(function(){
        // class
        $(document).on('click', '[data-toggle^="class"]', function(e){
          e && e.preventDefault();
          console.log('abc');
          var $this = $(e.target), $class , $target, $tmp, $classes, $targets;
          !$this.data('toggle') && ($this = $this.closest('[data-toggle^="class"]'));
          $class = $this.data()['toggle'];
          $target = $this.data('target') || $this.attr('href');
          $class && ($tmp = $class.split(':')[1]) && ($classes = $tmp.split(','));
          $target && ($targets = $target.split(','));
          $classes && $classes.length && $.each($targets, function( index, value ) {
            if ( $classes[index].indexOf( '*' ) !== -1 ) {
              var patt = new RegExp( '\\s' + 
                  $classes[index].
                    replace( /\*/g, '[A-Za-z0-9-_]+' ).
                    split( ' ' ).
                    join( '\\s|\\s' ) + 
                  '\\s', 'g' );
              $($this).each( function ( i, it ) {
                var cn = ' ' + it.className + ' ';
                while ( patt.test( cn ) ) {
                  cn = cn.replace( patt, ' ' );
                }
                it.className = $.trim( cn );
              });
            }
            ($targets[index] !='#') && $($targets[index]).toggleClass($classes[index]) || $this.toggleClass($classes[index]);
          });
          $this.toggleClass('active');
        });

        // collapse nav
        $(document).on('click', 'nav a', function (e) {
          var $this = $(e.target), $active;
          $this.is('a') || ($this = $this.closest('a'));
          
          $active = $this.parent().siblings( ".active" );
          $active && $active.toggleClass('active').find('> ul:visible').slideUp(200);
          
          ($this.parent().hasClass('active') && $this.next().slideUp(200)) || $this.next().slideDown(200);
          $this.parent().toggleClass('active');
          
          $this.next().is('ul') && e.preventDefault();

          setTimeout(function(){ $(document).trigger('updateNav'); }, 300);      
        });
      });
    }(jQuery);
  </script>
  </body>
</html>
