<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patientfeedback.aspx.cs" Inherits="Library_mng.page.patient_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row text-center" style="margin-top: 100px; margin-bottom: 100px">
        <div class="col-12 text-muted">
            <h2><b><u>PATIENT FEEDBACK</u></b></h2>
        </div>


    </div>

    <div class=" container " style="margin-bottom:200px">

        <div class="box" style="margin-top: 40px; margin-bottom: 20px; box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px">

            <form runat="server">

                <div class="row d-flex-md border border-muted   py-4">
                    <div class="form-group">
                        <asp:TextBox ID="txtmsg" class="form-control" placeholder="Specifiy problem" TextMode="MultiLine" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="row  d-md-flex border border-muted   py-4">

                    <div class="form-group ">
                        <asp:Button ID="BtnSubmit" runat="server" Text="send feedback" class="btn btn-info" />

                    </div>
                </div>

            </form>

        </div>

    </div>

</asp:Content>
