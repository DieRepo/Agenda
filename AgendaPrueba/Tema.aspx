<%@ Page Title="" Language="C#" MasterPageFile="~/Navega.master" AutoEventWireup="true" CodeBehind="Tema.aspx.cs" Inherits="AgendaPrueba.Tema" %>
<%@MasterType VirtualPath="~/Navega.master" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
                    <asp:Panel runat="server" ID="panelPDF" Visible="true" >
                            <h3>Tema</h3>

                <aspc:HtmlIframe ID="iFramePdf" ClientIDMode = "Static"  name="iFramePdf" src=""  Visible="false" runat="server"  style="width: 100%; height: 400px;"></aspc:HtmlIframe>

                <aspc:HtmlIframe ID="yourIframe" ClientIDMode = "Static" runat="server" src="" style="width: 100%; height: 600px;"/>

            </asp:Panel>

</asp:Content>
