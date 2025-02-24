using GymbookCRM.Models;
using GymbookCRM.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace GymbookCRM.Controllers
{
    public class PlanesEntrenamientoController : Controller
    {

        private RepositoryEntrenamientos repo;

        public PlanesEntrenamientoController(RepositoryEntrenamientos repo)
        {
            this.repo = repo;
        }
        public async Task<IActionResult> Index()
        {
            List<PlanEntrenamiento> planesEntrenamiento = await this.repo.GetEntrenamientosAsync(); 
            return View(planesEntrenamiento);
        }



    }
}
