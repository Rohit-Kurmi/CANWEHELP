﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="for help of master page.aspx.cs" Inherits="Library_mng.for_help_of_master_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>



       
/* Full-height sidebar styling */
        .sidebar {
            position: fixed;
            top: 56px; /* Height of the navbar */
            left: -250px; /* Initially hidden (moved out of the view) */
            width: 250px;
            height: calc(100vh - 56px); /* Full viewport height minus navbar height */
            background-color: #343a40;
            overflow: hidden;
            padding: 15px;
            z-index: 1000; /* Ensure it stays above other content */
            transition: left 0.3s ease; /* Slide effect */
        }

        /* When sidebar is toggled, it slides in */
        .sidebar.show {
            left: 0; /* Move into view */
        }

        /* Main content container to slide with the sidebar */
        .content {
            transition: margin-left 0.3s ease; /* Smooth slide effect */
            margin-left: 0;
            padding: 20px;
        }

        .content.shifted {
            margin-left: 250px; /* Shift content when sidebar is shown */
        }

        .sidebar-content {
            color: white;
        }

        /* Aligning the toggle button next to the logo */
        .navbar-brand {
            display: flex;
            align-items: center;
        }

        .toggle-btn {
            margin-left: 30px; /* Add space between logo and button */
        }

        /* White Point bullet in front of sidebar nav-links */
        .sidebar .nav-link {
            color: white !important;
            position: relative;
            padding-left: 25px; /* Space for bullet */
        }

        .sidebar .nav-link::before {
            content: "\25C9"; /* Unicode for ⦿ (White Point Bullet) */
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            color: white; /* White bullet */
        }

        /* Right aligned logout button */
        .navbar-nav {
            margin-left: auto; /* Pushes the logout button to the right */
        }

        .logout-btn {
            color: white;
            margin-left: 20px; /* Space between buttons */
        }

        .navbar-brand{
            margin-left: 20px;
        }

        /* Footer Styling */
        .footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }




    </style>
    <title></title>
</head>
<body>

   
    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-primary fixed-top">
        <div class="container-fluid">
            <!-- Logo with Toggle Button Next to It -->
            <a class="navbar-brand text-white " href="#">CanWeHelp
                <button class="btn btn-primary toggle-btn text-muted bg-white" id="toggleSidebar">
                    <i class="fas fa-bars menu-icon"></i>
                </button>
            </a>

            <!-- Logout Icon on the Right -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link logout-btn" href="#">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Sidebar (hidden by default, slides in when shown) -->
    <div class="sidebar bg-dark" id="sidebar">
        <div class="sidebar-content">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link active text-white" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Take Appointment</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Transport And Care</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Home Care Request</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Health Checkup Request</a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Main content that will slide along with sidebar -->
    <div class="content" id="mainContent">
        <h1>Welcome to CanWeHelp</h1>
        <p>This is your main content area. The sidebar will slide out when toggled, and this content will move along with it.</p>
    </div>

    <!-- JavaScript to Toggle Sidebar and Slide Content -->
    <script>
        document.getElementById('toggleSidebar').addEventListener('click', function () {
            var sidebar = document.getElementById('sidebar');
            var content = document.getElementById('mainContent');
            sidebar.classList.toggle('show');
            content.classList.toggle('shifted');
        });
    </script>

    <!-- Footer -->
    <div class="footer">
        Copyright ©2024 All rights reserved - CanWeHelp
    </div>




</body>
</html>