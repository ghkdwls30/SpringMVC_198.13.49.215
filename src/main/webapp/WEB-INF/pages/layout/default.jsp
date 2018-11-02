<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" 	uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- 공통 스타일  -->
<link rel="icon" type="image/png" sizes="16x16" href="/assets/images/favicon.png">
<title>Basic</title>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="/assets/libs/select2/dist/css/select2.min.css">
<!-- Custom CSS -->
<link href="/dist/css/style.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="/assets/extra-libs/multicheck/multicheck.css">
<link href="/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
<link href="/assets/libs/toastr/build/toastr.min.css" rel="stylesheet">

<!-- 제이쿼리만 프리로드  -->
<script src="/assets/libs/jquery/dist/jquery.min.js"></script>

<!-- 페이지 모듈 스타일  -->
<tiles:insertAttribute name="pageCss" />
</head>
<body>
	<!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>

	 <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="/home/main">
                        <!-- Logo icon -->
                        <!--End Logo icon -->
                         <!-- Logo text -->
                        <span class="logo-text">
                             <!-- dark Logo text -->
                             <img src="/assets/images/logo-text.png" alt="homepage" class="light-logo" />
                            
                        </span>
                        <!-- Logo icon -->
                        <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="/assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->
                            
                        <!-- </b> -->
                        <!--End Logo icon -->
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto">
                        <li class="nav-item d-none d-md-block"><a class="nav-link" href="javascript:void(0)" data-sidebartype="mini-sidebar"></a></li>
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
<!--                         <li class="nav-item dropdown"> -->
<!--                             <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                              <span class="d-none d-md-block">Create New <i class="fa fa-angle-down"></i></span> -->
<!--                              <span class="d-block d-md-none"><i class="fa fa-plus"></i></span>    -->
<!--                             </a> -->
<!--                             <div class="dropdown-menu" aria-labelledby="navbarDropdown"> -->
<!--                                 <a class="dropdown-item" href="#">Action</a> -->
<!--                                 <a class="dropdown-item" href="#">Another action</a> -->
<!--                                 <div class="dropdown-divider"></div> -->
<!--                                 <a class="dropdown-item" href="#">Something else here</a> -->
<!--                             </div> -->
<!--                         </li> -->
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
<!--                         <li class="nav-item search-box"> <a class="nav-link waves-effect waves-dark" href="javascript:void(0)"><i class="ti-search"></i></a> -->
<!--                             <form class="app-search position-absolute"> -->
<!--                                 <input type="text" class="form-control" placeholder="Search &amp; enter"> <a class="srh-btn"><i class="ti-close"></i></a> -->
<!--                             </form> -->
<!--                         </li> -->
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- Comment -->
                        <!-- ============================================================== -->
<!--                         <li class="nav-item dropdown"> -->
<!--                             <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="mdi mdi-bell font-24"></i> -->
<!--                             </a> -->
<!--                              <div class="dropdown-menu" aria-labelledby="navbarDropdown"> -->
<!--                                 <a class="dropdown-item" href="#">Action</a> -->
<!--                                 <a class="dropdown-item" href="#">Another action</a> -->
<!--                                 <div class="dropdown-divider"></div> -->
<!--                                 <a class="dropdown-item" href="#">Something else here</a> -->
<!--                             </div> -->
<!--                         </li> -->
                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
<!--                         <li class="nav-item dropdown"> -->
<!--                             <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="font-24 mdi mdi-comment-processing"></i> -->
<!--                             </a> -->
<!--                             <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown" aria-labelledby="2"> -->
<!--                                 <ul class="list-style-none"> -->
<!--                                     <li> -->
<!--                                         <div class=""> -->
<!--                                              Message -->
<!--                                             <a href="javascript:void(0)" class="link border-top"> -->
<!--                                                 <div class="d-flex no-block align-items-center p-10"> -->
<!--                                                     <span class="btn btn-success btn-circle"><i class="ti-calendar"></i></span> -->
<!--                                                     <div class="m-l-10"> -->
<!--                                                         <h5 class="m-b-0">Event today</h5>  -->
<!--                                                         <span class="mail-desc">Just a reminder that event</span>  -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </a> -->
<!--                                             Message -->
<!--                                             <a href="javascript:void(0)" class="link border-top"> -->
<!--                                                 <div class="d-flex no-block align-items-center p-10"> -->
<!--                                                     <span class="btn btn-info btn-circle"><i class="ti-settings"></i></span> -->
<!--                                                     <div class="m-l-10"> -->
<!--                                                         <h5 class="m-b-0">Settings</h5>  -->
<!--                                                         <span class="mail-desc">You can customize this template</span>  -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </a> -->
<!--                                             Message -->
<!--                                             <a href="javascript:void(0)" class="link border-top"> -->
<!--                                                 <div class="d-flex no-block align-items-center p-10"> -->
<!--                                                     <span class="btn btn-primary btn-circle"><i class="ti-user"></i></span> -->
<!--                                                     <div class="m-l-10"> -->
<!--                                                         <h5 class="m-b-0">Pavan kumar</h5>  -->
<!--                                                         <span class="mail-desc">Just see the my admin!</span>  -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </a> -->
<!--                                             Message -->
<!--                                             <a href="javascript:void(0)" class="link border-top"> -->
<!--                                                 <div class="d-flex no-block align-items-center p-10"> -->
<!--                                                     <span class="btn btn-danger btn-circle"><i class="fa fa-link"></i></span> -->
<!--                                                     <div class="m-l-10"> -->
<!--                                                         <h5 class="m-b-0">Luanch Admin</h5>  -->
<!--                                                         <span class="mail-desc">Just see the my new admin!</span>  -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </a> -->
<!--                                         </div> -->
<!--                                     </li> -->
<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </li> -->
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->

                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item mr-2" style="position: absolute;right: 0;top: 35px;">
                        	<span style="font-size: 12px;color: black;"><b> 시작일 : ${ fn:split( fn:split(userDetailTuple.userEntity.startedAt, '.')[0], ' ')[0] } / 종료일 :   ${ fn:split( fn:split(userDetailTuple.userEntity.endedAt, '.')[0], ' ')[0] }</b></span>
                        </li>
                        <li class="nav-item mr-3" style="position: relative;top: -6px;">
                        	<span style="font-size: 15px;color: white;"><b>${userEntity.account}님, 반갑습니다.</b></span>
                        </li>
                        <li class="nav-item dropdown" onclick="location.href='/logout'"  style="cursor: pointer; position: relative;top: -10px;" >
                        	<i class="fas fa-2x fa-sign-out-alt" style="color: white;"></i>
<!--                         	<button type="button" class="btn btn-outline-primary" ">로그아웃</button> -->
                            
<!--                                 <a class="dropdown-item" href="javascript:void(0)"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a> -->
<!--                                 <a class="dropdown-item" href="javascript:void(0)"><i class="ti-wallet m-r-5 m-l-5"></i> My Balance</a> -->
<!--                                 <a class="dropdown-item" href="javascript:void(0)"><i class="ti-email m-r-5 m-l-5"></i> Inbox</a> -->
<!--                                 <div class="dropdown-divider"></div> -->
<!--                                 <a class="dropdown-item" href="javascript:void(0)"><i class="ti-settings m-r-5 m-l-5"></i> Account Setting</a> -->
<!--                                 <div class="dropdown-divider"></div> -->
                                
<!--                                 <div class="dropdown-divider"></div> -->
<!--                                 <div class="p-l-30 p-10"><a href="javascript:void(0)" class="btn btn-sm btn-success btn-rounded">View Profile</a></div> -->
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
<!--             </nav> -->
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <c:if test="${isAdmin }">
	        <aside class="left-sidebar" data-sidebarbg="skin5">
	            <!-- Sidebar scroll-->
	            <div class="scroll-sidebar">
	                <!-- Sidebar navigation-->
	                <nav class="sidebar-nav">
	                    <ul id="sidebarnav" class="p-t-30">
	                    	<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/home/main" aria-expanded="false"><i class="mdi mdi-briefcase-check"></i><span class="hide-menu">작업내역</span></a></li>
	                    	<c:if test="${sessionScope.userEntity.type eq '01'}">
	                        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark active" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-human-male-female"></i><span class="hide-menu">사용자 관리 </span></a>
	                            <ul aria-expanded="false" class="collapse first-level in">
	                                <li class="sidebar-item"><a href="/admin/user/list" class="sidebar-link"><i class="mdi mdi-format-list-bulleted"></i><span class="hide-menu"> 사용자 목록 </span></a></li>
	                                <li class="sidebar-item"><a href="/admin/user/edit" class="sidebar-link"><i class="mdi mdi-playlist-plus"></i><span class="hide-menu"> 사용자 등록 </span></a></li>
	                            </ul>
	                        </li>
	                        </c:if>
	                    </ul>
	<!--                 </nav> -->
	                <!-- End Sidebar navigation -->
	            </div>
	            <!-- End Sidebar scroll-->
	        </aside>
        </c:if>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
	 
	<c:if test="${isAdmin }">
	<div class="page-wrapper">	
	</c:if>
	<c:if test="${!isAdmin }">
	<div class="page-wrapper" style="margin-left : 0px !important">
	</c:if>
		<tiles:insertAttribute name="content" />
		
	 	<footer class="footer text-center">
               All Rights Reserved by Basic. Designed and Developed by James
        </footer>
	</div>

</body>
</html>
<!-- ============================================================== -->
    <!-- End Wrapper http://www.guriddo.net/demo/bootstrap/  --> 
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    
    
    <!-- ============================================================== -->
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="/dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="/dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- 유틸  -->
    <script src="/dist/js/commonUtils.js"></script>
    
    <script src="/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
	<script src="/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
	<script src="/assets/extra-libs/DataTables/datatables.min.js"></script>
	
	  <!-- this page js -->
    <script src="../../assets/libs/toastr/build/toastr.min.js"></script>
    
   
  

<!-- 페이지 모듈 스크립트  -->
<tiles:insertAttribute name="pageScript" />