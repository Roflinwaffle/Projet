﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TATrouvaille.Master" AutoEventWireup="true" CodeBehind="RechercheLivre.aspx.cs" Inherits="TATrouvaille.RechercheLivre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Form" runat="server">


    <%-- ################################################################################################################################################## --%>
    <%-- ###########################################################      PAGE DE RECHERCHE      ########################################################## --%>
    <%-- ################################################################################################################################################## --%>


    <div class="container">
        <%-- ############################ --%>
        <%-- ROW POUR LE TITRE DE LA PAGE --%>
        <div class="row">
            <div class="col-md-5">
                <div class="h1">Recherche de livre</div>
            </div>
        </div>
        <%-- ROW POUR LE TITRE DE LA PAGE --%>
        <%-- ############################ --%>



        <%-- ######################### --%>
        <%-- ROW POUR LE TITRE DU LIVRE--%>
        <div class="row">
            <div class="col-md-1">Titre</div>
            <div class="col-md-1">
                <asp:TextBox ID="TxtTitrerecherche" runat="server" Width="500px"></asp:TextBox>
            </div>
        </div>
        <%-- ROW POUR LE TITRE DU LIVRE--%>
        <%-- ######################### --%>



        <%-- ############################### --%>
        <%-- ROW POUR LE BOUTTON DE RECHERCHE--%>
        <div class="row">
            <div class="col-md-1">
                <asp:Button ID="BtnRecherche" runat="server" Text="Rechercher" OnClick="BtnRecherche_Click" />
            </div>
        </div>
        <%-- ROW POUR LE BOUTTON DE RECHERCHE--%>
        <%-- ############################### --%>
    

    
     
         <%-- #################################### --%>
         <%-- LE GRID VIEW DE LA RECHERCHE DE LIVRE--%>
         <div class="row">
             
             <div>
         <asp:GridView ShowHeaderWhenEmpty="true" ID="grvResultat" runat="server" AutoGenerateColumns="False" Width="600px" OnSelectedIndexChanged="grvResultat_SelectedIndexChanged">
             <Columns>
                 <asp:BoundField HeaderText="ID du livre" DataField="IDLivre" ReadOnly="true" />
                 <asp:BoundField HeaderText="Titre" DataField="Titre" ReadOnly="True" />
                 <asp:BoundField HeaderText="Auteur" DataField="Auteur" ReadOnly="True" />
                 <asp:BoundField HeaderText="Prix" DataField="Prix" DataFormatString="{0:0.00}" ReadOnly="True" />
                 <asp:ButtonField CommandName="Select" HeaderText="Reservation" ShowHeader="True" Text="Réserver" />
             </Columns>
         </asp:GridView>
            </div>
             </div>
         <%-- LE GRID VIEW DE LA RECHERCHE DE LIVRE--%>
         <%-- #################################### --%>
    </div>
</asp:Content>



