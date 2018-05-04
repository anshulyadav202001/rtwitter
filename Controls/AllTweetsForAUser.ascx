<%@ control language="C#" autoeventwireup="true" inherits="Controls_AllTweetsForAUser, App_Web_d3ryrz8p" %>
<table cellpadding="0" cellspacing="1" border="0" width="100%">
    <tr>
        <td colspan="3" align="left">
            <asp:GridView ID="GridViewUserTweets" ItemStyle-VerticalAlign="Top" AutoGenerateColumns="False"
                GridLines="None" Width="100%" ShowHeader="False" runat="server" AlternatingRowStyle-BackColor="#A5A5A5"
                CellPadding="4" ForeColor="#333333">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table align="left" cellpadding="1" cellspacing="2">
                                <tr>
                                    <td>
                                        <a href='<%#getUserHREF(Container.DataItem)%>'>
                                            <img align="middle" src='<%#getSRC(Container.DataItem)%>' border="0" width="50px" /></a>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <div align="justify">
                                <%#DataBinder.Eval(Container.DataItem, "Tweet")%>
                                <br />
                                <br />
                            </div>
                            <span class="SmallBlackText">Posted On: &nbsp;</span>
                            <asp:Label ID="lblSendDate" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Tweet_Date")%>'></asp:Label>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle BackColor="#EFF3FB" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
    </tr>
</table>
