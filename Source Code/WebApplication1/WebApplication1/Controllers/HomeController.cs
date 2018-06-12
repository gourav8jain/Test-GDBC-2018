using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        /// <summary>
        /// Indexes this instance.
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            var result = new ArtistsContext();
            var testArtist = result.TestArtists.ToList().FirstOrDefault();
            var model = new TestArtistModel
            {
                Id = testArtist.Id,
                Name = testArtist.Name
            };
            return View(model);
        }
    }
}