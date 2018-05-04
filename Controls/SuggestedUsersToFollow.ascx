<%@ control language="C#" autoeventwireup="true" inherits="Controls_SuggestedUsersToFollow, App_Web_d3ryrz8p" %>
<table cellpadding="1" cellspacing="1" width="100%" border="0" class="FriendControlBlueBorder" style="background-color:#FFFFFF;">
    <tr>
        <td align="center">
            <span style="font: 14pt; font-family: Verdana; font-weight: bold;">Here are some people
                you might enjoy following.</span>
            <asp:Label ID="lblError" runat="server" CssClass="redtext"></asp:Label>
        </td>
    </tr>
    <tr>
        <td valign="top" align="center">
            <asp:DataList ID="SuggestedUserList" runat="server" Width="100%" RepeatColumns="5">
                <ItemTemplate>
                    <table border="0" cellpadding="2" cellspacing="2" align="center" style="background-color: #f5f5f5">
                        <tr>
                            <td align="center" valign="top">
                                <a href='<%#getHREF(Container.DataItem)%>'>
                                    <img src='<%# getSRC(Container.DataItem) %>' align="middle" border="0" width="80px">
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
