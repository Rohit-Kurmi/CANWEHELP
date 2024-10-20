<%@ Page Title="" Language="C#" MasterPageFile="~/page/adminmasterpage.Master" AutoEventWireup="true" CodeBehind="details_patient_homecare.aspx.cs" Inherits="Library_mng.page.details_patient_homecare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">

        
         <div class="container-fluid" style="margin-top: 80px; background-color:lightblue; ">
     <div class="row">
         <div class="col-12">
             <header>
                 <h4>Patient homecare request</h4>
             </header>
         </div>
     </div>
     </div>
        <div class="container-fluid">

           
      <div class="box" style="box-shadow: 0px 0px 15px 1px rgba(0,0,0,0.7); padding: 10px; margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">


<asp:GridView ID="home_care_details" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover"
    Font-Name="Verdana" Font-Size="7pt" ShowHeaderWhenEmpty="True" DataKeyNames="homecar_id" Width="1278px">

    <Columns>
        <asp:TemplateField HeaderText="S No." HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Left">
            <ItemTemplate>
                <%# Container.DataItemIndex + 1 %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="fname" HeaderText="FIRST NAME" />
        <asp:BoundField DataField="lname" HeaderText="LAST NAME" />
        
        <asp:BoundField DataField="phone_no" HeaderText="CONTACT_NO" />
        <asp:BoundField DataField="speciality_name" HeaderText="SPECILITY_TYPE" />
        <asp:BoundField DataField="problem_description" HeaderText="PROBLEM" />
        <asp:BoundField DataField="from_data" HeaderText="FROM_DATE" />
        <asp:BoundField DataField="from_time" HeaderText="FROM_TIME" />
        <asp:BoundField DataField="to_tmie" HeaderText="TO_TIME" />
        <asp:BoundField DataField="how_many_days" HeaderText="DAYS" />
        <asp:BoundField DataField="status" HeaderText="STATUS" />

     <asp:BoundField DataField="homecar_id" HeaderText="Appointment ID" Visible="false" />

        
        <asp:TemplateField HeaderText="PERMISSION">
            <ItemTemplate>
                 <asp:RadioButton ID="approve" Text="APPROVE" runat="server" GroupName="SelectGroup_<%# Container.DataItemIndex %>" 
                    AutoPostBack="true" OnCheckedChanged="approve_CheckedChanged" />
                <asp:RadioButton ID="decline" Text="DECLINE" runat="server" GroupName="SelectGroup_<%# Container.DataItemIndex %>" 
                    AutoPostBack="true" OnCheckedChanged="approve_CheckedChanged" />
            </ItemTemplate>
        </asp:TemplateField>

      
       
    </Columns>
</asp:GridView>

            </div>

        </div>




    </form>

</asp:Content>
