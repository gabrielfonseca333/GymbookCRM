using GymbookCRM.Models;
using GymbookCRM.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace GymbookCRM.Controllers
{
    public class ClientesController : Controller
    {

        private RepositoryUsuarios repo;

        public ClientesController(RepositoryUsuarios repo)
        {
            this.repo = repo;
        }

        public async Task<IActionResult> Index()
        {
            List<Usuario> clientes = await this.repo.GetClientesAsync();
            return View(clientes);
        }
    }
}
