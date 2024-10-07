<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patient_profile.aspx.cs" Inherits="Library_mng.page.patient_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <h4 style="margin-top: 70px; margin-left: 16px; font-family: serif"><b>My Profile</b></h4>
        <div class="container-fluid mt-1" style="font-family: serif">
            <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px; margin-top: 15px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">


                <div class="row pb-4 py-4 border border-muted">
                    <div class="col-lg-2 ">
                        <label><b>First Name :</b></label>
                    </div>
                    <div class="col-lg-2 ">
                        <asp:Label ID="lblFNAME" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label><b>Last Name :</b></label>
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="lblLNAME" runat="server" Text=""></asp:Label>
                    </div>

                    <div class="col-md-2  ">
                        <label><b>Date Of Birth :</b></label>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row pb-4 py-4 border border-muted">
                    <div class="col-md-2  ">
                        <label><b>Gmail ID </b>:</label>
                    </div>
                    <div class="col-md-2   ">
                        <asp:Label ID="lblGMAIL" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-md-2   ">
                        <label><b>Gender :</b></label>
                    </div>
                    <div class="col-md-2  ">
                        <asp:Label ID="lblGENDER" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-md-2">
                        <label><b>Mobile NO :</b></label>
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="lblMNO" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row pb-4 py-4 border border-muted">
                    <div class="col-md-2">
                        <label><b>State :</b></label>
                    </div>
                    <div class="col-md-2  ">
                        <asp:Label ID="lblSTATE" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-md-2  ">
                        <label><b>District :</b></label>
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="lblDIST" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col-md-2 ">
                        <label><b>City :</b></label>
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="lblCITY" runat="server" Text=""></asp:Label>
                    </div>

                </div>

                <div class="row  pb-4 py-4 border border-muted">
                    <div class="col-md-2 ">
                        <label><b>Adderss:</b></label>
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="lblADDRESS" runat="server" Text=""></asp:Label>
                    </div>

                    <div class="col-md-2 ">
                        <label><b>Blood Group :</b></label>
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="lblBG" runat="server" Text=""></asp:Label>
                    </div>

                    <div class="col-md-2  ">
                        <label><b>PinCode :</b></label>
                    </div>
                    <div class="col-md-2 ">
                        <asp:Label ID="lblPINITAL" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <br />

                <h5><b>Appointment Request :</b></h5>
                <br />

                <asp:GridView ID="showAppoindment" runat="server" AutoGenerateColumns="true" Font-Name="Verdana" ShowHeaderWhenEmpty="True"
                    CssClass="table table-striped table-bordered table-hover" AlternatingRowStyle-BackColor="#dddddd" HeaderStyle-BackColor="#3c8dbc"
                    HeaderStyle-ForeColor="White" Font-Size="10pt" CellPadding="4">
                </asp:GridView>




                <br />

                <h5><b>Homecare Request :</b></h5>
                <br />

                <asp:GridView ID="showhomecare" runat="server" AutoGenerateColumns="true" Font-Name="Verdana" ShowHeaderWhenEmpty="True"
                    CssClass="table table-striped table-bordered table-hover" AlternatingRowStyle-BackColor="#dddddd" HeaderStyle-BackColor="#3c8dbc"
                    HeaderStyle-ForeColor="White" Font-Size="10pt" CellPadding="4">
                </asp:GridView>

               


                <h5><b>Health checkup Request :</b></h5>
                <br />

                <asp:GridView ID="showcheckup" runat="server" AutoGenerateColumns="true" Font-Name="Verdana" ShowHeaderWhenEmpty="True"
                    CssClass="table table-striped table-bordered table-hover" AlternatingRowStyle-BackColor="#dddddd" HeaderStyle-BackColor="#3c8dbc"
                    HeaderStyle-ForeColor="White" Font-Size="10pt" CellPadding="4">
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>
