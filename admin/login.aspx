<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" MasterPageFile="~/User.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function caplock(e) {
            var kc = e.keycode ? e.keycode : e.which;
            var sk = e.shiftkey ? e.shiftkey : ((kc == 16) ? true : false);
            if (((kc >= 65 && kc <= 90) && !sk) || ((kc >= 97 && kc <= 122) && sk)) {
                document.getElementById('abc').style.visibility = 'visible';
            } else {
                document.getElementById('abc').style.visibility = 'hidden';
            }
        }
    </script>
    <link href="admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        /* Container class to center the form */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
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
            color: #FF0066;
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

        .style1 {
            width: 260px;
            height: 197px;
        }

        .style3 {
            font-size: x-large;
        }

        .style5 {
            height: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Container div to center the content -->
    <div class="container">
        <div class="login-box">
            <div class="tblhead">
                ADMIN LOGIN
            </div>

            <asp:Label ID="lblmsg" runat="server" CssClass="error-msg"></asp:Label>

            <!-- Form Fields -->
            <asp:TextBox ID="txtuname" runat="server" placeholder="Enter Username" CssClass="txt" Width="100%" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

            <asp:TextBox 
                ID="txtpass" 
                runat="server" 
                placeholder="Enter Password" 
                CssClass="txt" 
                TextMode="Password" 
                OnKeyPress="caplock(event)" 
                Width="100%">
            </asp:TextBox>
            <div id="abc" style="visibility:hidden">CAPS LOCK ON</div>

            <!-- Login Button -->
            <asp:Button 
                ID="Button1" 
                runat="server" 
                Text="Login" 
                CssClass="btn" 
                OnClick="Button1_Click" 
                Width="10%" />

            <!-- Back to Home Link -->
            <asp:HyperLink 
                ID="HyperLink1" 
                runat="server" 
                NavigateUrl="~/Home.aspx" 
                CssClass="register-link">
                Back to Home
            </asp:HyperLink>
        </div>
    </div>
</asp:Content>
