<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AgendaPrueba._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>PORTADA</h1>
        <p class="lead">Pagina de prueba</p>
      
    </div>
                      <div class="container">
                                                 
                            <asp:Menu ID="menu" Orientation="Vertical" CssClass="navbar" runat="server" RenderingMode="List" SkipLinkText="">
                                                           
                                </asp:Menu> 
                      
                      </div>      

</asp:Content>
