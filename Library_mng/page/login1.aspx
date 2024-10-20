<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="Library_mng.page.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        h1, h2 {
            margin: 0;
        }

        .container-fluid {
            text-align: center;
        }

        .border {
            transition: transform 0.3s;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Shadow effect */
        }

        .border:hover {
            transform: scale(1.05);
        }

        /* Adjusting the size of images */
        .login-img {
            height: 80px; /* Adjusted size to make it smaller */
            max-width: 100%; /* Ensure responsive scaling */
        }
    </style>

    <div class="container-fluid"  background-size: cover; height: 200px; display: flex; flex-direction: column; justify-content: center; align-items: center;" data-stellar-background-ratio="0.5">
        <h1 class="text-primary text-center mb-3">Welcome to Our Library</h1>
        <h2 class="text-dark text-center">Login</h2>
        <p class="text-white text-center">
            <a class="text-decoration-none" href="default.aspx">Home</a>
            <span class="mx-2">|</span>
            <span class="text-dark">Login</span>
        </p>
    </div>

    <div class="container mt-5 mb-5">
        <div class="row gx-3 gy-5">
            <div class="col-lg-4 col-md-6">
                <div class="border border-primary rounded p-4">
                    <h3 class="text-center text-primary">Admin Login</h3>
                    <a href="adminlogin.aspx">
                        <img class="img-fluid mx-auto d-block login-img" src="../images/login-admin.png" alt="Admin Login" />
                    </a>
                    <div class="text-center mt-3">
                        <a href="adminlogin.aspx" class="btn btn-outline-primary px-4 py-2">Login</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="border border-primary rounded p-4">
                    <h3 class="text-center text-primary">Patient Login</h3>
                    <a href="patientlogin.aspx">
                        <img class="img-fluid mx-auto d-block login-img" src="../images/login-patient.jpg" alt="Patient Login" />
                    </a>
                    <div class="text-center mt-3">
                        <a href="patientlogin.aspx" class="btn btn-outline-primary px-4 py-2">Login</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="border border-primary rounded p-4">
                    <h3 class="text-center text-primary">Hospital Login</h3>
                    <a href="Hospitallogin.aspx">
                        <img class="img-fluid mx-auto d-block login-img" src="../images/login-hospital.png" alt="Hospital Login" />
                    </a>
                    <div class="text-center mt-3">
                        <a href="Hospitallogin.aspx" class="btn btn-outline-primary px-4 py-2">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
