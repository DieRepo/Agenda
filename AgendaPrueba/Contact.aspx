<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AgendaPrueba.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

                <asp:Panel runat="server" ID="panelPDF" Visible="true">
                <asp:HtmlIframe ID="iFramePdf" ClientIDMode = "Static"  name="iFramePdf" src=""  Visible="false" runat="server"  style="width: 100%; height: 400px;"></asp:HtmlIframe>

                <asp:HtmlIframe ID="yourIframe" ClientIDMode = "Static" runat="server" src="" style="width: 100%; height: 400px;"/>

            </asp:Panel>
</asp:Content>
