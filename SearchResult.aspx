<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SearchResult, App_Web_nr_xuk71" title="R-Twitter Search Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="1" cellspacing="1" width="90%" border="0" align="center">
        <tr>
            <td style="background-color: #F5F5F5;">
                &nbsp;Search Result
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td valign="top" align="center">
                <asp:DataList ID="SearchResultList" runat="server" Width="100%" RepeatColumns="5">
                    <ItemTemplate>
                        <table border="0" cellpadding="2" cellspacing="2" align="center">
                            <tr>
                                <td align="center" valign="middle" height="100px">
                                    <a href='<%#getHREF(Container.DataItem)%>'>
                                        <img src='<%# getSRC(Container.DataItem) %>' align="middle" border="0" width="80px">
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <%#getName(Container.DataItem)%>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
