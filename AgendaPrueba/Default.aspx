<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AgendaPrueba._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    
    <div class="jumbotron" style="background-color:#D5D3D3;">
    
        <div><asp:Image runat="server" style="width: 100%;"  src="../files/AudioAgenda.jpg"/></div>
      
    </div>
                      <div class="container">
                              <p style="color:black;">Menú:</p>                    
                            <asp:Menu ID="menu" Orientation="Vertical" CssClass="navbar" runat="server" RenderingMode="List" SkipLinkText="" style="font-family:Arial;">
                                                           
                                </asp:Menu> 
                      
                      </div>      

</asp:Content>
