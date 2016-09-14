<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportViewer.aspx.cs" Inherits="VOB.Web.Reportes.ReportViewer" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reporte Financiero</title>
    <style>
        form { padding:0; margin:0; }
        body { padding:0; margin:0; }
    </style>
    <script src="<%=ResolveClientUrl("~/Scripts/jquery-1.12.3.min.js") %>"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //$("a[title='Excel']").parent().hide();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="mngr" runat="server">
        </asp:ScriptManager>
        <div>
            <rsweb:ReportViewer ID="rptViewer" runat="server" Width="100%" Height="2000px" ZoomMode="PageWidth" ShowParameterPrompts="false"></rsweb:ReportViewer>
        </div>
    </form>
</body>
</html>

