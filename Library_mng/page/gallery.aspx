<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="Library_mng.page.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/gallery.css" rel="stylesheet" />



    <div class="container-fluid mb-5 ">
        <div class="row ">
            <div class="col-12 py-4">

                <div class="" style="background-image: url('../images/bg_4.jpg'); width: 100%; height: 300px;">
                </div>
            </div>
        </div>
    </div>




    <div style="background-color: rgba(0, 0, 225, .4); height: 320px; width: 100%; position: absolute; top: 215px;"></div>


    <div style="height: 320px; width: 100%; position: absolute; top: 300px;">
        <h1 class="text-white text-center pt-5" style="color: orangered;">Gallery</h1>
        <p class=" d-flex justify-content-center"><a class="mr-2 text-white text-decoration-none" href="../default.aspx">Home></a>    <span class="text-white">Gallery></span> </p>

    </div>



    <div class="container mb-4">
        <div class="row gx-3 gy-3">
            <div class="col-lg-3 col-md-6">

                <img class="img-fluid" src="../images/doc-1.jpg">
            </div>

            <div class="col-lg-3 col-md-6">
                <img class="img-fluid" src="../images/doc-2.jpg" />
            </div>

            <div class="col-lg-3 col-md-6">
                <img class="img-fluid" src="../images/doc-3.jpg" />
            </div>

            <div class="col-lg-3 col-md-6">
                <img class="img-fluid" src="../images/doc-4.jpg" />
            </div>


            <div class="col-lg-3 col-md-6">
                <img class="img-fluid" src="../images/doc-5.jpg" />
            </div>


            <div class="col-lg-3 col-md-6">
                <img class="img-fluid" src="../images/doc-6.jpg" />
            </div>

            <div class="col-lg-3 col-md-6">
                <img class="img-fluid" src="../images/doc-7.jpg" />
            </div>

            <div class="col-lg-3 col-md-6">
                <img class="img-fluid" src="../images/doc-8.jpg" />
            </div>

        </div>
    </div>
</asp:Content>
