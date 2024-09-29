<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="checkdoctordetails.aspx.cs" Inherits="Library_mng.page.checkdoctordetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <form runat="server">
    

         <div class="container-fluid" style="margin-top:100px">

          <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px; margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">
              
              <label><b><u>Doctor List</u></b></label>


              <asp:GridView runat="server" id="Gfordocdetil" AutoGenerateColumns="True" CssClass="table table-striped table-bordered table-hover "
                  Font-Name="Verdana" Font-Size="8pt"   ShowHeaderWhenEmpty="True">

              </asp:GridView>

             </div>
          </div>
          </form>
</asp:Content>
