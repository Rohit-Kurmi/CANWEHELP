<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="helthcheckuprequest.aspx.cs" Inherits="Library_mng.page.helthcheckuprequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        
         <div class="container-fluid" style="margin-top: 80px; background-color:lightblue; ">
     <div class="row">
         <div class="col-12">
             <header>
                 <h4>Patient HealthCare Request</h4>
             </header>
         </div>
     </div>
     </div>

        <div class="container-fluid" >

            <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px; margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">

                <asp:GridView ID="het_check_request" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover "
                    Font-Name="Verdana" Font-Size="8pt" ShowHeaderWhenEmpty="True" BackColor="White" ForeColor="Black" DataKeyNames="healthcheck_id">

                    <Columns>

                        <asp:BoundField DataField="fname" HeaderText="FNAME" />
                         <asp:BoundField DataField="lname" HeaderText="LNAME" />
                         <asp:BoundField DataField="hospital_name" HeaderText="HOSPITAL" />
                         <asp:BoundField DataField="checkup_name" HeaderText="CHECKUP" />
                         <asp:BoundField DataField="problem_desc" HeaderText="DISEASE" />
                         <asp:BoundField DataField="problem_type" HeaderText="PROBLEM" />
                         <asp:BoundField DataField="phone_no" HeaderText="CONTACT" />
                         <asp:BoundField DataField="status" HeaderText="STATUS" />

                        <asp:TemplateField headertext="PERMISION">
                            <ItemTemplate>
                                 
                            <asp:RadioButton id="approve" runat="server" groupname="permision" Text="Approve"
                                AutoPostBack="true" OnCheckedChanged="approve_CheckedChanged" />

                                <asp:RadioButton id="decline" runat="server" groupname="permision" Text="Decline"
                                    AutoPostBack="true" OnCheckedChanged="approve_CheckedChanged"/>
                          <%--  <asp:RadioButton ID="aprove" runat="server" GroupName="MyRadioGroup" OnCheckedChanged="RadioButton1_CheckedChanged" AutoPostBack="true" />--%>

                                </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </form>
</asp:Content>
