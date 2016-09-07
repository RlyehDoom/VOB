﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportViewer.aspx.cs" Inherits="VOB.Web.Reportes.ReportViewer" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="mngr" runat="server">
        </asp:ScriptManager>
        <div>
            <rsweb:ReportViewer ID="rptViewer" runat="server" Width="100%" Height="1200px" ZoomMode="PageWidth"></rsweb:ReportViewer>
        </div>
    </form>
</body>
</html>

