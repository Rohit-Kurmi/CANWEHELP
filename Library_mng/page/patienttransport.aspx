<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patienttransport.aspx.cs" Inherits="Library_mng.page.patienttransport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="margin-top: 100px">
        <div class="col  text-center">
            <h2><b><u>Transport Request</u></b></h2>
        </div>
    </div>

    <div class="container" style="margin-bottom: 90px">
        <div class="box" style="margin: 40px 0 20px; box-shadow: 0px 0px 15px rgba(0,0,0,0.7); padding: 30px;">
            <form runat="server">
                
                <!-- Note -->
                <div class="row mb-4">
                    <div class="col-sm-12 tool-box note border border-muted bg-warning text-danger font-weight-bold">
                        Note: All fields marked with * are mandatory.
                    </div>
                </div>

                <div class="row d-md-flex">
                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label><span class="text-danger">*</span> Speciality</label>
                            <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem>----Select Speciality----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label><span class="text-danger">*</span> Problem Type</label>
                            <asp:DropDownList ID="ddpro" runat="server" CssClass="form-control" AutoPostBack="true" OnBlur="return Validatetype();">
                                <asp:ListItem>----Select problem type----</asp:ListItem>
                                <asp:ListItem>Normal</asp:ListItem>
                                <asp:ListItem>Critical</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label>Problem Description</label>
                            <asp:TextBox ID="txtmsg" class="form-control" placeholder="Specify problem" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <asp:CheckBox ID="CBaddress" runat="server" AutoPostBack="true" />
                            <label>Tick if the address is the same</label>
                            <asp:TextBox ID="txtaddress" class="form-control" placeholder="Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row d-md-flex">
                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label>State</label>
                            <asp:DropDownList ID="ddstate" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddstate_SelectedIndexChanged">
                                <asp:ListItem>----Select State----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label>District</label>
                            <asp:DropDownList ID="dddistrict" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="dddistrict_SelectedIndexChanged">
                                <asp:ListItem>----Select District----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label>City</label>
                            <asp:DropDownList ID="ddcity" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem>----Select City----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label>Pincode</label>
                            <asp:TextBox ID="txtpin" class="form-control" placeholder="Pincode" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row d-md-flex">
                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label><span class="text-danger">*</span> Date</label>
                            <asp:TextBox ID="txtdate" class="form-control dob" TextMode="Date" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <label><span class="text-danger">*</span> Time</label>
                            <asp:TextBox ID="txttime" class="form-control" TextMode="Time" placeholder="HH:MM" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted pb-4">
                        <div class="form-group">
                            <asp:Button ID="BtnSubmit" runat="server" Text="Send Transport Request" CssClass="btn btn-info" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>

</asp:Content>
