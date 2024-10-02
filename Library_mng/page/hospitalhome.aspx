<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="hospitalhome.aspx.cs" Inherits="Library_mng.page.hospitalhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
     <div class="container-fluid" style="margin-top:60px;font-family:serif ">
        
            <div class="row">
                <div class="col-md-12">
                    <h1>Welcome Hospital Section</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="lbl" runat="server" Text=""></asp:Label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <asp:TextBox ID="txtsearch" runat="server" CssClass="form-control" placeholder="Type Here..."> </asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="Buttonsearch" runat="server" Text="Search  details" CssClass="btn btn-primary"
                      />
                </div>
            </div>
           
        
    </div>
        </form>
</asp:Content>
