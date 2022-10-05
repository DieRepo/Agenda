<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AgendaPrueba.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
        
            <asp:Panel runat="server" ID="panelPDF" Visible="true">
                <asp:HtmlIframe ID="iFramePdf" ClientIDMode = "Static"  name="iFramePdf" src=""  Visible="false" runat="server"  style="width: 100%; height: 400px;"></asp:HtmlIframe>

                <asp:HtmlIframe ID="yourIframe" ClientIDMode = "Static" runat="server" src="" style="width: 100%; height: 400px;"/>

            </asp:Panel>

</asp:Content>
