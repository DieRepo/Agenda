<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AgendaPrueba._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="Scripts/jquery.browser.js"></script>
    <script type="text/javascript" src="Scripts/jquery.browser.min.js"></script>
    <div id="contenido">
    <div class="jumbotron" style="background-color:#F7F7F7;">
    

        

        <div><asp:Image runat="server" style="width: 100%;"  src="files/AudioAgenda.jpg"/></div>
        <%--<div><asp:Image runat="server" style="width: 100%;"  src="../files/AudioAgenda.jpg"/></div>--%>    
      
    </div>
                      <div class="container navbar navbar-fixed" style="background-color: #F7F7F7;">
                          <div class="navbar-collapse collapse"><p style="font-family:Verdana;"><b>Nota: Se recomienda utilizar el narrador de Windows</b></p></div>
                             <div class="navbar-collapse collapse"><p style="color:black;font-family:Verdana;"><h3>Menú:</h3></p></div>                 
                            <asp:Menu ID="menu" Orientation="Vertical" CssClass="navbar" runat="server" RenderingMode="List" SkipLinkText="" style="font-family:Verdana;">
                                                           
                                </asp:Menu> 
                      
                      </div>      
        </div>
</asp:Content>
