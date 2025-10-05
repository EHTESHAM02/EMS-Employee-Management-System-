<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<style>
    /* Overall page style */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #e3f2fd, #fce4ec);
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        margin-top: 40px;
        font-size: 28px;
        letter-spacing: 1px;
    }

    /* Form container */
    form {
        background-color: #ffffff;
        max-width: 500px;
        margin: 40px auto;
        padding: 30px 40px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    }

    pre {
        font-family: inherit;
        white-space: pre-wrap;
        word-wrap: break-word;
    }

    /* Label and input styles */
    input[type="text"] {
        width: 100%;
        padding: 10px 12px;
        margin: 8px 0 18px 0;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        transition: all 0.3s ease;
    }

    input[type="text"]:focus {
        border-color: #42a5f5;
        box-shadow: 0 0 6px rgba(66, 165, 245, 0.4);
        outline: none;
    }

    /* Submit button */
    input[type="submit"] {
        background-color: #42a5f5;
        color: white;
        border: none;
        padding: 12px 20px;
        font-size: 16px;
        border-radius: 8px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    input[type="submit"]:hover {
        background-color: #1e88e5;
        transform: translateY(-2px);
    }

    /* Success or message text */
    .msg {
        text-align: center;
        font-size: 16px;
        color: #2e7d32;
        margin-top: 15px;
    }

    /* Add some responsiveness */
    @media (max-width: 600px) {
        form {
            width: 85%;
            padding: 20px;
        }
        h2 {
            font-size: 24px;
        }
    }
</style>

</head>
<body>

    <h2>Register Here!</h2>

    <form action="saveRegDetails" method="post">
        <pre>
First Name     <input type="text" name="firstName" />
Last Name      <input type="text" name="lastName" />
Email Id       <input type="text" name="email" />
Mobile         <input type="text" name="mobile" />
City           <input type="text" name="city" />
State          <input type="text" name="state" />
Pin Code       <input type="text" name="pinCode" />
Address Line   <input type="text" name="addressLine" />
<input type="submit" value="Save" />
        </pre>
    </form>

    <div class="msg">${msg}</div>

</body>
</html>
