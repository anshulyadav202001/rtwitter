<%@ page language="C#" masterpagefile="~/DefaultMasterPage.master" autoeventwireup="true" inherits="Welcome_Default, App_Web_efqfkah7" title="R-Twitter" %>

<%@ Register Src="~/Controls/AllTweetsForAUser.ascx" TagName="AllUserScraps" TagPrefix="Uc1" %>
<%@ Register Src="~/Controls/UserFollowingMe.ascx" TagName="UserFollowingMe" TagPrefix="Uc2" %>
<%@ Register Src="~/Controls/UserIMFollowing.ascx" TagName="UserIMFollowing" TagPrefix="Uc3" %>
<%@ Register Src="~/Controls/SuggestedUsersToFollow.ascx" TagName="SuggestedUserList"
    TagPrefix="Uc4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table cellpadding="4" cellspacing="4" width="100%" align="center">
        <tr>
            <td width="35%" valign="top">
                <table cellpadding="3" cellspacing="4" width="98%" align="center">
                    <tr>
                        <td valign="middle">
                            <table cellpadding="4" cellspacing="4" width="98%" align="center" style="border: solid 1px Gray;
                                background-color: #F5F5F5;">
                                <tr>
                                    <td>
                                        <asp:Image ID="imgUser" runat="server" Width="100px" Height="100px" />
                                    </td>
                                    <td valign="top">
                                        <asp:Label ID="lblName" runat="server"></asp:Label>
                                        <br />
                                        <asp:HyperLink ID="HLinkMyProfile" runat="server" Text=" View My Profile Page"></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="7">
                                        <table cellpadding="3" cellspacing="4" style="border: solid 1px Gray; width: 98%;
                                            background-color: #FFFFFF;" align="center">
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="lblTweetsCount" runat="server"></asp:Label>
                                                    <br />
                                                    <span style="color: Gray; font-family: Verdana; font-size: 9pt;">TWEETS</span>
                                                </td>
                                                <td align="center">
                                                    <asp:Label ID="lblFollowing" runat="server"></asp:Label>
                                                    <br />
                                                    <span style="color: Gray; font-family: Verdana; font-size: 9pt;">FOLLOWING</span>
                                                </td>
                                                <td align="center">
                                                    <asp:Label ID="lblFollowers" runat="server"></asp:Label>
                                                    <br />
                                                    <span style="color: Gray; font-family: Verdana; font-size: 9pt;">FOLLOWERS</span>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtTweets" runat="server" TextMode="MultiLine" Width="310px" Height="80px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="btnTweet" runat="server" Text="Tweet" Width="80px" OnClick="btnTweet_Click" />
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                            <Uc2:UserFollowingMe ID="UserFollowingMe" runat="server" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <Uc3:UserIMFollowing ID="UserIMFollowing" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table cellpadding="4" cellspacing="4" width="98%" align="center" style="border: solid 1px Gray;
                    background-color: #F5F5F5;">
                    <tr>
                        <td align="left">
                            <Uc4:SuggestedUserList ID="SuggestedUserList" runat="server" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td height="4px">
                        </td>
                    </tr>
                </table>
                <table cellpadding="4" cellspacing="4" width="98%" align="center" style="border: solid 1px Gray;
                    background-color: #F5F5F5;">
                    <tr>
                        <td align="left">
                            TWEETS
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <Uc1:AllUserScraps ID="AllUserScraps" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
