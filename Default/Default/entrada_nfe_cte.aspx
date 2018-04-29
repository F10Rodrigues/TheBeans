<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="entrada_nfe_cte.aspx.cs" Inherits="Default.entrada_nfe_cte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="lbl_chave" runat="server" Text="CHAVE"></asp:Label>
    <asp:TextBox ID="txt_chave" runat="server" Width="920px"></asp:TextBox><br /><br />
    <asp:Label ID="lbl_cnpj" runat="server" Text="CNPJ"></asp:Label>
     <asp:TextBox ID="txt_cnpj" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_ie" runat="server" Text="I.E."></asp:Label>
     <asp:TextBox ID="txt_ie" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_data_emissao" runat="server" Text="DATA EMISSÃO"></asp:Label>
     <asp:TextBox ID="txt_data_emissao" runat="server"></asp:TextBox><br /><br />
     <asp:Label ID="lbl_numero" runat="server" Text="NUMERO"></asp:Label>
     <asp:TextBox ID="txt_numero" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_serie" runat="server" Text="Serie"></asp:Label>
     <asp:TextBox ID="txt_serie" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_data_entrada" runat="server" Text="Data Entrada"></asp:Label>
     <asp:TextBox ID="txt_data_entrada" runat="server"></asp:TextBox><br /><br />
     <asp:Label ID="lbl_base_calc_icms" runat="server" Text="BASE CÁLC. ICMS"></asp:Label>
     <asp:TextBox ID="txt_base_calc_icms" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_valor_icms" runat="server" Text="VALOR ICMS"></asp:Label>
     <asp:TextBox ID="txt_valor_icms" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_frete_nf" runat="server" Text="FRETE NF"></asp:Label>
     <asp:TextBox ID="txt_frete_nf" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_desconto" runat="server" Text="DESCONTO"></asp:Label>
     <asp:TextBox ID="txt_desconto" runat="server"></asp:TextBox><br /><br />
     <asp:Label ID="lbl_base_calc_st" runat="server" Text="BASE CÁLC ST"></asp:Label>
     <asp:TextBox ID="txt_base_calc_st" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_valor_st" runat="server" Text="VALOR ST"></asp:Label>
     <asp:TextBox ID="txt_valor_st" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_ipi" runat="server" Text="IPI"></asp:Label>
     <asp:TextBox ID="txt_ipi" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_valor_produtos" runat="server" Text="VALOR PRODUTOS"></asp:Label>
     <asp:TextBox ID="txt_vlor_produtos" runat="server"></asp:TextBox>
     <asp:Label ID="lbl_total" runat="server" Text="TOTAL"></asp:Label>
     <asp:TextBox ID="txt_total" runat="server"></asp:TextBox><br /><br />
     <asp:Button ID="btn_concluir" runat="server" Text="CONCLUIR" />
     <asp:Button ID="btn_limpar" runat="server" Text="LIMPAR" />
     <asp:Button ID="btn_sair" runat="server" Text="SAIR" />
</asp:Content>
