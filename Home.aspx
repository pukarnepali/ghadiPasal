<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="meera.css" rel="stylesheet" type="text/css" />
    <title>Untitled Page</title>
    <link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
    <style type="text/css">
        a#vlb {
            display: none
        }
    </style>
    <script type="text/javascript" src="engine1/jquery.js"></script>

    <style type="text/css">
        .style3 {
            width: 380px;
        }

        .style4 {
            width: 541px;
        }

        .style6 {
            width: 122px;
        }

        .style7 {
            width: 100%;
        }

        .style8 {
            width: 554px;
        }

        .style9 {
            width: 100px;
        }
    </style>
    <script language="javascript" type="text/javascript">


        function wows0_onclick() {

        }


    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <div id="second">


        <div id="slide" style="display: flex; justify-content: center; align-items: flex-start; margin-top: 0px;">
            <div id="wowslider-container1" height="450">
                <div class="ws_images">
                    <a href="#">
                        <img src="data1/images/1.png" alt="" title="" id="wows0" /></a>
                    <a href="#">
                        <img src="data1/images/2.png" alt="" title="" id="wows1" /></a>
                    <a href="#">
                        <img src="data1/images/3.png" alt="" title="" id="wows2" /></a>
                    <a href="#">
                        <img src="data1/images/4.png" alt="" title="" id="wows3" /></a>
                    <a href="#">
                        <img src="data1/images/5.png" alt="" title="" id="wows4" /></a>
                    <a href="#">
                        <img src="data1/images/6.png" alt="" title="" id="wows5" /></a>
                    <a href="#">
                        <img src="data1/images/7.png" alt="" title="" id="wows6" /></a>
                </div>
                <div class="ws_bullets">
                    <div>
                        <a href="#wows0" title="">
                            <img src="data1/tooltips/1.png" alt="" />1</a>
                        <a href="#wows1" title="">
                            <img src="data1/tooltips/2.png" alt="" />2</a>
                        <a href="#wows2" title="">
                            <img src="data1/tooltips3.png" alt="" />3</a>
                        <a href="#wows3" title="">
                            <img src="data1/tooltips/4.png" alt="" />4</a>
                        <a href="#wows4" title="">
                            <img src="data1/tooltips/5.png" alt="" />5</a>
                        <a href="#wows5" title="">
                            <img src="data1/tooltips/6.png" alt="" />6</a>
                        <a href="#wows6" title="">
                            <img src="data1/tooltips/7.png" alt="" />7</a>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src="engine1/script.js"></script>
        </div>


        <div id="main" style="display: flex; justify-content: center; align-items: flex-start; margin-top: 20px;">
            <!-- Cate Section -->
            <div id="cate" style="margin-right: 20px; text-align: center;">
                <table class="tbl" style="width: 100%;">
                    <tr>
                        <td class="tblhead">COMPANY</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False"
                                Width="100%" CellPadding="4" ForeColor="#272727" GridLines="None"
                                OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="#C5C5C5" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" Text='<%#Eval("Cname") %>' CssClass="cgrid"
                                                ForeColor="#272727" ID="lnkcate" CommandName="cate"
                                                CommandArgument='<%#Eval("Cname") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#272727" HorizontalAlign="Center" />
                                <RowStyle BorderColor="White" BorderStyle="None" BorderWidth="0px" Font-Size="Medium"
                                    Height="25px" HorizontalAlign="Center" BackColor="#4D6A6D" ForeColor="#272727" />
                                <SelectedRowStyle BackColor="#FFCC66" ForeColor="#272727" Font-Bold="True" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </div>

            <!-- Item Section -->
            <div id="item" style="text-align: center;">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                    OnItemCommand="DataList1_ItemCommand1">
                    <ItemTemplate>
                        <table style="border: thin solid #339966" width="180">
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
                                    <asp:Image ID="Image4" runat="server" Height="135px"
                                        ImageUrl='<%#Eval("image") %>' Style="text-align: center" Width="112px" />
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
                                                <asp:Button ID="Button9" runat="server" CssClass="btnmenu"
                                                    CommandArgument='<%#Eval("iid") %>' Height="25px" Text="View" Width="70px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>



    </div>


</asp:Content>
