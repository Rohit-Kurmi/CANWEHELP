<%@ Page Title="" Language="C#" MasterPageFile="~/page/patient_home.Master" AutoEventWireup="true" CodeBehind="patientfeedback.aspx.cs" Inherits="Library_mng.page.patient_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light background for better readability */
        }
        .feedback-container {
            margin: 60px auto;
            max-width: 600px;
            padding: 40px;
            background-color: #ffffff;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }
        .feedback-title {
            color: #007bff; /* Primary color for title */
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: bold;
            margin-bottom: 30px;
        }
        .form-group textarea {
            resize: none;
        }
        .btn-submit {
            background-color: #17a2b8; /* Info color for button */
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 16px;
        }
        .btn-submit:hover {
            background-color: #138496; /* Darken the button color on hover */
        }
        .form-control {
            border-radius: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container feedback-container">
        <h2 class="text-center feedback-title">Patient Feedback</h2>

        <form runat="server">
            <div class="form-group">
                <asp:TextBox ID="txtmsg" class="form-control" placeholder="Describe your problem or feedback" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
            </div>

            <div class="text-center">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit Feedback" CssClass="btn btn-submit" />
            </div>
        </form>
    </div>

</asp:Content>
