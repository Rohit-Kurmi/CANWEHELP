<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="appoinment_details.aspx.cs" Inherits="Library_mng.page.appoinment_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server">

         <div class="container-fluid" style="margin-top: 80px; background-color:lightblue; ">
     <div class="row">
         <div class="col-12">
             <header>
                 <h4>Appoinment Request</h4>
             </header>
         </div>
     </div>
     </div>
        <div class="container-fluid" >
            <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px; margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">

                

                <asp:GridView ID="patientdetails" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover "
                    Font-Name="Verdana" Font-Size="9pt" ShowHeaderWhenEmpty="True" DataKeyNames="appo_id">




                    <Columns>
                        <asp:TemplateField HeaderText="S No." HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
                            <ItemTemplate >
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="appo_id" HeaderText="ID" Visible="false" />
                        <asp:BoundField DataField="fname" HeaderText="FNAME" />
                        <asp:BoundField DataField="lname" HeaderText="LNAME" />
                        <asp:BoundField DataField="dob" HeaderText="DOB" />
                        <asp:BoundField DataField="gender" HeaderText="GENDER" />
                        <asp:BoundField DataField="email" HeaderText="GMAIL" />
                        <asp:BoundField DataField="phone_no" HeaderText="CONTACT" />
                        <asp:BoundField DataField="addres" HeaderText="ADDRESS" />
                        <asp:BoundField DataField="blood_group" HeaderText="BLOOD" />
                        <asp:BoundField DataField="speciality_name" HeaderText="SPECIALITY" />
                        <asp:BoundField DataField="problem_desc" HeaderText=" DISEASE" />

                        <asp:TemplateField HeaderText="PERMISION">
                            <ItemTemplate>
                                <asp:RadioButton ID="approve" runat="server" GroupName="SelectGroup" Text="APPROVE" 
                                    OnCheckedChanged="approve_CheckedChanged" AutoPostBack="true" />

                                <asp:RadioButton ID="decline" runat="server" GroupName="SelectGroup" Text="DECLINE" 
                                    OnCheckedChanged="approve_CheckedChanged" AutoPostBack="true" />
                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

            </div>

        </div>
    </form>



</asp:Content>
