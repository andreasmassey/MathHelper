<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MathHelper.Master" Inherits="System.Web.Mvc.ViewPage<MathHelper.UI.Models.FlashCardViewModel>" %>
<%@ Import Namespace="MathHelper.UI" %>
<%@ Import Namespace="MathHelper.UI.Controllers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="/Style/FlashCard.css" type="text/css" />
    <script src="<%= Url.Content("~/Scripts/FlashCard.js") %>" type="text/javascript"></script>
    <script src="<%= Url.Content("~/Scripts/jquery.simplemodal-1.4.4.js") %>" type="text/javascript" charset="utf-8"></script>
    
    <script type="text/javascript">
        $(function () {
            $('input[type=text]').focus(function () {
                $(this).val('');
                $(this).css('color', 'black');
            });
        });
        </script>
    <div id="ContentPlaceHolder">
        <div class="Options-Button">
            <%= Html.Button(ButtonHelpers.Buttons.Options, "ShowPopUp", "Options", "Options", 30, "ShowPopUp(" + Model.MathSymbol + "," + Model.MaxNumber + ");")%>
        </div>
        <% using (Html.BeginForm())  { %>
        <div id="FlashCardContainer">  
                    <%: Html.HiddenFor(m => m.FirstNumber) %>
                    <%: Html.HiddenFor(m => m.MathSymbol) %>
                    <%: Html.HiddenFor(m => m.SecondNumber) %>
                    <%: Html.HiddenFor(m => m.MaxNumber) %>
                <div id="FlashCardTop">
                    <div class="FirstNumber"><%=Model.FirstNumber %></div>
                    <div class="MathSymbol">
                        <% switch (Model.MathSymbol)
                           {
                               case 1:
                                   %> + <%
                                   break;
                               case 2:
                                   %> - <%
                                   break;
                               case 3:
                                   %> x <%
                                   break;
                               case 4:
                                   %> / <%
                                   break;
                               case 5:
                                   %> / <%
                                   break;
                           }
                        %>
                    </div>
                    <div class="SecondNumber"><%=Model.SecondNumber %></div>
                </div>
                <hr/>                 
                 <div class="Validation"><%=Html.ValidationMessageFor(m => m.Answer) %></div>
            <%if (!Model.CorrectAnswer && Model.Answer != null)
                  { %>
                    <div><%=Html.TextBoxFor(m => m.Answer, new { @class = "WrongAnswer" , @placeholder = "#####", Autocomplete = "off" })  %></div>
                 <% }
                 else { %> 
                    <div><%=Html.TextBoxFor(m => m.Answer, new { @class = "Answer" , @placeholder = "#####", Autocomplete = "off" })  %></div>   
                <% } %>   
           <%= Html.Button(ButtonHelpers.Buttons.Submit, "CheckAnswer", "Submit", "Submit", 50, "CheckAnswer()")%>
        </div>
        <% } %>
    </div>
</asp:Content>