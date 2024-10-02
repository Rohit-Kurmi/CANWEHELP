<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="hospitalprofile.aspx.cs" Inherits="Library_mng.page.hospitalprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid mt-5">
      <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px; margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">
      <div class="row ">
          <div class="col-lg-2  border border-muted pb-4 py-4">
              <label>First Name :</label>
          </div>
          <div class="col-lg-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblNAME" runat="server" Text=""></asp:Label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>Registration Number :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblREG" runat="server" Text=""></asp:Label>
          </div>

          <div class="col-md-2   border border-muted pb-4 py-4">
              <label>Webdsite :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblWEB" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class="col-md-1  border border-muted pb-4 py-4 ">
              <label>Mail ID :</label>
          </div>
          <div class="col-md-3   border border-muted pb-4 py-4 ">
              <asp:Label ID="lblGMAIL" runat="server" Text=""></asp:Label>
          </div>
          <div class="col-md-2   border border-muted pb-4 py-4 ">
              <label>Telephone NO. :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4 ">
              <asp:Label ID="lblTELE" runat="server" Text=""></asp:Label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>Mobile NO :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblMNO" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>State :</label>
          </div>
          <div class="col-md-2   border border-muted pb-4 py-4">
              <asp:Label ID="lblSTATE" runat="server" Text=""></asp:Label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4 ">
              <label>District :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblDIST" runat="server" Text=""></asp:Label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>City :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblCITY" runat="server" Text=""></asp:Label>
          </div>

      </div>
      <div class="row tool-box">
          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>Adderss:</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4 ">
              <asp:Label ID="lblADDRESS" runat="server" Text=""></asp:Label>
          </div>

          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>Working Hours :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblWH" runat="server" Text=""></asp:Label>
          </div>

          <div class="col-md-2  border border-muted pb-4 py-4 ">
              <label>PinCode :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblPINITAL" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>Doctor At Home :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblDOC" runat="server" Text=""></asp:Label>
          </div>

          <div class="col-md-2  border border-muted pb-4 py-4">
              <label>Nurse At Home :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblNUR" runat="server" Text=""></asp:Label>
          </div>

          <div class="col-md-2   border border-muted pb-4 py-4 ">
              <label>Emergency Services :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblEMER" runat="server" Text=""></asp:Label>
          </div>
      </div>
      <div class="row ">
          <div class="col-md-2  border border-muted pb-4 py-4 ">
              <label>Dispensary :</label>
          </div>
          <div class="col-md-2  border border-muted pb-4 py-4">
              <asp:Label ID="lblDISP" runat="server" Text=""></asp:Label>
          </div>

      </div></div></div>
   
</asp:Content>
