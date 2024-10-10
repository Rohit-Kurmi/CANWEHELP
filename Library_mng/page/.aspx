<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Library_mng.page.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_8.jpg');" data-stellar-background-ratio="0.5">
     <div class="overlay"></div>
     <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
             <div class="col-md-9 ftco-animate text-center">
                 <h1 class="mb-2 bread">Registration</h1>
                 <p class="breadcrumbs"><span class="mr-2"><a href="Default.aspx">Home <i class="ion-ios-arrow-forward"></i></a></span><span>Registration <i class="ion-ios-arrow-forward"></i></span></p>
             </div>
         </div>
     </div>

 </section>



 <section class="ftco-section bg-light">
     <div class="container">

         <div class="row">
             <div class="col-md-2">
             </div>
             <div class="col-md-3 ftco-animate">
                 <div class="pricing-entry pb-5 text-center ">
                     <div class="services-2 d-flex">
                         <div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="icon-hospital-o"></span></div>
                         <div>


                             <span class="price">Hospital Registration</span>
                         </div>
                     </div>
                     <p class="button text-center"><a href="hospitalRegistration.aspx" class="btn btn-primary px-4 py-3">Registration</a></p>
                 </div>
             </div>
             <div class="col-md-2">
             </div>
             <div class="col-md-3 ftco-animate">
                 <div class="pricing-entry pb-5 text-center">
                     <div class="services-2 d-flex">
                         <div class="icon mt-2 mr-3 d-flex justify-content-center align-items-center"><span class="flaticon-first-aid-kit"></span></div>
                         <div>


                             <span class="price">Patient Registration</span>
                         </div>
                     </div>
                     <p class="button text-center"><a href="PatientRegistration.aspx" class="btn btn-primary px-4 py-3">Registration</a></p>
                 </div>
             </div>
             <div class="col-md-2">
             </div>
         </div>
     </div>
 </section>


</asp:Content>
