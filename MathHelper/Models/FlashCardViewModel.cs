using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Globalization;
using System.Web.Security;

namespace MathHelper.UI.Models
{
    public class FlashCardViewModel
    {
        public int FirstNumber { get; set; }
        public int SecondNumber { get; set; }
        public int MathSymbol { get; set; }
        public bool CorrectAnswer { get; set; }
        public int MaxNumber { get; set; }
        [Required]
        public int? Answer { get; set; }
    }
}