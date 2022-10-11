<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AgendaPrueba.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
          <asp:Panel runat="server" ID="panelimg" Visible="true">
               
               <asp:Image ID="imgraficas" runat="server" ClientIDMode="Static" ImageUrl="~/files/grafica_barras.png" GenerateEmptyAlternateText="true" AlternateText="Numero Asuntos Iniciados por Delito Feminicidio Año y Distrito"></asp:Image>

            </asp:Panel>

        <div class="row">
        <div class="col-lg-12">
            <div class="col-md-1">
                <asp:Button runat="server" CssClass="btn btn-danger" OnClick="Regresar_Click" Text="Anterior" ID="btnanterior" />
            </div>
            <div class="col-lg-10">
              
            </div>
            <div class="col-lg-1">
                <asp:Button runat="server" CssClass="btn btn-primary" OnClick="Siguiente_Click" Text="Siguiente" ID="btnsiguiente" />
            </div>

        </div>
    </div>

</asp:Content>
