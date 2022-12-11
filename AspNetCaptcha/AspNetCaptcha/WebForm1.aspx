<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AspNetCaptcha.WebForm1" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form id="form1" runat="server">
    <div>
    <cc1:CaptchaControl ID="cptCaptcha" runat="server" 
        CaptchaBackgroundNoise="Low" CaptchaLength="5" 
        CaptchaHeight="60" CaptchaWidth="200" 
        CaptchaLineNoise="None" CaptchaMinTimeout="5" 
        CaptchaMaxTimeout="240" FontColor = "#529E00" />
     
    </div>
        <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnVerify" runat="server" Text="Verify Image" OnClick="btnVerify_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Required" ControlToValidate = "txtCaptcha"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblErrorMessage" runat="server" Font-Names = "Arial" Text=""></asp:Label>
        
    </div>
    </form>
</body>
</html>
