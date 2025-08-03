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
    <div class="col-lg-6 col-md-8 col-sm-10">
      
      <!-- Contact Card -->
      <div class="contact-card">
        <h2 class="form-title text-center">📩 Contact Us</h2>
        
        <!-- Contact Form -->
        <form action="AddContact" method="POST">
          <!-- Name -->
          <div class="mb-3">
            <label for="name" class="form-label fw-semibold">Full Name</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Enter your full name">
          </div>

          <!-- Email -->
          <div class="mb-3">
            <label for="email" class="form-label fw-semibold">Email Address</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email">
          </div>

          <!-- Mobile -->
          <div class="mb-3">
            <label for="mobile" class="form-label fw-semibold">Mobile Number</label>
            <input type="tel" class="form-control" name="mobile" id="mobile" placeholder="Enter your mobile number">
          </div>

          <!-- Message -->
          <div class="mb-3">
            <label for="message" class="form-label fw-semibold">Message</label>
            <textarea class="form-control" name="message" id="message" rows="4" placeholder="Write your message here..."></textarea>
          </div>

          <!-- Submit Button -->
          <div class="d-grid">
            <button type="submit" class="btn btn-custom">Send Message</button>
          </div>
        </form>

      </div>
    </div>
  </div>
</div>

</body>
</html>