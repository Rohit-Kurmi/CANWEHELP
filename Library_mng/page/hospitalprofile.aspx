<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="hospitalprofile.aspx.cs" Inherits="Library_mng.page.hospitalprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h5  style="margin-top:100px; margin-left:16px;font-family:serif"> My Profile</h5>

    <div class="container-fluid mt-1" style="font-family:serif">
      <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px; margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">
      <div class="row ">
          <div class="col-lg-2 col-6 pb-4 py-4 border border-muted">
              <label><b>First Name :</b></label>
          </div>
          <div class="col-lg-2 col-6  pb-4 py-4 border border-muted">
              <asp:Label ID="lblNAME" runat="server" Text=""></asp:Label>
          </div>
          <div class="col-lg-2 col-6  pb-4 py-4 border border-muted">
              <label><b>Registration Number :</b></label>
          </div>
          <div class="col-lg-2 col-6 pb-4 py-4 border border-muted">
              <asp:Label ID="lblREG" runat="server" Text=""></asp:Label>
          </div>

          <div class=" col-lg-2 col-6 pb-4 py-4 border border-muted">
              <label><b>Webdsite :</b></label>
          </div>
          <div class=" col-lg-2 col-6 pb-4 py-4 border border-muted">
              <asp:Label ID="lblWEB" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class=" col-lg-2 col-6   pb-4 py-4  border border-muted">
              <label><b>Mail ID :</b></label>
          </div>
          <div class=" col-lg-2 col-6  pb-4 py-4 border border-muted ">
              <asp:Label ID="lblGMAIL" runat="server" Text=""></asp:Label>
          </div>
          <div class=" col-lg-2 col-6    pb-4 py-4  border border-muted">
              <label><b>Telephone NO. :</b></label>
          </div>
          <div class=" col-lg-2 col-6   pb-4 py-4 border border-muted">
              <asp:Label ID="lblTELE" runat="server" Text=""></asp:Label>
          </div>
          <div class=" col-lg-2 col-6  pb-4 py-4 border border-muted" >
              <label><b>Mobile NO :</b></label>
          </div>
          <div class=" col-lg-2 col-6   pb-4 py-4 border border-muted">
              <asp:Label ID="lblMNO" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class="col-lg-2 col-6   pb-4 py-4 border border-muted">
              <label><b>State :</b></label>
          </div>
          <div class=" col-lg-2 col-6   pb-4 py-4 border border-muted">
              <asp:Label ID="lblSTATE" runat="server" Text=""></asp:Label>
          </div>
          <div class=" col-lg-2 col-6   pb-4 py-4 border border-muted">
              <label><b>District :</b></label>
          </div>
          <div class=" col-lg-2 col-6  pb-4 py-4 border border-muted">
              <asp:Label ID="lblDIST" runat="server" Text=""></asp:Label>
          </div>
          <div class=" col-lg-2 col-6   pb-4 py-4 border border-muted">
              <label><b>City :</b></label>
          </div>
          <div class=" col-lg-2 col-6  pb-4 py-4 border border-muted">
              <asp:Label ID="lblCITY" runat="server" Text=""></asp:Label>
          </div>

      </div>
      <div class="row ">
          <div class=" col-lg-2 col-6  pb-4 py-4 border border-muted">
              <label><b>Adderss:</b></label>
          </div>
          <div class=" col-lg-2 col-6  pb-4 py-4 border border-muted">
              <asp:Label ID="lblADDRESS" runat="server" Text=""></asp:Label>
          </div>

          <div class=" col-lg-2 col-6 pb-4 py-4 border border-muted" >
              <label><b>Working Hours :</b></label>
          </div>
          <div class=" col-lg-2 col-6  border border-muted pb-4 py-4">
              <asp:Label ID="lblWH" runat="server" Text=""></asp:Label>
          </div>

          <div class=" col-lg-2 col-6 border border-muted pb-4 py-4 ">
              <label><b>PinCode :</b></label>
          </div>
          <div class=" col-lg-2 col-6  border border-muted pb-4 py-4">
              <asp:Label ID="lblPINITAL" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class=" col-lg-2 col-6 border border-muted  pb-4 py-4">
              <label><b>Doctor At Home :</b></label>
          </div>
          <div class=" col-lg-2 col-6 border border-muted  pb-4 py-4">
              <asp:Label ID="lblDOC" runat="server" Text=""></asp:Label>
          </div>

          <div class=" col-lg-2 col-6 border border-muted pb-4 py-4">
              <label><b>Nurse At Home :</b></label>
          </div>
          <div class=" col-lg-2 col-6 border border-muted pb-4 py-4">
              <asp:Label ID="lblNUR" runat="server" Text=""></asp:Label>
          </div>

          <div class=" col-lg-2 col-6  border border-muted pb-4 py-4 ">
              <label><b>Emergency Services :</b></label>
          </div>
          <div class=" col-lg-2 col-6  pb-4 py-4 border border-muted">
              <asp:Label ID="lblEMER" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class=" col-lg-2 col-6 border border-muted  pb-4 py-4 ">
              <label><b>Dispensary :</b></label>
          </div>
          <div class=" col-lg-2 col-6  border border-muted pb-4 py-4">
              <asp:Label ID="lblDISP" runat="server" Text=""></asp:Label>
          </div>

      </div></div></div>
   
</asp:Content>
