<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg p-4">
                <h2 class="text-center mb-4">✏️ Update Contact</h2>

                <form action="UpdateContact" method="post">
                    <!-- Hidden field for ID -->
                    <input type="hidden" name="id" value="${id}">

                    <!-- Name -->
                    <div class="mb-3">
                        <label class="form-label fw-semibold">Name</label>
                        <input type="text" class="form-control" name="name" value="${name}" required>
                    </div>

                    <!-- Email -->
                    <div class="mb-3">
                        <label class="form-label fw-semibold">Email</label>
                        <input type="email" class="form-control" name="email" value="${email}" required>
                    </div>

                    <!-- Mobile -->
                    <div class="mb-3">
                        <label class="form-label fw-semibold">Mobile</label>
                        <input type="text" class="form-control" name="mobile" value="${mobile}" required>
                    </div>

                    <!-- Message -->
                    <div class="mb-3">
                        <label class="form-label fw-semibold">Message</label>
                        <textarea class="form-control" name="message" rows="3">${message}</textarea>
                    </div>

                    <!-- Submit Button -->
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary btn-lg">Update Contact</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>