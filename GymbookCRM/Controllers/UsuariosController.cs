using GymbookCRM.Models;
using GymbookCRM.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace GymbookCRM.Controllers
{
    public class UsuariosController : Controller
    {

        private RepositoryUsuarios repo;

        public UsuariosController(RepositoryUsuarios repo)
        {
            this.repo = repo;
        }
        public async Task<IActionResult> Index()
        {
            List<Usuario> usuarios = await this.repo.GetUsuariosAsync();
            return View(usuarios);
        }
    }
}
