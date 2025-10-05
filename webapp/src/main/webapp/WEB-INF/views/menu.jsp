<!-- menu.jsp -->
<style>
/* Navigation menu styling */
nav {
    text-align: center;
    background-color: #f0f4ff;
    padding: 12px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

nav a {
    color: #0d47a1; /* Dark blue color */
    text-decoration: none;
    font-weight: 600;
    font-family: "Poppins", "Segoe UI", sans-serif;
    margin: 0 16px;
    padding: 8px 14px;
    border-radius: 6px;
    transition: color 0.3s ease, background-color 0.3s ease;
}

nav a:hover {
    background-color: #e3f2fd; /* Light blue hover background */
    color: #002171; /* Slightly darker blue on hover */
}
</style>

<nav>
    <a href="views">Add Employee</a> |
    <a href="getEmployees">List Employee</a>
</nav>
