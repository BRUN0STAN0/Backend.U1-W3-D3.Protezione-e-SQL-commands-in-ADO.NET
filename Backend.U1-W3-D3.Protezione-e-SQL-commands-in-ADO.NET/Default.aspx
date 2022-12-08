<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Backend.U1_W3_D3.Protezione_e_SQL_commands_in_ADO.NET.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container" style="max-width: 500px">
                <h1 class="text-center">SELEZIONA AUTO</h1>
                    <asp:DropDownList ID="ddl_Auto" CssClass="w-100" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl_Auto_SelectedIndexChanged"></asp:DropDownList> <br />
                    <asp:Image ID="imageAuto" style="max-width: 480px"  cssclass="" runat="server" /> <br />
                    <asp:Label ID="LabelPrezzoAuto" runat="server" Text=""></asp:Label><br /> <br />
                <h5 class="text-center">Aggiungi optional</h5>
                <div class="d-flex justify-content-center border border-1">
                    <asp:CheckBoxList ID="cbl_Optional" RepeatColumns="2" runat="server">
                        <asp:ListItem Text="Vernice m. (+330,00)" Value="330"></asp:ListItem>
                        <asp:ListItem Text="Fari Xeno (+180,00)" Value="180"></asp:ListItem>
                        <asp:ListItem Text="Navigatore (+1800,00)" Value="1800"></asp:ListItem>
                        <asp:ListItem Text="Line Assist (+2000,00)" Value="2000"></asp:ListItem>
                        <asp:ListItem Text="Ruota Scorta (+155,00)" Value="155"></asp:ListItem>
                        <asp:ListItem Text="Interni Pelle (+700,00)" Value="700"></asp:ListItem>
                    </asp:CheckBoxList>
                </div> <br /> <br />
                 <h5 class="text-center">Seleziona garanzia Minimina</h5>
                <p>Numero anni di garanzia (+120,00 cad)</p>
                <asp:DropDownList ID="ddl_AnniGaranzia" CssClass="w-100" runat="server">
                    <asp:ListItem Text="1 Anno" Value="120"></asp:ListItem>
                    <asp:ListItem Text="2 Anni" Value="240"></asp:ListItem>
                    <asp:ListItem Text="3 Anni" Value="360"></asp:ListItem>
                </asp:DropDownList> <br /><br /> 
                <asp:Button ID="CalcolaPreventivo" runat="server" Text="Calcola Preventivo" OnClick="CalcolaPreventivo_Click" CssClass="btn btn-danger w-100"/>
                <div class="border border-1 bg-dark text-white">
                    <p>Totale Modello: <asp:Label ID="LabelTotaleModello" runat="server" Text=""></asp:Label></p>
                    <p>Totale Optional: <asp:Label ID="LabelTotaleOptional" runat="server" Text=""></asp:Label></p>
                    <p>Totale Garanzia: <asp:Label ID="LabelTotaleGaranzia" runat="server" Text=""></asp:Label></p>
                    <p>Totale Complessivo: <asp:Label ID="LabelTotaleComplessivo" runat="server" Text=""></asp:Label></p>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
