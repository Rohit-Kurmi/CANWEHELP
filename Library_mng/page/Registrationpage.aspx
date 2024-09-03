<%@ Page Title="" Language="C#" MasterPageFile="~/page/masterpage.Master" AutoEventWireup="true" CodeBehind="Registrationpage.aspx.cs" Inherits="Library_mng.page.Registrationpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    >
     <div class="container">
         <div class="row">
             <div class="col-12 text-center">
                 <h1 class="mb-2 bread">Registration</h1>
                 <p><a href="#">Home  </a><span>Registration </span></p>
             </div>
         </div>
     </div>

  

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-6 py-5">

                    <div class="form-group">
                        <asp:Button ID="HosRegBtn" runat="server" Text="Registration" CssClass="btn btn-primary"></asp:Button>
                    </div>


                </div>

                <div class="col-md-6 col-lg-6">

                    <div class="form-group">
                        <asp:Button ID="PatRegBtn" runat="server" Text="Registration" CssClass="btn btn-primary"></asp:Button>
                    </div>


                </div>
            </div>
        </div>
        



</asp:Content>
