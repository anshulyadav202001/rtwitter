<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="Welcome_EditProfile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                                        <asp:HyperLink ID="HLinkMyProfile" runat="server" Text=" View My Profile Page"  ></asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table cellpadding="5" cellspacing="5" width="100%" align="center" style="border: solid 1px Gray;">
                    <tr>
                        <td width="98%" align="left" style="padding-left: 10px;">
                            <span style="color: Black; font-family: Verdana; font-weight: bold; font-size: 14pt;">
                                Profile</span><br />
                            <span style="color: Gray; font-family: Verdana; font-weight: normal; font-size: 10pt;">
                                This information appears on your public profile, search results, and beyond.</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width: 85%" align="center" cellpadding="4" cellspacing="4">
                                <tr>
                                    <td valign="top">
                                        Name:
                                    </td>
                                    <td valign="top">
                                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                        <br />
                                        <span style="color: Gray; font-family: Verdana; font-weight: normal; font-size: 8pt;">
                                            Enter your real name, so people you know can recognize you.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        Email:
                                    </td>
                                    <td valign="top">
                                        <asp:TextBox ID="txtEmail" Enabled="false" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        Password:
                                    </td>
                                    <td valign="top">
                                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="30%">
                                        Created On:
                                    </td>
                                    <td valign="top">
                                        <asp:TextBox ID="txtProfileCreated" Enabled="false" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Photo URL:
                                    </td>
                                    <td align="left">
                                        <input id="UploadUserPhoto" type="file" runat="server" width="300px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20px">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button ID="btnUpdateProfile" runat="server" Text="Update" OnClick="btnUpdateProfile_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
