<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MathHelper.UI.Models.FlashCardViewModel>" %>
<%@ Import Namespace="MathHelper.UI" %>

<div id="options-Container">
    <div class="options-container">
        <h2 class="options-title">Options:</h2>
        <div class='options-loading' style='display:none'></div>
        <div class='options-message' style='display:none'></div>
        <form>
            <div id =" options-header" style="border:solid 1px black; background-color: #A0A0A0; width:100%;">Type</div>
            <div id="fcOptions" style="border:solid 1px black; background-color: #E0E0E0; height: 100px; width:100%;">
                <div style="float:left;">
                    <input type="radio" name="group1" value="Milk"> Addition<br />
                    <input type="radio" name="group1" value="Milk"> Subtraction<br />
                    <input type="radio" name="group1" value="Milk"> Multiplication<br />
                    <input type="radio" name="group1" value="Milk"> Division<br />
                </div>
    
    

            </div>
            <div id ="Div2" style="border:solid 1px black; background-color: #A0A0A0; width:100%; margin-top: 20px;">Type</div>
            <div id="Div1" style="border:solid 1px black; background-color: #E0E0E0; height: 150px; width:100%;">test
    
    

            </div>
            <div id="options-buttons" style="float:right">
            <%= Html.Button(ButtonHelpers.Buttons.Submit, "Submit", "Submit", "Submit", 50, "CheckAnswer()")%>
            <%= Html.Button(ButtonHelpers.Buttons.Submit, "Cancel", "Cancel", "Cancel", 50, "modalClose()")%>
            </div>
        </form>
    </div>
</div>
