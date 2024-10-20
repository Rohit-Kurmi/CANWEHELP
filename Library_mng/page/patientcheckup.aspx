<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patientcheckup.aspx.cs" Inherits="Library_mng.page.patientcheckup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row text-center mt-5">
        <div class="col-12">
            <h2><b><u>HEALTH CHECKUP REQUEST</u></b></h2>
        </div>
    </div>

    <div class="container my-5">
        <div class="box mt-4 mb-5 p-4" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7);">
            <form runat="server">
                <!-- Note Section -->
                <div class="row mb-4">
                    <div class="col-sm-12 alert alert-warning text-danger font-weight-bold">
                        Note: All fields marked with * are mandatory to be filled.
                    </div>
                </div>

                <!-- Input Fields Section -->
                <div class="row g-3 mb-4">
                    <div class="col-md-3 border border-muted py-4">
                        <div class="form-group">
                            <label class="text-danger font-weight-bold">*</label> Problem Type
                            <asp:DropDownList ID="ddpro" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select problem type----</asp:ListItem>
                                <asp:ListItem>Normal</asp:ListItem>
                                <asp:ListItem>Critical</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    
                    <div class="col-md-3 border border-muted py-4">
                        <div class="form-group">
                            <label class="text-danger font-weight-bold">*</label> Specify Problem
                            <asp:TextBox ID="txtmsg" class="form-control" placeholder="Specify problem" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted py-4">
                        <div class="form-group">
                            <label class="text-danger font-weight-bold">*</label> Select Checkup
                            <asp:DropDownList ID="ddcheckup" runat="server" CssClass="form-control">
                                <asp:ListItem>----Select checkup----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted py-4">
                        <div class="form-group">
                            <label class="text-danger font-weight-bold">*</label> Select Hospital
                            <asp:DropDownList ID="ddhospital" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem>----Select hospital----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

                <div class="row g-3 mb-4">
                    <div class="col-md-3 border border-muted py-4">
                        <div class="form-group">
                            <label class="text-danger font-weight-bold">*</label> Date
                            <asp:TextBox ID="txtdate" class="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted py-4">
                        <div class="form-group">
                            <label class="text-danger font-weight-bold">*</label> Time
                            <asp:TextBox ID="txttime" class="form-control" TextMode="Time" runat="server"></asp:TextBox>
                           
                        </div>
                    </div>

                    <div class="col-md-3 border border-muted py-4">
                        <div class="form-group">
                            <asp:Button ID="BtnSubmit" runat="server" Text="Send Homecare Request" CssClass="btn btn-secondary btn-info" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
