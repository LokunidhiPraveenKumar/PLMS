<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="${pageContext.request.contextPath}/resources/css/homestyles.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/loginstyles.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">

<script src="${pageContext.request.contextPath}/resources/js/loginmodalscript.js" defer></script>
<style type="text/css">
body {
  background: #EEF2F7;
    margin:0;
    padding:0;
    overflow:auto;
}
footer {
	position: absolute;
	width: 100%;
	height:10%;
	bottom: 0;
	margin:0;
	color: white;
	background-color: #939596;
}
marquee{
margin:2rem;}
</style>
</head>

<body style="">
 	
 	<div id="modal_wrapper">
		
		<%@ include file="navbar.jsp" %>		
	<h2><marquee>Welcome To Policy Management System</marquee></h2>
		<c:if test="${sessionScope.person!=null}">
		<h2 align="center"> Hi, ${sessionScope.person} ${sessionScope.user.firstname}</h2>
		</c:if>

		<section class="adminloginmodal">
			<%@ include file="admin_login.jsp"%>
		</section>
		<section class="userloginmodal">
			<%@ include file="user_login.jsp"%>
		</section>

	</div>
	<!-- #modal_wrapper -->
</body>

<%@ include file="footer.jsp" %>

</html>