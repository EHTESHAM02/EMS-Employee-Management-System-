<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<style>
    body {
        font-family: 'Poppins', 'Segoe UI', Tahoma, sans-serif;
        background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
        color: #dcdde1; /* Changed from white to soft silver-gray */
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #00cec9; /* Bright cyan heading for contrast */
        margin-top: 40px;
        font-size: 28px;
        letter-spacing: 1px;
    }

    form {
        background-color: #ffffff;
        color: #2c3e50;
        max-width: 500px;
        margin: 40px auto;
        padding: 30px 40px;
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.4);
    }

    pre {
        font-family: inherit;
        white-space: pre-wrap;
        word-wrap: break-word;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px 12px;
        margin: 10px 0 20px 0;
        border: 1px solid #bbb;
        border-radius: 8px;
        font-size: 15px;
        transition: all 0.3s ease;
        background-color: #f9f9f9;
    }

    input[type="text"]:focus {
        border-color: #00cec9;
        box-shadow: 0 0 8px rgba(0, 206, 201, 0.4);
        outline: none;
        background-color: #fff;
    }

    input[type="submit"] {
        background-color: #27ae60;
        color: white;
        border: none;
        padding: 12px 20px;
        font-size: 16px;
        font-weight: 500;
        border-radius: 8px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    input[type="submit"]:hover {
        background-color: #1e8449;
        transform: translateY(-2px);
    }

    .msg {
        text-align: center;
        margin-top: 15px;
        font-size: 16px;
        color: #00cec9;
    }

    @media (max-width: 600px) {
        form {
            width: 85%;
            padding: 25px;
        }
        h2 {
            font-size: 24px;
        }
    }
</style>

</head>
<body>
    <h2>Update Employee</h2>

    <form action="updateEmpDetails" method="post">
        <pre>
    <input type="hidden" name="id" value="${emp.id}" />
    First Name  <input type="text" name="firstName" value="${emp.firstName}" />
    Last Name   <input type="text" name="lastName" value="${emp.lastName}" />
    Email Id    <input type="text" name="email" value="${emp.email}" />
    Mobile      <input type="text" name="mobile" value="${emp.mobile}" />

    <input type="submit" value="Update" />
        </pre>
    </form>

    <div class="msg">${msg}</div>
</body>
</html>
