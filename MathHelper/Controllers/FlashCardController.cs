using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MathHelper.Component.Common;
using MathHelper.UI.Models;
using MathHelper.Component;

namespace MathHelper.UI.Controllers
{
    public class FlashCardController : Controller
    {
        private Random _random {get; set;}
        //
        // GET: /FlashCard/

        [HttpGet]
        public ActionResult FlashCardIndex()
        {
            FlashCardViewModel model = new FlashCardViewModel();

            if (_random == null) 
            {
                _random = new Random();
            }

            //model.CorrectAnswer = false;
            model.MaxNumber= 10;
            model.FirstNumber = RandomNumber(_random);
            model.SecondNumber = RandomNumber(_random);
            model.MathSymbol = (int)Enumeration.Symbol.Plus;

            return View(model);
        }

        [HttpPost]
        //[OutputCache(NoStore = true, Duration = 0, VaryByParam = "*")]
        public ActionResult CheckAnswer(FlashCardViewModel model)
        {
            if (ModelState.IsValid)
            {
                if (model.Answer == CorrectAnswer(model))
                {
                    model.CorrectAnswer = true;
                    _random = new Random();

                    ModelState.Clear();
                    model.FirstNumber = RandomNumber(_random, model.MaxNumber);
                    model.SecondNumber = RandomNumber(_random, model.MaxNumber);

                    while (model.SecondNumber > model.FirstNumber)
                    {
                        model.SecondNumber = RandomNumber(_random, model.MaxNumber);
                    }

                    model.Answer = null;

                    return View("FlashCardIndex", model);
                }
                else
                {
                    model.CorrectAnswer = false;
                    return View("FlashCardIndex", model);
                }
            }
            return View("FlashCardIndex", model);
        }

        [HttpPost]
        [OutputCache(NoStore = true, Duration = 0, VaryByParam = "*")]
        public ActionResult SaveOptions(FlashCardViewModel model)
        {
            //var model = new FlashCardViewModel();
            _random = new Random();
            ModelState.Clear();
            model.FirstNumber = RandomNumber(_random, model.MaxNumber);
            model.SecondNumber = RandomNumber(_random, model.MaxNumber);
            model.Answer = null;
            return View("FlashCardIndex", model);
        }

        [HttpPost]
        public ActionResult Options(FlashCardViewModel model)
        {
            return View("Options", model);
        }

        private int RandomNumber(Random random, int maxNumber = 10) 
        {
            return random.Next(0, maxNumber);  
      
        }

        private int CorrectAnswer(FlashCardViewModel model)
        {
            switch (model.MathSymbol)
            {
                case (int)Enumeration.Symbol.Plus:
                    return model.FirstNumber + model.SecondNumber;
                case (int)Enumeration.Symbol.Minus:
                    return model.FirstNumber - model.SecondNumber;
                case (int)Enumeration.Symbol.Multiply:
                    return model.FirstNumber * model.SecondNumber;
                default:
                    return model.FirstNumber / model.SecondNumber;
            }
        }
    }
}
