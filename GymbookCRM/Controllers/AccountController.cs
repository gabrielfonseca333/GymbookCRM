using GymbookCRM.Models;
using GymbookCRM.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace GymbookCRM.Controllers
{
    public class AccountController : Controller
    {
        private RepositoryUsuarios repo;

        public AccountController(RepositoryUsuarios repo)
        {
            this.repo = repo;
        }

        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Register(string nombre, string apellido, string correo, string rol, string password)
        {
            rol = "Entrenador";
            await this.repo.RegisterUserAsync(nombre, apellido, correo, rol, password);
            ViewBag.Mensaje = "Usuario registrado con exito";
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(string correo, string password)
        {
            Usuario user = await this.repo.LogInUserAsync(correo, password);
            if (user == null)
            {
                ViewBag.Mensaje = "Credenciales incorrectas";
                return View();
            }
            else
            {
                // Guardamos en la sesión la información necesaria
                HttpContext.Session.SetInt32("UserId", user.IdUsuario);
                HttpContext.Session.SetString("UserRole", user.Rol);

                return RedirectToAction("Index", "Dashboard");
            }
        }
    }
}
