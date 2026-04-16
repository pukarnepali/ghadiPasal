<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .btnmenu {
            border: solid 1px #272727;
            color: #fff;
            background-color: #272727;
            width: 165px;
            height: 35px;
            margin: 0px;
            font-weight: bold;
            transition: background 1s ease;
            cursor: pointer;
            border-radius: 2px;
        }

        .btnmenu:hover {
            background-color: #fed52e;
        }

        /* New CSS to center align the DataList */
        .center-align {
            text-align: center;
            display: block;
            margin: 0 auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Product</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <!-- Wrap DataList inside a div with center-align class -->
                <div class="center-align">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4"
                        RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand1">
                        <ItemTemplate>
                            <table style="border: thin solid #339966" width="360" height="400">
                                <tr>
                                    <td class="tblhead">
                                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("iname") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl='<%#Eval("image") %>' Style="text-align: center"
                                            Width="320px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-top-style: solid; border-top-width: thin; border-top-color: #339966">
                                        <table width="100%">
                                            <tr>
                                                <td class="style6">Price :
                                                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button9" runat="server" CssClass="btnmenu" CommandArgument='<%#Eval("iid") %>' Height="25px"
                                                        Text="View" Width="70px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
