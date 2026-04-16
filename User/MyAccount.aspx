<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="User_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .account-box {
            width: 100%;
            max-width: 500px; /* Max width of the form */
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

        .style9 {
            width: 100%;
        }

        .style5 {
            height: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="account-box">
            <div class="tblhead">
                Change Account Details
            </div>

            <!-- Form Fields -->
            <table class="style9">
                <tr>
                    <td class="lbl">Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="180"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">SurName :</td>
                    <td>
                        <asp:TextBox ID="txtsurname" runat="server" CssClass="txt" Width="180"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">Address :</td>
                    <td>
                        <asp:TextBox ID="txtaddd" runat="server" CssClass="txt" Width="180"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">City :</td>
                    <td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="180"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">Pincode :</td>
                    <td>
                        <asp:TextBox ID="txtpincode" runat="server" CssClass="txt" Width="180"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">Mobile :</td>
                    <td>
                        <asp:TextBox ID="txtmpbile" runat="server" CssClass="txt" Width="180"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" CssClass="btn" Text="Update Detail" OnClick="Button2_Click" />
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
