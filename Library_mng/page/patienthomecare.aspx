<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patienthomecare.aspx.cs" Inherits="Library_mng.page.patienthomecare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row text-center mt-5">
        <div class="col-12 text-primary">
            <h2><b><u>PATIENT HOMECARE</u></b></h2>
        </div>
    </div>

    <div class="container mt-4 mb-5">
        <div class="box shadow-sm p-4">
            <form runat="server">

                <!-- Note Section -->
                <div class="row mb-4">
                    <div class="col-12 alert alert-warning text-danger font-weight-bold">
                        Note: All fields marked with * are mandatory to be filled.
                    </div>
                </div>

                <!-- Time and Service Section -->
                <div class="row g-3 mb-5"> <!-- Increased margin bottom -->
                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="txtfromtime" class="text-danger font-weight-bold">*</label> From Time
                            <asp:TextBox ID="txtfromtime" class="form-control" TextMode="Time" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="txttotime" class="text-danger font-weight-bold">*</label> To Time
                            <asp:TextBox ID="txttotime" class="form-control" TextMode="Time" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="txtday" class="text-danger font-weight-bold">*</label> How Many Days
                            <asp:TextBox ID="txtday" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="ddservices" class="text-danger font-weight-bold">*</label> Select Service
                            <asp:DropDownList ID="ddservices" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select Service----</asp:ListItem>
                                <asp:ListItem>Nurse At Home</asp:ListItem>
                                <asp:ListItem>Doctor At Home</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <!-- Date, Problem, and Address Section -->
                <div class="row g-3 mb-5"> <!-- Increased margin bottom -->
                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="txtdate" class="text-danger font-weight-bold">*</label> Date
                            <asp:TextBox ID="txtdate" class="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="ddpro" class="text-danger font-weight-bold">*</label> Problem Type
                            <asp:DropDownList ID="ddpro" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select Problem Type----</asp:ListItem>
                                <asp:ListItem>Normal</asp:ListItem>
                                <asp:ListItem>Critical</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="txtmsg" class="text-danger font-weight-bold">*</label> Specify Problem
                            <asp:TextBox ID="txtmsg" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <asp:CheckBox ID="CBaddress" runat="server" AutoPostBack="true" /> 
                            <span>Tick here if address is same</span>
                            <asp:TextBox ID="txtaddress" class="form-control mt-2" TextMode="MultiLine" placeholder="Address" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <!-- Location Section -->
                <div class="row g-3 mb-5"> <!-- Increased margin bottom -->
                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="ddstate" class="text-danger font-weight-bold">*</label> Select State
                            <asp:DropDownList ID="ddstate" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddstate_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="dddistrict" class="text-danger font-weight-bold">*</label> Select District
                            <asp:DropDownList ID="dddistrict" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dddistrict_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="ddcity" class="text-danger font-weight-bold">*</label> Select City
                            <asp:DropDownList ID="ddcity" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="txtpin" class="text-danger font-weight-bold">*</label> Pincode
                            <asp:TextBox ID="txtpin" class="form-control" placeholder="Pincode" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <!-- Speciality and Hospital Section -->
                <div class="row g-3 mb-5"> <!-- Increased margin bottom -->
                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="ddspecility" class="text-danger font-weight-bold">*</label> Select Speciality
                            <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4"> <!-- Increased margin bottom -->
                        <div class="form-group">
                            <label for="ddhospital" class="text-danger font-weight-bold">*</label> Select Hospital
                            <asp:DropDownList ID="ddhospital" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 d-flex align-items-center mb-4"> <!-- Increased margin bottom -->
                        <asp:Button ID="BtnSubmit" runat="server" Text="Send Homecare Request" CssClass="btn btn-primary" OnClick="BtnSubmit_Click" />
                    </div>
                </div>

            </form>
        </div>
    </div>
</asp:Content>
