<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AgendaPrueba._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:#D5D3D3;">
        <p class="lead" style="color:black;">Audio Agenda</p>
      
    </div>
                      <div class="container">
                              <p style="color:black;">Menú:</p>                    
                            <asp:Menu ID="menu" Orientation="Vertical" CssClass="navbar" runat="server" RenderingMode="List" SkipLinkText="" >
                                                           
                                </asp:Menu> 
                      
                      </div>      

</asp:Content>
