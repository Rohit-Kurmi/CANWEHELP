<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patient_profile.aspx.cs" Inherits="Library_mng.page.patient_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light background for contrast */
        }
        .profile-box {
            background-color: #ffffff; /* White background for the profile box */
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            padding: 30px;
            margin: 20px 0;
        }
        .profile-header {
            background-color: #007bff; /* Primary color for header */
            color: white;
            padding: 15px;
            border-radius: 5px;
        }
        .label {
            font-weight: bold;
            color: #007bff; /* Primary color for labels */
        }
        .grid-header {
            background-color: #17a2b8; /* Info color for grid headers */
            color: white;
        }
        .grid-row {
            background-color: #ffffff; /* White for even rows */
        }
        .grid-row:nth-child(even) {
            background-color: #f2f2f2; /* Light grey for odd rows */
        }
        .grid-header th {
            font-size: 1.1em; /* Slightly larger font for headers */
        }
        h5 {
            color: #343a40; /* Dark grey for section headings */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div class="container mt-5">
            <h4 class="text-center" style="font-family: serif"><b>My Profile</b></h4>
            <div class="profile-box">
                

                <div class="row pb-4 border-bottom">
                    <div class="col-lg-2">
                        <label class="label">First Name:</label>
                        <asp:Label ID="lblFNAME" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-lg-2">
                        <label class="label">Last Name:</label>
                        <asp:Label ID="lblLNAME" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">Date Of Birth:</label>
                        <asp:Label ID="lblDOB" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">Gmail ID:</label>
                        <asp:Label ID="lblGMAIL" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">Gender:</label>
                        <asp:Label ID="lblGENDER" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">Mobile NO:</label>
                        <asp:Label ID="lblMNO" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                </div>

                <div class="row pb-4 border-bottom">
                    <div class="col-md-2">
                        <label class="label">State:</label>
                        <asp:Label ID="lblSTATE" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">District:</label>
                        <asp:Label ID="lblDIST" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">City:</label>
                        <asp:Label ID="lblCITY" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">Address:</label>
                        <asp:Label ID="lblADDRESS" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">Blood Group:</label>
                        <asp:Label ID="lblBG" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label class="label">PinCode:</label>
                        <asp:Label ID="lblPINITAL" runat="server" Text="" CssClass="font-weight-normal"></asp:Label>
                    </div>
                </div>

                <h5><b>Appointment Requests:</b></h5>
                <asp:GridView ID="showAppoindment" runat="server" AutoGenerateColumns="true" CssClass="table table-striped table-bordered table-hover mt-3"
                    AlternatingRowStyle-BackColor="#ffffff" HeaderStyle-CssClass="grid-header"
                    HeaderStyle-ForeColor="White" Font-Size="10pt" CellPadding="4">
                </asp:GridView>

                <h5 class="mt-4"><b>Homecare Requests:</b></h5>
                <asp:GridView ID="showhomecare" runat="server" AutoGenerateColumns="true" CssClass="table table-striped table-bordered table-hover mt-3"
                    AlternatingRowStyle-BackColor="#ffffff" HeaderStyle-CssClass="grid-header"
                    HeaderStyle-ForeColor="White" Font-Size="10pt" CellPadding="4">
                </asp:GridView>

                <h5 class="mt-4"><b>Health Checkup Requests:</b></h5>
                <asp:GridView ID="showcheckup" runat="server" AutoGenerateColumns="true" CssClass="table table-striped table-bordered table-hover mt-3"
                    AlternatingRowStyle-BackColor="#ffffff" HeaderStyle-CssClass="grid-header"
                    HeaderStyle-ForeColor="White" Font-Size="10pt" CellPadding="4">
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>
