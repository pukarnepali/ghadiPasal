<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="User_ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .change-pass-box {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            border: 1px solid #008000;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .tblhead {
            font-size: 20px;
            font-weight: bold;
            color: #FF0066;
            text-align: center;
            margin-bottom: 20px;
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="change-pass-box">
            <div class="tblhead">
                Change Password
            </div>

            <!-- Form Fields -->
            <table>
                <tr>
                    <td class="lbl">Enter New Password :</td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Please enter a password" ForeColor="Red"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">Confirm Password :</td>
                    <td>
                        <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtpass" ControlToValidate="txtcpass"  
                            ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="Change Password" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblmsg" runat="server" CssClass="error-msg"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
