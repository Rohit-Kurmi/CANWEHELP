<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patientappoinment.aspx.cs" Inherits="Library_mng.patientappoinment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header -->
    <div class="row text-center my-5">
        <div class="col-12 text-primary">
            <h2><b><u>PATIENT APPOINTMENT</u></b></h2>
        </div>
    </div>

    <!-- Form Container -->
    <div class="container">
        <div class="box p-4 shadow-lg" style="background-color: #ffffff; border-radius: 10px; margin-bottom: 20px;">
            <form runat="server">
                <!-- Note -->
                <div class="alert alert-warning font-weight-bold" role="alert">
                    Note: All fields marked with <span class="text-danger">*</span> are mandatory.
                </div>

                <!-- Problem Type, Problem Specification, Speciality, Hospital -->
                <div class="row">
                    <div class="col-md-3 mb-4">
                        <div class="form-group">
                            <label for="ddpro" class="form-label">Problem Type <span class="text-danger">*</span></label>
                            <asp:DropDownList ID="ddpro" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select problem type----</asp:ListItem>
                                <asp:ListItem>Normal</asp:ListItem>
                                <asp:ListItem>Critical</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4">
                        <div class="form-group">
                            <label for="txtmsg" class="form-label">Problem Specification <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtmsg" class="form-control" placeholder="Specify problem" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:Label ID="lblerrormsg" CssClass="ErrorLabel" runat="server" Text="Label" Style="display: none; color: #ff0000;"></asp:Label>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4">
                        <div class="form-group">
                            <label for="ddspecility" class="form-label">Speciality <span class="text-danger">*</span></label>
                            <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select speciality----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4">
                        <div class="form-group">
                            <label for="ddhospital" class="form-label">Hospital <span class="text-danger">*</span></label>
                            <asp:DropDownList ID="ddhospital" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddhospital_SelectedIndexChanged1">
                                <asp:ListItem>----Select hospital----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <!-- Doctor, Time, Date, Submit -->
                <div class="row">
                    <div class="col-md-3 mb-4">
                        <div class="form-group">
                            <label for="dddoctor" class="form-label">Doctor <span class="text-danger">*</span></label>
                            <asp:DropDownList ID="dddoctor" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select doctor----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4">
                        <div class="form-group">
                            <label for="txttime" class="form-label">Appointment Time <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txttime" class="form-control" TextMode="Time" placeholder="Select time" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4">
                        <div class="form-group">
                            <label for="txtdate" class="form-label">Appointment Date <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtdate" class="form-control" TextMode="Date" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 mb-4 d-flex align-items-end">
                        <div class="form-group w-100">
                            <asp:Button ID="BtnSubmit" runat="server" Text="Send Appointment Request" CssClass="btn btn-info w-100" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
