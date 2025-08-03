<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.contact.helper.ConnectionManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Contact</title>
</head>
<body>

<!-- ✅ Include Navbar -->
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container">
    <h1 class="page-title">📋 View Contact</h1>

    <%
        Connection connection = ConnectionManager.getConnection();
        String sql = "SELECT * FROM contact";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        if(rs.next() == false) {
    %>
            <div class="alert alert-warning text-center mt-4">No Contacts Found!</div>
    <%
        } else {
    %>

    <!-- ✅ Responsive Table -->
    <div class="table-container">
        <div class="table-responsive">
            <table class="table table-hover table-striped align-middle text-center">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Contact ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Mobile No.</th>
                        <th scope="col">Message</th>
                        <th scope="col" colspan="2">Action</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    do {
                %>
                    <tr>
                        <td><%= rs.getInt(1)%></td>
                        <td><%= rs.getString(2)%></td>
                        <td><%= rs.getString(3)%></td>
                        <td><%= rs.getString(4)%></td>
                        <td><%= rs.getString(5)%></td>
                        <td>
                            <a href="UpdateContact?id=<%= rs.getInt(1) %>" class="btn btn-success btn-sm px-3">Update</a>
                        </td>
                        <td>
                            <a href="DeleteContact?id=<%= rs.getInt(1) %>" class="btn btn-danger btn-sm px-3"
                               >Delete</a>
                        </td>
                    </tr>
                <%
                    } while (rs.next());
                %>
                </tbody>
            </table>
        </div>
    </div>
    <% } %>
</div>

</body>
</html>
