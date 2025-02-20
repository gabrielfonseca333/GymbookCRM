using Microsoft.AspNetCore.Mvc;

namespace GymbookCRM.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
