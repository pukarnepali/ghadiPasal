<%@ Page Title="" Language="C#" MasterPageFile="~/USER.master" AutoEventWireup="true" CodeFile="PRODUCT.aspx.cs" Inherits="PRODUCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style6 {
            width: 122px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl" width="97%" height="350" style="margin: 0 auto; text-align: center;">
        <tr>
            <td class="tblhead" colspan="2" style="text-align: center;">PRODUCT</td>
        </tr>
        <tr>
            <!-- First Column: GridView -->
            <td style="width: 30%; vertical-align: top; text-align: center; padding-right: 20px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False"
                    Width="100%" CellPadding="4" ForeColor="#272727" GridLines="None" OnRowCommand="GridView1_RowCommand"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#C5C5C5" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text='<%#Eval("Cname") %>' CssClass="cgrid" ForeColor="#272727" ID="lnkcate" CommandName="cate" CommandArgument='<%#Eval("Cname") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#272727" HorizontalAlign="Center" />
                    <RowStyle BorderColor="White" BorderStyle="None" BorderWidth="0px" Font-Size="Medium" Height="25px"
                        HorizontalAlign="Center" BackColor="#4D6A6D" ForeColor="#272727" />
                    <SelectedRowStyle BackColor="#FFCC66" ForeColor="#272727" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>

            <!-- Second Column: DataList -->
            <td style="width: 45%; vertical-align: top; text-align: center; padding-left: 20px;">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4"
                    RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand1">
                    <ItemTemplate>
                        <table style="border: thin solid #339966; margin: 0 auto;" width="178">
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
                                    <asp:Image ID="Image4" runat="server" Height="135px" ImageUrl='<%#Eval("image") %>' Style="text-align: center"
                                        Width="112px" />
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
            </td>
        </tr>
    </table>
</asp:Content>

