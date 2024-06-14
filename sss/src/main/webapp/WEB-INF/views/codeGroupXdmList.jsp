<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- Required meta tags -->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

		<!-- Meta -->
		<meta name="description" content="Best Bootstrap Dashboard Templates" />
		<meta name="author" content="Bootstrap Gallery" />
		<link rel="canonical" href="https://www.bootstrap.gallery/">
		<meta property="og:url" content="https://www.bootstrap.gallery">
		<meta property="og:title" content="Admin Templates - Dashboard Templates | Bootstrap Gallery">
		<meta property="og:description" content="Marketplace for Bootstrap Admin Dashboards">
		<meta property="og:type" content="Website">
		<meta property="og:site_name" content="Bootstrap Gallery">
		<link rel="shortcut icon" href="/adm/template/gear/assets/images/favicon.svg" />

		<!-- Title -->
		<title>Admin Dashboard Templates - Admin Dashboards</title>

		<!-- *************
			************ Common Css Files *************
		************ -->
		<!-- Bootstrap css -->
		<link rel="stylesheet" href="/adm/template/gear/assets/css/bootstrap.min.css" />

		<!-- Bootstrap font icons css -->
		<link rel="stylesheet" href="/adm/template/gear/assets/fonts/bootstrap/bootstrap-icons.css" />

		<!-- Main css -->
		<link rel="stylesheet" href="/adm/template/gear/assets/css/main.min.css" />

		<!-- *************
			************ Vendor Css Files *************
		************ -->

		<!-- Scrollbar CSS -->
		<link rel="stylesheet" href="/adm/template/gear/assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />

		<!-- datetimepicker -->
		<script src="/adm/template/gear/assets/js/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>

		<!-- validationXdm -->
		<script src="/adm/js/validationXdm.js"></script>
		
		<!-- page -->
<!-- 		<script src="/adm/js/page.js"></script> -->
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"></script>
<!-- 		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"> -->
</head>

<body>

    <!-- Page wrapper start -->
    <div class="page-wrapper">

        <!-- 헤더 블록 -->
        <header>
            <!-- Page header starts -->
			<div class="page-header">

				<div class="toggle-sidebar" id="toggle-sidebar">
					<i class="bi bi-list"></i>
				</div>

				<!-- Header actions ccontainer start -->
				<div class="header-actions-container">

					<!-- Search container start -->
					<div class="search-container me-4 d-xl-block d-lg-none">

						<!-- Search input group start -->
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search" />
							<button class="btn btn-outline-secondary" type="button">
								<i class="bi bi-search"></i>
							</button>
						</div>
						<!-- Search input group end -->

					</div>
					<!-- Search container end -->


					<!-- Header profile start -->
					<form>
					<div class="header-profile d-flex align-items-center">
						<div class="dropdown">
							<a th:href="@{/admLogin}" id="userSettings" class="user-settings" data-toggle="dropdown" aria-haspopup="true">
								<span class="user-name d-none d-md-block">[[${session.sessNameXdm}]]</span>
								<span class="avatar">
									<img src="/adm/template/gear/assets/images/user4.png" alt="Admin Templates" />
									<span class="status online"></span>
								</span>
							</a>
							<div class="dropdown-menu dropdown-menu-end" aria-labelledby="userSettings">
								<div class="header-profile-actions">
										<button type="button" id="buttonSignOut"><a th:href="@{/admLogin}">로그아웃</a></button>
<!-- 									<button th:if="${session.sessSeqXdm == null}" type="button" id="buttonSignOut"><a th:href="@{/admLogin}">로그인</a></button> -->
<!-- 									<button th:unless="${session.sessSeqXdm == null}" type="button" id="buttonSignOut">로그아웃</button> -->
								</div>
							</div>
						</div>
					</div>
					</form>
					<!-- Header profile end -->

				</div>
				<!-- Header actions ccontainer end -->

			</div>
			<!-- Page header ends -->
        </header>

        <!-- Main container start -->
        <div class="main-container">
			
            <!-- nav 블록 -->
            <nav class="sidebar-wrapper">
                <!-- Sidebar brand starts -->
					<div class="brand">
						<a th:href="@{admIndex}" class="logo">
							<img src="/adm/template/gear/assets/images/logo.svg" class="d-none d-md-block me-4" alt="Admin Dashboards" />
							<img src="/adm/template/gear/assets/images/logo-sm.svg" class="d-block d-md-none me-4" alt="Admin Dashboards" />
						</a>
					</div>
					<!-- Sidebar brand ends -->

					<!-- Sidebar menu starts -->
					<div class="sidebar-menu">
						<div class="sidebarMenuScroll">
							<ul>
								<li>
									<a th:href="@{admIndex}">
										<i class="bi bi-house"></i>
										<span class="menu-text">Analytics</span>
									</a>
								</li>
								<li class="sidebar-dropdown">
									<a href="#">
										<i class="bi bi-grid-3x3"></i>
										<span class="menu-text">코드그룹 관리</span>
									</a>
									<div class="sidebar-submenu">
										<ul>
											<li>
												<a th:href="@{codeGroupXdmList}">코드그룹 관리</a>
											</li>
											<li>
												<a th:href="@{codeGroupAdd}">코드 등록</a>
											</li>
										</ul>
									</div>
								</li>
								
								<li class="sidebar-dropdown">
									<a href="#">
										<i class="bi bi-grid-3x3"></i>
										<span class="menu-text">코드 관리</span>
									</a>
									<div class="sidebar-submenu">
										<ul>
											<li>
												<a th:href="@{codeXdmList}">코드 관리</a>
											</li>
											<li>
												<a th:href="@{codeAdd}">코드 등록</a>
											</li>
										</ul>
									</div>
								</li>
								
								<li class="sidebar-dropdown">
									<a href="#">
										<i class="bi bi-grid-3x3"></i>
										<span class="menu-text">멤버 관리</span>
									</a>
									<div class="sidebar-submenu">
										<ul>
											<li>
												<a th:href="@{memberAdmList}">멤버 관리</a>
											</li>
											<li>
												<a th:href="@{memberAdmAdd}">멤버 등록</a>
											</li>
										</ul>
									</div>
								</li>
								<li class="sidebar-dropdown">
									<a href="#">
										<i class="bi bi-grid-3x3"></i>
										<span class="menu-text">호텔 관리</span>
									</a>
									<div class="sidebar-submenu">
										<ul>
											<li>
												<a th:href="@{hotelAdmList}">호텔 관리</a>
											</li>
											<li>
<!-- 												<a th:href="@{memberAdmAdd}">멤버 등록</a> -->
											</li>
										</ul>
									</div>
								</li>
<!-- 								<li> -->
<!-- 									<a href="login.html"> -->
<!-- 										<i class="bi bi-shield-lock"></i> -->
<!-- 										<span class="menu-text">Login</span> -->
<!-- 									</a> -->
<!-- 								</li> -->
<!-- 								<li> -->
<!-- 									<a href="signup.html"> -->
<!-- 										<i class="bi bi-unlock"></i> -->
<!-- 										<span class="menu-text">Signup</span> -->
<!-- 									</a> -->
<!-- 								</li> -->
							</ul>
						</div>
					</div>
					<!-- Sidebar menu ends -->
            </nav>

            <!-- Content wrapper scroll start -->
            <div class="content-wrapper-scroll">
			
                <!-- Main header starts -->
                <div class="main-header d-flex align-items-center justify-content-between position-relative">
                    <div class="d-flex align-items-center justify-content-center">
                        <div class="page-icon">
                            <!-- 아이콘 내용 -->
                        </div>
                    </div>
                    <!-- Live updates start -->
                    <ul class="updates d-flex align-items-end flex-column overflow-hidden" id="updates">
                        <li>
                            <a href="javascript:void(0)">
                                <i class="bi bi-envelope-paper text-red font-1x me-2"></i>
                                <span>12 emails from David Michaiah.</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <i class="bi bi-bar-chart text-blue font-1x me-2"></i>
                                <span>15 new features updated successfully.</span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <i class="bi bi-folder-check text-yellow font-1x me-2"></i>
                                <span>The media folder is created successfully.</span>
                            </a>
                        </li>
                    </ul>
                    <!-- Live updates end -->
                </div>
                <!-- Main header ends -->

                <!-- Content wrapper start -->
                
                
                <div class="content-wrapper">
                    <div class="table-responsive">
                        <table class="table align-middle m-0">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="checkboxType"></th>
                                    <th>코드그룹 seq</th>
                                    <th>코드그룹 이름</th>
                                    <th>등록일</th>
                                    <th>수정일</th>
                                    <th>삭제여부</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- 데이터 출력 부분 -->
                                <c:choose>
                                    <c:when test="${empty list}">
                                        <tr>
                                            <td colspan="6">No data available</td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="list" items="${list}">
                                            <tr>
                                                <td><input type="checkbox" id="checkboxType2"></td>
                                                <td><c:out value="${list.cgSeq}" /></td>
                                                <td>
                                                    <a href="<c:url value='/codeGroupAdmView'>
                                                        <c:param name='cgSeq' value='${list.cgSeq}'/>
                                                        <c:param name='name' value='${list.name}'/>
                                                    </c:url>">
                                                        <c:out value="${list.name}" />
                                                    </a>
                                                </td>
                                                <td><fmt:formatDate value="${list.cgRegDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                                                <td><fmt:formatDate value="${list.cgUpdate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                                                <td><c:if test="${list.cgDelny eq 1}">Y</c:if></td>
                                                <td><c:if test="${list.cgDelny ne 1}">N</c:if></td>
                                            </tr>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Content wrapper end -->

                <!-- Modal 창 -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">삭제</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">삭제하시겠습니까?</div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary">예</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 등록 버튼 -->
                <div class="row">
                    <div class="col">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal" style="background-color: red;">
                            <i class="bi bi-trash"></i> 삭제
                        </button>
                    </div>
                    <div class="col" align="Right">
                        <button type="submit" class="btn btn-primary"><a href="/codeAdd">등록</a></button>
                    </div>
                </div>

            </div>
            <!-- Content wrapper scroll end -->

        </div>
        <!-- Main container end -->

    </div>
    <!-- Page wrapper end -->

    <!-- *************
		************ Required JavaScript Files *************
	************* -->
    <!-- 필요한 JavaScript 파일들을 여기에 추가 -->
    <script src="/webapp/resources/js/bootstrap.bundle.min.js"></script>
    <script src="/webapp/resources/js/modernizr.js"></script>
    <script src="/webapp/resources/js/moment.js"></script>

   <!-- *************
			************ Required JavaScript Files *************
		************* -->
		<!-- Required jQuery first, then Bootstrap Bundle JS -->
		<!--<script src="/adm/template/gear/assets/js/jquery.min.js"></script> -->
		<script src="/adm/template/gear/assets/js/bootstrap.bundle.min.js"></script>
		<script src="/adm/template/gear/assets/js/modernizr.js"></script>
		<script src="/adm/template/gear/assets/js/moment.js"></script>

		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Overlay Scroll JS -->
		<script src="/adm/template/gear/assets/vendor/overlay-scroll/jquery.overlayScrollbars.min.js"></script>
		<script src="/adm/template/gear/assets/vendor/overlay-scroll/custom-scrollbar.js"></script>

		<!-- News ticker -->
		<script src="/adm/template/gear/assets/vendor/newsticker/newsTicker.min.js"></script>
		<script src="/adm/template/gear/assets/vendor/newsticker/custom-newsTicker.js"></script>

		<!-- Main Js Required -->
		<script src="/adm/template/gear/assets/js/main.js"></script>
		
		<!-- Data Tables -->
		<script src="/adm/template/gear/assets/vendor/datatables/dataTables.min.js"></script>

</body>

</html>