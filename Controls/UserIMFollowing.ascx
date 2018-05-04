<%@ control language="C#" autoeventwireup="true" inherits="Controls_UserIMFollowing, App_Web_d3ryrz8p" %>
<table cellpadding="1" cellspacing="1" width="100%" border="0" class="FriendControlBlueBorder">
    <tr>
        <td align="left">
            User I M Following #:
        </td>
    </tr>
    <tr>
        <td valign="top" align="center">
            <asp:DataList ID="FreindList" runat="server" Width="100%" RepeatColumns="5">
                <ItemTemplate>
                    <table border="0" cellpadding="2" cellspacing="2" align="center" style="background-color: #f5f5f5">
                        <tr>
                            <td align="center" valign="top">
                                <a href='<%#getHREF(Container.DataItem)%>'>
                                    <img src='<%# getSRC(Container.DataItem) %>' align="middle" border="0" width="50px">
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
