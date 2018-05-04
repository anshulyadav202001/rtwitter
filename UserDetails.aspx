<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" Title="R-Twitter User Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="4" cellspacing="4" width="100%" align="center">
        <tr>
            <td width="99%" valign="top" align="center">
                <table cellpadding="3" cellspacing="4" width="98%" align="center">
                    <tr>
                        <td valign="middle" align=center>
                            <table cellpadding="4" cellspacing="4" width="98%" align="center" style="border: solid 1px Gray;
                                background-color: #F5F5F5;">
                                <tr>
                                    <td colspan="2">
                                        <asp:Image ID="imgUser" runat="server" Width="500px" Height="270px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" align="right">
                                        <asp:Label ID="lblName" runat="server"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:Button ID="btnFollow" runat="server" Text="Folllow" OnClick="btnFollow_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
