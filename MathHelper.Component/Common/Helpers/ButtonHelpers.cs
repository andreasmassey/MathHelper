using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace MathHelper.UI
{
    public static class ButtonHelpers
    {
        public enum Buttons : short
        {
            Save,
            Delete,
            Print,
            Cancel,
            Submit,
            Options,
        }

        /// <summary>
        /// Create a button with custom text
        /// </summary>
        /// <param name="button">Button type</param>
        /// <param name="id">dom id</param>
        /// <param name="text">custom text to show over the button images</param>
        /// <param name="alt">title text to show on mouseover</param>
        /// <param name="width">pixel width</param>
        /// <param name="onclick">javascript onclick event to fire</param>
        public static string Button(this HtmlHelper helper, Buttons button, string id, string text, string alt,
                                    int width, string onclick, string style = null)
        {
            return Button(helper, button, id, string.Empty, text, alt, width, onclick, style);
        }

        /// <summary>
        /// Create a button with custom text
        /// </summary>
        /// <param name="button">Button type</param>
        /// <param name="id">dom id</param>
        /// <param name="classname">class name</param>
        /// <param name="text">custom text to show over the button images</param>
        /// <param name="alt">title text to show on mouseover</param>
        /// <param name="width">pixel width</param>
        /// <param name="onclick">javascript onclick event to fire</param>
        public static string Button(this HtmlHelper helper, Buttons button, string id, string classname, string text,
                                    string alt, int width, string onclick, string style = null)
        {
            var widthStyle = (width > 0 ? string.Format("min-width:{0}px", width) : "");
            style = string.IsNullOrWhiteSpace(style) ? widthStyle : string.Concat(style, widthStyle);
            var cssClass = string.Concat("Flash-Card-btn-", button.ToString());
            if (!string.IsNullOrWhiteSpace(classname))
                cssClass = string.Concat(cssClass, " ", classname);
            var result = new StringBuilder(300);
            result.AppendFormat(
                "<a href=\"javascript:void[0]\" id=\"{0}\" class=\"{4}\" onclick=\"{1}\" title=\"{2}\" style=\"{3}\">",
                id, onclick, alt, style, cssClass);
            string htmlText = text;
            result.Append(htmlText);
            result.AppendLine("</a>");
            return result.ToString();
        }
    }
}