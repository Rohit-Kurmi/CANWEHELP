<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="Library_mng.page.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- link css file --%>

    <link href="../css/login.css" rel="stylesheet" />

     
   
        <div class="container" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5" >
            <div class="row no-gutters">
                <div class="col-12 ">
                    <h1 class=" d-flex justify-content-center text-primary">Login</h1>

                   
                   
                </div>
                <div class="col-12 gy-3">
                     <p class=" d-flex justify-content-center"> <a class="mr-2 text-decoration-none" href="default.aspx">Home</a>    <span>Login</span> </p>
                </div>
            </div>
        </div>



        <div class="container mb-5">

            <div class="row gx-3 gy-5">

                <div class="col-lg-4">
                    <div   class="border border-primary">
                        <div class=" text-center text-primary" >
                            <p><p>
                                <h2>Admin Login</h2>
                                 <a href="adminlogin.aspx">  <img class="img-fluid" src="../images/login-admin.png" /></a>
                                

                        </div>
                        <p class="button text-center"><a href="adminlogin.aspx" class="btn btn-outline-primary px-4 py-3">Login</a></p>
                    </div>
                </div>
               

                <div class="col-lg-4 ">
                    <div   class="border border-primary">
                    <div class=" text-center text-primary" >
                    
                            <p><p>
                                <h2  class="mb-2"> Patient Login</h2>
                               
                                <a href="patientlogin.aspx"> <img class="img-fluid mt-4 mb-4" src="../images/login-patient.jpg" style="height:160px" /> </a>
                        </div>
                        <p class="button text-center mt-3"><a href="patientlogin.aspx" class="btn   btn-outline-primary px-4 py-3">Login</a></p>
                    </div>
                </div>
                
                <div class="col-lg-4 ">
                    <div   class="border border-primary">
                    <div class=" text-center text-primary">
                            <p><p>
                                <h2 class="mb-3">Hospital Login</h2>
                                <a href="Hospitallogin.aspx">  <img class="img-fluid mt-4 mb-4" src="../images/login-hospital.png"  style="height:140px"/></a>
                        </div>
                        <p class="button text-center mt-4"><a href="hospitallogin.aspx" class="btn btn btn-outline-primary px-4 py-3">Login</a></p>
                </div>
                    </div>
            </div>
            </div>


</asp:Content>
