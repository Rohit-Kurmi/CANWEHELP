<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="Ourteam.aspx.cs" Inherits="Library_mng.page.Ourteam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .doctor-image {
        width: 100%;
        background-size: cover;
        background-position: center;
        border-radius: 8px; /* Rounded corners for the images */
        transition: transform 0.3s; /* Smooth transition for hover effect */
    }

    .doctor-image:hover {
        transform: scale(1.05); /* Scale effect on hover */
    }

    h1.text-primary {
        font-size: 2.5rem; /* Increase the font size for the main heading */
    }

    .text-muted {
        color: #6c757d; /* Bootstrap muted text color */
        font-weight: 500; /* Slightly bolder muted text */
    }

    .subheading {
        font-size: 1.5rem; /* Increase subheading font size */
        font-weight: bold; /* Bold subheading */
    }

    p {
        line-height: 1.6; /* Improve line height for readability */
    }
</style>
  

     <div class="container-fluid mb-2" style="background-image: url('../images/bg_2.jpg'); height: 200px;" data-stellar-background-ratio="0.5">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-12 text-center">
                <h1 class="text-dark">TEAM</h1>
                <p><a href="#" class="text-white">HOME</a> <span class="text-white">&gt; TEAM</span></p>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <span class="subheading">Doctors</span>
                <h2 class="mb-4">Our Qualified Doctors</h2>
                <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country.</p>
            </div>
        </div>

        <div class="row">
            <!-- Doctor Card -->
            <div class="col-md-6 col-lg-3">
                <div class="d-flex justify-content-center">
                    <div class="doctor-image" style="background-image: url('../images/doc-1.jpg'); height: 200px;"></div>
                </div>
                <div class="pt-3 text-center">
                    <h3>Dr. Lloyd Wilson</h3>
                    <span class="text-muted">Neurologist</span>
                    <p>I am an ambitious workaholic, but apart from that, I'm a pretty simple person.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="d-flex justify-content-center">
                    <div class="doctor-image" style="background-image: url('../images/doc-2.jpg'); height: 200px;"></div>
                </div>
                <div class="pt-3 text-center">
                    <h3>Dr. Rachel Parker</h3>
                    <span class="text-muted">Ophthalmologist</span>
                    <p>I am an ambitious workaholic, but apart from that, I'm a pretty simple person.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="d-flex justify-content-center">
                    <div class="doctor-image" style="background-image: url('../images/doc-3.jpg'); height: 200px;"></div>
                </div>
                <div class="pt-3 text-center">
                    <h3>Dr. Ian Smith</h3>
                    <span class="text-muted">Dentist</span>
                    <p>I am an ambitious workaholic, but apart from that, I'm a pretty simple person.</p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="d-flex justify-content-center">
                    <div class="doctor-image" style="background-image: url('../images/doc-4.jpg'); height: 200px;"></div>
                </div>
                <div class="pt-3 text-center">
                    <h3>Dr. Alicia Henderson</h3>
                    <span class="text-muted">Pediatrician</span>
                    <p>I am an ambitious workaholic, but apart from that, I'm a pretty simple person.</p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
