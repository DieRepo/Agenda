<%@ Page Title="" Language="C#" MasterPageFile="~/Navega.master" AutoEventWireup="true" CodeBehind="Tema.aspx.cs" Inherits="AgendaPrueba.Tema" %>
<%@MasterType VirtualPath="~/Navega.master" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="background-color:#D5D3D3;">
    
        <div><asp:Image runat="server" style="width: 100%;"  src="../files/AudioAgenda.jpg"/></div>
      
    </div>
                    <asp:Panel runat="server" ID="panelPDF" Visible="true" >
                            <h3> </h3>

               <%-- <aspc:HtmlIframe ID="iFramePdf" ClientIDMode = "Static"  name="iFramePdf" src=""  Visible="false" runat="server"  style="width: 100%; height: 400px;"></aspc:HtmlIframe>

                <aspc:HtmlIframe ID="yourIframe" ClientIDMode = "Static" runat="server" src="" style="width: 100%; height: 600px;"/>--%>

                        <asp:Label runat="server" ID="texto" Style="color: white"></asp:Label>
                        <asp:Image runat="server" ID="orgPrimeIns" src="" AlternateText="" Width="1000" Height="800"/>
                        
                        
            </asp:Panel>

</asp:Content>
