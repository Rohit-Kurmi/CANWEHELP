<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="service_process.aspx.cs" Inherits="Library_mng.page.service_process" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="../css/service_process.css" rel="stylesheet" />
    <style>
    .bdrcol {
        border: 1px solid #dee2e6;
        border-radius: 8px; 
        transition: transform 0.3s;
        background-color: white;
    }

    .bdrcol:hover {
        transform: translateY(-5px); 
    }

    .txtt {
        font-size: 1.25rem; 
        font-weight: bold;
    }

    h1.text-primary {
        font-size: 2.5rem;
    }

    .btn-outline-primary {
        color: #007bff;
        border-color: #007bff; 
        transition: background-color 0.3s;
    }

    .btn-outline-primary:hover {
        background-color: #007bff; 
        color: white; 
    }

    ul.list-unstyled {
        padding-left: 0;
    }

    p {
        line-height: 1.5;
    }
</style>


    <div class="container-fluid mb-5 img-fluid" style="background-image: url('../images/bg_9.jpg'); height: 200px; width: 100%; background-size: cover;" data-stellar-background-ratio="0.5">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="text-primary">Services Process</h1>
                <p><a href="#" class="text-white">Home ></a> <span class="text-white"> Process ></span></p>
            </div>
        </div>
    </div>

    <section class="bg-light py-5">
        <div class="container">
            <div class="row mb-3 gx-3 gy-3">
                <div class="col-md-6 col-lg-3 bdrcol">
                    <h3 class="text-center txtt">Homecare Request Process</h3>
                    <div class="p-4">
                        <ul class="list-unstyled">
                            <li>Create new registration</li>
                            <li>Login to your account</li>
                            <li>Fill Homecare form</li>
                            <li>Check Homecare request status</li>
                            <li>Confirm Date and Time will be sent to your account</li>
                        </ul>
                        <p class="text-center">
                            <a href="#" class="btn btn-outline-primary px-4 py-2">Consultation</a>
                        </p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 bdrcol">
                    <h3 class="text-center txtt">Appointment Request Process</h3>
                    <div class="p-4">
                        <ul class="list-unstyled">
                            <li>Create new registration</li>
                            <li>Login to your account</li>
                            <li>Fill Appointment form</li>
                            <li>Check Appointment request status</li>
                            <li>Confirm Date and Time will be sent to your account</li>
                        </ul>
                        <p class="text-center">
                            <a href="#" class="btn btn-outline-primary px-4 py-2">Appointment</a>
                        </p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 bdrcol">
                    <h3 class="text-center txtt">Health Checkup Request Process</h3>
                    <div class="p-4">
                        <ul class="list-unstyled">
                            <li>Create new registration</li>
                            <li>Login to your account</li>
                            <li>Fill Health Checkup form</li>
                            <li>Check Health Checkup request status</li>
                            <li>Confirm Date and Time will be sent to your account</li>
                        </ul>
                        <p class="text-center">
                            <a href="#" class="btn btn-outline-primary px-4 py-2">Appointment</a>
                        </p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3 bdrcol">
                    <h3 class="text-center txtt">Transport Request Process</h3>
                    <div class="p-4">
                        <ul class="list-unstyled">
                            <li>Create new registration</li>
                            <li>Login to your account</li>
                            <li>Fill Transport form</li>
                            <li>Check Transport request status</li>
                            <li>Confirm Date and Time will be sent to your account</li>
                        </ul>
                        <p class="text-center">
                            <a href="homecare.aspx" class="btn btn-outline-primary px-4 py-2">Homecare</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

