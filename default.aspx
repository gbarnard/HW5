<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    </title><link href="stylesheet.css" rel="stylesheet" type="text/css" />


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Grant's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount*:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %*: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        Loan Term (Yrs)*: <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br />
        <br />
        Required fields*<br />
        <br />
        <table>
         <tr>
            <td align="right">&nbsp;</td> <td align="left"><asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
         </td>
        </tr>
        </table>

        <%If Not IsPostBack Then %>
           <!-- This is the first time the page has loaded. There is nothing to display. -->
          <p>Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule _
            calculated for you. </p>
        
           <% Else %>
            <!-- Then the page is in postback so show the monthly payment and payment schedule. -->
                <br />
                      

         

        &nbsp;<br />
        <br />
        <asp:Button ID="btn_clear" runat="server" Text="Clear" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <alternatingRowStyle CssClass="alt" />
        </asp:GridView>

           <%End If%>
        </div>
    </form>
</body>
</html>
