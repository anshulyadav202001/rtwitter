<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_cttuor-x" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>R- Twitter</title>
    <link href="StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="4" cellspacing="4" width="70%" align="center" style="padding-top: 155px;">
            <tr>
                <td valign="middle">
                    <span style="color: White; font-family: Verdana; font-weight: bold; font-size: 14pt;">
                        Welcome to R-Twitter.<br />
                    </span><span style="color: White; font-family: Verdana; font-weight: bold; font-size: 11pt;">
                        Find out what’s happening, right now, with the people and organizations you care
                        about.</span>
                </td>
                <td>
                    <table cellpadding="2" cellspacing="2" width="98%" align="center">
                        <tr>
                            <td>
                                <div style="width: 280px; height: 120px; -webkit-border-radius: 45px; -moz-border-radius: 45px;
                                    border-radius: 45px; border: 2px solid #ABD5FF; background-color: #DAE3E1; -webkit-box-shadow: #8FABB3 17px 17px 17px;
                                    -moz-box-shadow: #8FABB3 17px 17px 17px; box-shadow: #8FABB3 17px 17px 17px;
                                    padding-left: 25px;">
                                    <br />
                                    <span style="font-size: 8pt; color: Black; font-family: Verdana;">Email:</span><br />
                                    <asp:TextBox ID="txtEmail" runat="server" Width="255px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTxtEmail" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="Email" ValidationGroup="VGSignUP" Display="None"></asp:RequiredFieldValidator>
                                    <br />
                                    <span style="font-size: 8pt; color: Black; font-family: Verdana;">Password:</span><br />
                                    <asp:TextBox ID="txtPwd" runat="server" Width="175px" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPwd"
                                        ErrorMessage="Password" ValidationGroup="VGSignUP" Display="None"></asp:RequiredFieldValidator>&nbsp;&nbsp;
                                    <asp:Button ID="btnLogin" runat="server" Text="Sign In" Width="65px" BackColor="AliceBlue"
                                        BorderStyle="Ridge" BorderColor="Blue" OnClick="btnLogin_Click" ValidationGroup="VGSignUP" />
                                    <br />
                                    <asp:CheckBox ID="chkRemember" runat="server" />
                                    <span style="font-size: 8pt; color: Black; font-family: Verdana;">Remember Me</span></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="width: 280px; height: 220px; -webkit-border-radius: 45px; -moz-border-radius: 45px;
                                    border-radius: 45px; border: 2px solid #ABD5FF; background-color: #DAE3E1; -webkit-box-shadow: #8FABB3 17px 17px 17px;
                                    -moz-box-shadow: #8FABB3 17px 17px 17px; box-shadow: #8FABB3 17px 17px 17px;
                                    padding-left: 25px;">
                                    <table cellpadding="4" cellspacing="4">
                                        <tr>
                                            <td>
                                                <span style="font-size: 10pt; color: Black; font-family: Verdana;">New To R-Twitter?
                                                    Sign Up</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="font-size: 8pt; color: Black; font-family: Verdana;">Name:</span><br />
                                                <asp:TextBox ID="txtFullName" runat="server" Width="255px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFullName"
                                                    ErrorMessage="Name" ValidationGroup="VGNewAc" Display="None"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="font-size: 8pt; color: Black; font-family: Verdana;">Email:</span><br />
                                                <asp:TextBox ID="txtRegEmail" runat="server" Width="255px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegEmail"
                                                    ErrorMessage="Email" ValidationGroup="VGNewAc" Display="None"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span style="font-size: 8pt; color: Black; font-family: Verdana;">Password:</span><br />
                                                <asp:TextBox ID="txtRegPwd" runat="server" Width="255px" TextMode="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRegPwd"
                                                    ErrorMessage="Password" ValidationGroup="VGNewAc" Display="None"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Button ID="btnSignUp" runat="server" Text="Sign up for R-Twitter" Width="150px"
                                                    BackColor="AliceBlue" BorderStyle="Ridge" BorderColor="Blue" OnClick="btnSignUp_Click"
                                                    ValidationGroup="VGNewAc" />&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="VS" runat="server" ShowSummary="true" ValidationGroup="VGSignUP" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="true"
            ValidationGroup="VGNewAc" />
    </div>
    </form>
</body>
</html>
