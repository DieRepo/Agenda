<%@ Page Title="" Language="C#" MasterPageFile="~/Navega.master" AutoEventWireup="true" CodeBehind="Tema.aspx.cs" Inherits="AgendaPrueba.Tema" %>
<%@MasterType VirtualPath="~/Navega.master" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>--%>
   
    <script type="text/javascript" src="Scripts/jquery.browser.js"></script>
    <script type="text/javascript" src="Scripts/jquery.browser.min.js"></script>
    
    <div id="contenido">
    <div class="jumbotron" style="background-color:#F7F7F7;">
    
        <div><asp:Image runat="server" style="width: 100%;"  src="files/AudioAgenda.jpg"/></div>
        <%--<div><asp:Image runat="server" style="width: 100%;"  src="../files/AudioAgenda.jpg"/></div>--%>

        
      
    </div>
                    <asp:Panel runat="server" ID="panelPDF" Visible="true" >
                            <h3> </h3>
                        <div><p style="font-family:Verdana;font-size:14px;"><b>Nota: Se recomienda utilizar el narrador de Windows</b></p></div>
               <%-- <aspc:HtmlIframe ID="iFramePdf" ClientIDMode = "Static"  name="iFramePdf" src=""  Visible="false" runat="server"  style="width: 100%; height: 400px;"></aspc:HtmlIframe>

                <aspc:HtmlIframe ID="yourIframe" ClientIDMode = "Static" runat="server" src="" style="width: 100%; height: 600px;"/>--%>

                        <asp:Label runat="server" ID="texto" Style="color: white"></asp:Label>
                        <asp:Image runat="server" ID="orgPrimeIns" src="" AlternateText="" Width="1000" Height="800"/>
                        
                        
            </asp:Panel>

        
     

        

    </div>

</asp:Content>
