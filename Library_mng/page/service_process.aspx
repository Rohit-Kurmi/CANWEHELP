<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="service_process.aspx.cs" Inherits="Library_mng.page.service_process" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <link href="../css/service_process.css" rel="stylesheet" />
   




    <div class="container-fluid mb-5 img-fluid" style="background-image: url('../images/bg_9.jpg'); height:200px;; width:1400px" data-stellar-background-ratio="0.5">


        <div class="row">
            <div class="col-12 ">
                <h1 class="text-primary text-center">Services process</h1>
                <p class=" text-center"><a href="#">Home ></a><span>Process> </i></span></p>
            </div>
        </div>
    </div>




    <section class=" bg-light">
        <div class="container-fluid  "> 
            <div class="row">
                <div class="col-12">
                </div>
            </div>

            <div class="row mb-3   gx-3 gy-3 ">
                <div class="col-md-3  bdrcol"  >
                    
                    
                            <h3 class="text-center  txtt">Homecare Request Process</h3>
                    <div  class="p-5">
                       
                        <ul>
                            <li>Create new registration</li>
                            <li>Login your account</li>
                            <li>fill Homecare form</li>
                            <li>check homecare request status</li>
                            <li>Confirm Date And Time will be send on your account</li>

                        </ul>
                        <p class="button text-center"><a href="#" class="btn btn-outline-primary  px-4 py-3">Cosulation</a></p>
                    </div>
                    </div>


              
                <div class="col-md-3  bdrcol">
                    
                            <h3  class="text-center  txtt">Appointment  Request Proces</h3>
                    <div class="p-5">
                        
                        <ul>
                            <li>Create new registration</li>
                            <li>Login your account</li>
                            <li>fill Appointment form</li>
                            <li>check Appointment request status</li>
                            <li>Confirm Date And Time will be send on your account</li>
                        </ul>
                        <p class="button text-center"><a href="#" class="btn btn-outline-primary px-4 py-3">Appointment</a></p>
                    </div>
                    </div>
                  
                <div class="col-md-3  bdrcol">
                   
                            <h3 class="text-center  txtt ">Health checkup Request Process</h3>
                    <div class="p-5">
                        
                        <ul>
                            <li>Create new registration</li>
                            <li>Login your account</li>
                            <li>fill Healthcheckup form</li>
                            <li>check Healthcheckup request status</li>
                            <li>Confirm Date And Time will be send on your account</li>
                        </ul>
                        <p class="button text-center"><a href="#" class="btn btn-outline-primary px-4 py-3">Appointment</a></p>
                </div>
                </div>

                <div class="col-md-3 bdrcol">
                  
                            <h3 class="text-center  txtt">Transport Request Process</h3>
                    <div class="p-5">
                        
                        <ul>
                            <li>Create new registration</li>
                            <li>Login your account</li>
                            <li>fill Transport form</li>
                            <li>check Transport request status</li>
                            <li>Confirm Date And Time will be send on your account</li>
                        </ul>
                        <p class="button text-center"><a href="homecare.aspx" class="btn btn-outline-primary px-4 py-3">Homecare</a></p>
            </div>
                    </div>
        </div>

        </div>
    </section>
</asp:Content>
