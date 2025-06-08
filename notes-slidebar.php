
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Notes Sidebar</title>
    <style>
        .sidebar {
            position: fixed;
            top: 70px; /* Adjust based on your header height */
            left: 0;
            width: 15%;
            height: 100%;
            background-color: #6c757d;
            padding-top: 20px;
            z-index: 1000;
        }

        .sidebar a {
            display: block;
            color: #ffffff;
            padding: 14px 20px;
            text-decoration: none;
            font-weight: 600;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }

        .main-content {
            margin-left: 220px; /* Same as sidebar width + spacing */
        }

        @media screen and (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .main-content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>

<div class="sidebar">
    <a href="ma-notes.php">MA</a>
    <a href="mcom-notes.php">M.Com</a>
    <a href="msc-notes.php">MSc</a>
    <a href="mba-notes.php">MBA</a>
    <a href="mtech-notes.php">M.Tech</a>
    <a href="mca-notes.php">MCA</a>
    <a href="llm-notes.php">LLM</a>
</div>



</body>
</html>
