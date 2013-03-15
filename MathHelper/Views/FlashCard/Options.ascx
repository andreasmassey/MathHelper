<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MathHelper.UI.Models.FlashCardViewModel>" %>
<%@ Import Namespace="MathHelper.UI" %>

<div id="options-Container">
    <div class="options-container">
        <%: Html.HiddenFor(m => m.MathSymbol) %>
        <%: Html.HiddenFor(m => m.MaxNumber) %>
        <h2 class="options-title">Options:</h2>
        <div class='options-loading' style='display:none'></div>
        <div class='options-message' style='display:none'></div>
        <form>
            <div id ="options-header" class="Options" style="border:solid 1px black; background-color: #A0A0A0; width:99.5%; padding-left: 3px;">Type</div>
            <div id="fcOptions"  class="Options" style="border:solid 1px black; background-color: #E0E0E0; height: 60px; width:100%;">
                <div id="Options-Math-Symbol"class="options-wrapper">
                    <div class="options-addition">Addition: </div>
                    <div class="options-type">
                        <%=Html.RadioButtonFor(i => Model.MathSymbol, 1, new { @class = "Addition" }) %>
                    </div>
                    <div class="options-type-name">Subtraction: </div>
                    <div class="options-type">
                        <%=Html.RadioButtonFor(i => Model.MathSymbol, 2, new { @class = "Subtraction" }) %>
                    </div>
                    <div class="options-type-name">Multiplication: </div>
                    <div class="options-type">
                        <%=Html.RadioButtonFor(i => Model.MathSymbol, 3, new { @class = "Multiplication" }) %>
                    </div>   
                    <div class="options-type-name">Division: </div>
                    <div class="options-type">
                        <%=Html.RadioButtonFor(i => Model.MathSymbol, 4, new { @class = "Division" }) %>
                    </div>
                    <div class="options-type-name">Basic Division: </div>
                    <div class="options-type">
                        <%=Html.RadioButtonFor(i => Model.MathSymbol, 5, new { @class = "SimpleDivision" }) %>
                    </div>
                </div>
            </div>
    

            <div id ="options-header"  class="Options" style="border:solid 1px black; background-color: #A0A0A0; width:99.5%; margin-top: 20px; padding-left: 3px;">Difficulty</div>
            <div id="Div1"  class="Options" style="border:solid 1px black; background-color: #E0E0E0; height: 100px; width:100%;">
                <div class="options-wrapper">
                    <div class="options-difficulty-first">1-10: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 10, new { @class = "Ten" }) %>
                    </div>
                    <div class="options-difficulty-name">1-20: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 20, new { @class = "Twenty" }) %>
                    </div>
                    <div class="options-difficulty-name">1-30: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 30, new { @class = "Thirty" }) %>
                    </div>
                    <div class="options-difficulty-name">1-40: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 40, new { @class = "Fourty" }) %>
                    </div>
                    <div class="options-difficulty-name">1-50: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 50, new { @class = "Fifty" }) %>
                    </div>
                </div>
                <div class="options-wrapper">
                    <div class="options-difficulty-first">1-60: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 60, new { @class = "Sixty" }) %>
                    </div>
                    <div class="options-difficulty-name">1-70: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 70, new { @class = "Seventy" }) %>
                    </div>
                    <div class="options-difficulty-name">1-80: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 80, new { @class = "Eighty" }) %>
                    </div>
                    <div class="options-difficulty-name">1-90: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 90, new { @class = "Ninety" }) %>
                    </div>
                    <div class="options-difficulty-last">1-100: </div>
                    <div class="options-difficulty">
                            <%=Html.RadioButtonFor(i => Model.MaxNumber, 100, new { @class = "OneHundred" }) %>
                    </div>
                </div>

            </div>
            <div id="options-buttons"  class="Options" style="float:right">
            <%= Html.Button(ButtonHelpers.Buttons.Submit, "SaveOptions", "simplemodal-close", "Submit", "SaveOptions", 50, "SaveOptions(this)")%>
            <%= Html.Button(ButtonHelpers.Buttons.Submit, "Cancel", "simplemodal-close", "Cancel", "Cancel", 50, "")%>
            </div>
        </form>
    </div>
</div>
