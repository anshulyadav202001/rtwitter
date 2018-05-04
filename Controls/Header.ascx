<%@ control language="C#" autoeventwireup="true" inherits="Controls_Header, App_Web_d3ryrz8p" %>
<asp:ScriptManager ID="ScriptManager1" runat="server" />
<table width="100%" cellpadding="0" cellspacing="0" style="background-color: #2C3539;">
    <tr>
        <td width="15%">
            <marquee behavior="alternate"> 
                    <span style="color: White; font-family: Arial; font-size: 12pt; font-weight:bold">Welcome to R-Twitter</span></marquee>
        </td>
        <td width="20%">
            &nbsp;&nbsp;
            <asp:HyperLink ID="hLinkHome" runat="server" NavigateUrl="~/Welcome/Default.aspx"
                ForeColor="White" Text="Home"></asp:HyperLink>
        </td>
        <td align="right" valign="middle">
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="btnSearch"
                runat="server" Text="Search" OnClick="btnSearch_Click" />
        </td>
        <td align="right" valign="middle">
            <asp:HyperLink ID="HLinkEditProfile" runat="server" Text="Edit Profile | " NavigateUrl="~/Welcome/EditProfile.aspx"
                ForeColor="White" Font-Size="10pt" Font-Names="Verdana" Font-Bold="true"></asp:HyperLink>
            <asp:LinkButton ID="Logout" runat="server" Text="Logout" OnClick="Logout_Click" ForeColor="White"
                Font-Size="10pt" Font-Names="Verdana" Font-Bold="true" CausesValidation="false"></asp:LinkButton>
        </td>
        <td width="15%">
        </td>
    </tr>
</table>
