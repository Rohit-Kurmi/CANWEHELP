<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="Registrationpage.aspx.cs" Inherits="Library_mng.page.Registrationpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <!-- Page Title and Breadcrumbs -->
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="mb-2 text-primary">Registration</h1>
                <p><a href="#" class="text-decoration-none text-muted">Home</a> 
                <span class="text-muted"> > Registration</span></p>
            </div>
        </div>

        <!-- Registration Options -->
        <div class="row pb-5 pt-5 g-4">
            <!-- Hospital Registration -->
            <div class="col-md-6 text-center">
                <div class="card shadow-sm p-4 border-0">
                    <h2 class="h5 text-uppercase text-primary">Hospital Registration</h2>
                    <p class="mt-3">Register your hospital to gain access to our system and manage appointments, patients, and more.</p>
                    <a href="Hospitalregistration.aspx" class="btn btn-primary mt-3 px-4 py-2">
                        Register Now <i class="bi bi-arrow-right ms-2"></i>
                    </a>
                </div>
            </div>

            <!-- Patient Registration -->
            <div class="col-md-6 text-center">
                <div class="card shadow-sm p-4 border-0">
                    <h2 class="h5 text-uppercase text-primary">Patient Registration</h2>
                    <p class="mt-3">Sign up as a patient to book appointments, access your health records, and more.</p>
                    <a href="patientregistration.aspx" class="btn btn-primary mt-3 px-4 py-2">
                        Register Now <i class="bi bi-arrow-right ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
