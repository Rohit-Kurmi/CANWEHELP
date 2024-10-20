<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="checkup_pat_details.aspx.cs" Inherits="Library_mng.page.checkup_pat_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body{
           background-color:;
        }
    </style>
    <form runat="server">

         <div class="container-fluid" style="margin-top: 80px; background-color:lightblue; ">
             <div class="row">
                 <div class="col-12">
                     <header>
                         <h4>Patient Details</h4>
                     </header>
                 </div>
             </div>
             </div>

        <div class="container-fluid" >
            
            <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 30px; margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;
background-color:rgba(255, 255, 255,0.7);">

                <asp:GridView ID="het_check_request" runat="server" AutoGenerateColumns="FALSE" CssClass="table table-striped table-bordered table-hover "
                    Font-Name="Verdana" Font-Size="8pt" ShowHeaderWhenEmpty="True" BackColor="White"  >

                     <HeaderStyle BackColor="#3399FF"  BorderWidth="2px" ForeColor="White" Height="7px" HorizontalAlign="Center" />

                     <RowStyle BackColor="White"  BorderWidth="2px" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <AlternatingRowStyle BackColor="#CCCCCC" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:TemplateField HeaderText="S No." HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>

                          <HeaderStyle HorizontalAlign="Left" Width="5%"></HeaderStyle>
                        </asp:TemplateField>

                       
                        <asp:BoundField DataField="fname" HeaderText="FNAME" />
                         <asp:BoundField DataField="lname" HeaderText="LNAME" />
                         <asp:BoundField DataField="email" HeaderText="GMAIL" />
                         <asp:BoundField DataField="phone_no" HeaderText="CONTACT" />
                         <asp:BoundField DataField="checkup_name" HeaderText="CHECKUP" />
                         <asp:BoundField DataField="problem_type" HeaderText="PROBLEN TYPE" />
                         <asp:BoundField DataField="problem_desc" HeaderText="PROBLE" />
                         <asp:BoundField DataField="checkup_date" HeaderText="DATE" />
                                 
                    </Columns>

                   

                </asp:GridView>

            </div>
        </div>
    </form>
</asp:Content>
