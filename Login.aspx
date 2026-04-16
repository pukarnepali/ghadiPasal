<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Container class to center the form */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 500PX;
            padding: 20px;
        }

        .login-box {
            width: 100%;
            max-width: 400px; /* Max width of the login form */
            padding: 20px;
            border: 1px solid #008000;
            background-color: #f4f4f4;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .tblhead {
            text-align: center;
            font-size: 18px;
            font-weight: bold;
        }

        .lbl {
            text-align: right;
            padding-right: 10px;
            font-size: 14px;
        }

        .txt {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            background-color: #008000;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #006400;
        }

        .error-msg {
            color: #cc0000;
            text-align: center;
        }

        .register-link {
            text-align: center;
            display: block;
            color: #272727;
            text-decoration: none;
            margin-top: 10px;
        }

        .register-link:hover {
            color: #008000;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Container div to center the content -->
    <div class="container">
        <div class="login-box">
            <div class="tblhead">
                User Login Area
            </div>

            <asp:Label ID="lblerror" runat="server" CssClass="error-msg"></asp:Label>

            <!-- Form Fields -->
            <asp:TextBox ID="txtuname" runat="server" CssClass="txt" placeholder="Enter Username"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="txtuname" 
                ErrorMessage="Enter UserName" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="txtpass" 
                ErrorMessage="Enter Password" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <asp:Button 
                ID="btnlogin" 
                runat="server" 
                CssClass="btn" 
                Text="Login" 
                OnClick="btnlogin_Click" />

            <!-- Registration Link -->
            <asp:HyperLink 
                ID="HyperLink2" 
                runat="server" 
                NavigateUrl="~/Registration.aspx" 
                CssClass="register-link">
                Don't have a Username and Password? Register Now !!
            </asp:HyperLink>
        </div>
    </div>
</asp:Content>
