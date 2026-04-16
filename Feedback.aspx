<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .form-container {
            max-width: 400px;
            height:500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-family: Arial, sans-serif;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }
        .form-group textarea {
            resize: vertical;
            height: 100px;
        }
        .form-group .error-message {
            color: #ff3300;
            font-size: 12px;
            margin-top: 5px;
        }
        .form-actions {
            text-align: center;
        }
        .form-actions button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }
        .form-actions button:hover {
            background-color: #0056b3;
        }
        .form-message {
            text-align: center;
            font-size: 14px;
            color: green;
            margin-top: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <h2>Feedback Form</h2>
        <div class="form-group">
            <label for="txtname">Name:</label>
            <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="txtname" 
                ErrorMessage="Name is required!" 
                CssClass="error-message" 
                SetFocusOnError="True" 
                ToolTip="Please enter your name.">
            </asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label for="txtfeedback">Feedback:</label>
            <asp:TextBox 
                ID="txtfeedback" 
                runat="server" 
                CssClass="form-control" 
                TextMode="MultiLine">
            </asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="txtfeedback" 
                ErrorMessage="Feedback is required!" 
                CssClass="error-message" 
                SetFocusOnError="True" 
                ToolTip="Please enter your feedback.">
            </asp:RequiredFieldValidator>
        </div>
        <div class="form-actions">
            <asp:Button 
                ID="Button3" 
                runat="server" 
                CssClass="btn btn-primary" 
                Text="Send Feedback" 
                OnClick="Button3_Click" />
        </div>
        <div class="form-message">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
