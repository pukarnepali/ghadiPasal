<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyPayment.aspx.cs" Inherits="User_MyPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl" height="550">
        <tr>
            <td class="tblhead">My Payment</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    Style="text-align: center" Width="100%"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White"
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4"
                    ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField HeaderText="Payment Type" DataField="type" />
                        <asp:BoundField HeaderText="Bank Name" DataField="bank" />
                        <asp:BoundField HeaderText="Bank Branch" DataField="branch" />
                        <asp:BoundField HeaderText="Card No" DataField="cardno" />
                        <asp:BoundField HeaderText="CVV No" DataField="ccv" />
                        <asp:BoundField HeaderText="Amount" DataField="amount" />
                        <asp:BoundField HeaderText="Payment Date" DataField="entrydate" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

