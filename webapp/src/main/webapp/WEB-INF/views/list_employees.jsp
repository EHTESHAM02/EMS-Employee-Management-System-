<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees......</title>

<style>
    body {
        font-family: "Poppins", "Segoe UI", Tahoma, sans-serif;
        background: linear-gradient(to right, #e0eafc, #cfdef3); /* Soft light gradient */
        color: #000000; /* Text changed to black */
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #0d47a1; /* Deep blue heading for contrast */
        margin-top: 40px;
        letter-spacing: 1px;
    }

    table {
        width: 80%;
        margin: 40px auto;
        border-collapse: collapse;
        background-color: #ffffff;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    th, td {
        text-align: center;
        padding: 14px 18px;
        color: #000000; /* Black font for all table text */
    }

    th {
        background-color: #1565c0;
        color: #ffffff;
        text-transform: uppercase;
        letter-spacing: 0.5px;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:nth-child(odd) {
        background-color: #f1f1f1;
    }

    tr:hover {
        background-color: #e3f2fd;
        transition: background-color 0.3s ease;
    }

    a {
        text-decoration: none;
        padding: 6px 12px;
        border-radius: 6px;
        color: white;
        font-weight: 500;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    a[href*="deleteEmployee"] {
        background-color: #e53935;
    }

    a[href*="deleteEmployee"]:hover {
        background-color: #b71c1c;
        transform: scale(1.05);
    }

    a[href*="getEmployeeById"] {
        background-color: #43a047;
    }

    a[href*="getEmployeeById"]:hover {
        background-color: #2e7d32;
        transform: scale(1.05);
    }

    @media (max-width: 768px) {
        table {
            width: 95%;
            font-size: 14px;
        }
        th, td {
            padding: 10px;
        }
    }
</style>

</head>
<body>
    <h2>List Of Employees</h2>

    <table>
        <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>

        <c:forEach var="emp" items="${employees}">
            <tr>
                <td>${emp.firstName}</td>
                <td>${emp.lastName}</td>
                <td>${emp.email}</td>
                <td>${emp.mobile}</td>
                <td><a href="deleteEmployee?id=${emp.id}">Delete</a></td>
                <td><a href="getEmployeeById?id=${emp.id}">Update</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
