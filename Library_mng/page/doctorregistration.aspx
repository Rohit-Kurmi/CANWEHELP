<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="doctorregistration.aspx.cs" Inherits="Library_mng.page.doctorregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/doctorregistration.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row pb-3 text-center" style="margin-top: 90px;">
        <div class="col">
            <h2 class="text-dark"><b><u>DOCTOR REGISTRATION</u></b></h2>
            <br />
        </div>
    </div>

    <div class="container" style="margin-bottom:150px">
        <div class="box" style="margin-top: 30px; margin-bottom: 20px; box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px">

            <div class="col-sm-12 border border-muted alert alert-warning" role="alert">
                <strong>Note:</strong> All fields marked with <span class="text-danger">*</span> are mandatory to fill.
            </div>
            <form runat="server">

                <div class="row">
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtfn" class="required">First Name <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtfn" class="form-control" placeholder="Doctor First Name" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtln" class="required">Last Name <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtln" class="form-control" placeholder="Doctor Last Name" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtuprn" class="required">Unique Permanent Reg. No. <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtuprn" class="form-control" placeholder="Unique Permanent Reg. No." runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label>Gender <span class="text-danger">*</span></label><br />
                            <asp:RadioButton ID="rbtnMale" GroupName="gender" CssClass="radio-inline" runat="server" Text="Male" />
                            &nbsp;&nbsp;
                            <asp:RadioButton ID="rbtnFemale" GroupName="gender" CssClass="radio-inline" runat="server" Text="Female" />
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtquali" class="required">Qualification <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtquali" class="form-control" placeholder="Doctor Qualification" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:Label ID="lblerrorquali" CssClass="ErrorLabel" runat="server" Text="Label" Style="display: none; color: #ff0000"></asp:Label>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtexper" class="required">Experience <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtexper" class="form-control" placeholder="Doctor Experience" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtmno" class="required">Mobile No <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtmno" class="form-control" placeholder="Mobile No" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtgmail" class="required">Gmail <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtgmail" class="form-control" placeholder="Gmail" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="ddspecility" class="required">Speciality <span class="text-danger">*</span></label>
                            <asp:DropDownList ID="ddspecility" runat="server" CssClass="form-control" AutoPostBack="true">
                                <asp:ListItem>----Select Speciality----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txtfromtime" class="required">From Time <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtfromtime" class="form-control" TextMode="Time" placeholder="From Time" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <label for="txttotime" class="required">To Time <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txttotime" class="form-control" TextMode="Time" placeholder="To Time" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 pb-4">
                        <div class="form-group">
                            <asp:Button ID="btnreset" runat="server" Text="Reset" class="btn btn-info" />
                            &nbsp;&nbsp;
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" class="btn btn-info" OnClick="BtnSubmit_Click" />
                        </div>
                    </div>
                </div>

            </form>

        </div>
    </div>

</asp:Content>
