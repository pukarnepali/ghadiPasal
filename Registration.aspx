<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .form-container {
            max-width: 500px;
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
        .form-footer {
            text-align: center;
            font-size: 14px;
            margin-top: 20px;
            color: #333;
        }
        .form-footer a {
            color: #007bff;
            text-decoration: none;
        }
        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container">
        <h2>Registration Form</h2>
        
        <div class="form-group">
            <label for="txtname">Name:</label>
            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="txtname" 
                ErrorMessage="Enter Name" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
        </div>
        
        <div class="form-group">
            <label for="txtsname">Surname:</label>
            <asp:TextBox ID="txtsname" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="txtsname" 
                ErrorMessage="Enter Surname" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtadd">Address:</label>
            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                runat="server" 
                ControlToValidate="txtadd" 
                ErrorMessage="Enter Address" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtcity">City:</label>
            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator4" 
                runat="server" 
                ControlToValidate="txtcity" 
                ErrorMessage="Enter City" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <label for="txtppin">Pincode:</label>
            <asp:TextBox ID="txtppin" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RangeValidator 
                ID="RangeValidator1" 
                runat="server" 
                ControlToValidate="txtppin" 
                ErrorMessage="Enter Pincode" 
                ForeColor="Red" 
                MaximumValue="999999" 
                MinimumValue="100000" 
                Type="Double">
            </asp:RangeValidator>
        </div>

        <div class="form-group">
            <label>Gender:</label>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="h" Text="Male" Checked="True" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="h" Text="Female" />
        </div>

        <div class="form-group">
            <label for="txtmo">Mobile:</label>
            <asp:TextBox ID="txtmo" runat="server" CssClass="txt" MaxLength="10"></asp:TextBox>
            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" 
                runat="server" 
                ControlToValidate="txtmo" 
                ErrorMessage="Enter Mobile" 
                ForeColor="Red" 
                ValidationExpression="[0-9]{10}">
            </asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label for="txtemail">Email:</label>
            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator2" 
                runat="server" 
                ControlToValidate="txtemail" 
                ErrorMessage="Enter Email" 
                ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </div>

        <div class="form-group">
            <label for="txtpass">Password:</label>
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtcpass">Confirm Password:</label>
            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator 
                ID="CompareValidator1" 
                runat="server" 
                ControlToCompare="txtpass" 
                ControlToValidate="txtcpass" 
                ErrorMessage="Password does not match" 
                ForeColor="Red">
            </asp:CompareValidator>
        </div>

        <div class="form-actions">
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Register Now" OnClick="Button3_Click" />
        </div>

        <div class="form-footer">
            Already have a username and password? 
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">Login Here</asp:HyperLink>
        </div>
    </div>
</asp:Content>
