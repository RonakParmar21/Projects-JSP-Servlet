<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact crud operation</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	
<div class="container py-5">
  <div class="row g-4">
    <!-- Home -->
    <div class="col-12 col-md-4">
      <a href="index.jsp" class="menu-btn home-btn shadow">🏠 Home</a>
    </div>
    <!-- Add Contact -->
    <div class="col-12 col-md-4">
      <a href="addContact.jsp" class="menu-btn add-btn shadow">➕ Add Contact</a>
    </div>
    <!-- View Contact -->
    <div class="col-12 col-md-4">
      <a href="viewContact.jsp" class="menu-btn view-btn shadow">📑 View Contact</a>
    </div>
  </div>
</div>

</body>
</html>