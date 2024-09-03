<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="Ourteam.aspx.cs" Inherits="Library_mng.page.Ourteam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/ourteam.css" rel="stylesheet" />


      <div class="container-fluid mb-2"  style="background-image: url('../images/bg_2.jpg'); height:200px; " data-stellar-background-ratio="0.5">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-12 text-center">
            <h1 class="text-primary">TEAM</h1>
            <p class=""><a href="#">HOME></a> <span>TEAM></span></p>
          </div>
        </div>
      </div>





   
        <div class="container">
            <div class="row ">
                <div class="col-md-12 text-center">
                    <span class="subheading">Doctors</span>
                    <h2 class="mb-4">Our Qualified Doctors</h2>
                    <p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. <br />.It is a paradisematic country</p>
                </div>
            </div>


            <div class="row">
                <div class="col-md-6 col-lg-3 ">
                        <div class=" d-flex justify-content-center">
                            <div  style="background-image: url('../images/doc-1.jpg'); height:200px;"></div>

                            
                        </div>
                        <div class=" text-center">
                            <h3>Dr. Lloyd Wilson</h3>
                            <span >Neurologist</span>
                            <div>
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                               
                            </div>
                        </div>
                </div>


                <div class="col-md-6 col-lg-3 ">   
                    <div class=" d-flex justify-content-center">
                            <div class="" style="background-image: url('../images/doc-2.jpg'); height:200px;"></div>
                        </div>
                        <div class=" pt-3 text-center">
                            <h3>Dr. Rachel Parker</h3>
                            <span>Ophthalmologist</span>
                            <div >
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                               
                            </div>
                        </div>
                    </div>


                <div class="col-md-6 col-lg-3 ">
                        <div class=" d-flex justify-content-center">
                        <div class=" " style="background-image: url('../images/doc-3.jpg'); height:200px;"></div>
                        </div>
                        <div class="pt-3 text-center">
                            <h3>Dr. Ian Smith</h3>
                            <span >Dentist</span>
                            <div >
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                               
                            </div>
                        </div>
                    </div>
              

                <div class="col-md-6 col-lg-3 ">
                  
                        <div class=" d-flex justify-content-center">
                            <div class="" style="background-image: url('../images/doc-4.jpg'); height:200px;"></div>
                        </div>
                        <div class=" pt-3 text-center">
                            <h3>Dr. Alicia Henderson</h3>
                            <span>Pediatrician</span>
                            <div
                                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
                               
                            </div>
                        </div>
                    </div>
               
            </div>
        </div>


</asp:Content>
