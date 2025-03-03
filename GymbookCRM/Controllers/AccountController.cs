using GymbookCRM.Helpers;
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

        private void GuardarSesion(Usuario user)
        {
            // Se pasa por parámetro el modelo del usuario y se establece
            // en Session las variables necesarias para guardar la sesión
            HttpContext.Session.SetInt32("UserId", user.IdUsuario);
            HttpContext.Session.SetString("UserName", user.Nombre);
            HttpContext.Session.SetString("UserRole", user.Rol);
            HttpContext.Session.SetString("UserImage", user.Imagen);

        }

        public IActionResult Register()
        {
            return View();
        }

        //[HttpPost]
        //public async Task<IActionResult> Register(string nombre, string apellido, string correo, string rol, string password)
        //{

        //    // Remover cualquier dato anterior en Session (opcional)
        //    HttpContext.Session.Remove("UserName");
        //    HttpContext.Session.Remove("UserImage");
        //    HttpContext.Session.Remove("UserId");



        //    rol = "Entrenador";
        //    await this.repo.RegisterUserAsync(nombre, apellido, correo, rol, password);
        //    ViewBag.Mensaje = "Usuario registrado con exito";
        //    return View();
        //}

        [HttpPost]
        public async Task<IActionResult> Register(string nombre, string apellido, string correo, string rol, string password)
        {
            // 1. Limpiar la sesión de datos previos (opcional)
            HttpContext.Session.Remove("UserName");
            HttpContext.Session.Remove("UserImage");
            HttpContext.Session.Remove("UserId");

            // Generar avatar
            string initials = HelperAvatar.GetInitials(nombre, apellido);
            string colorHex = HelperAvatar.GetRandomColor();
            byte[] avatarBytes = HelperAvatar.GenerateAvatar(initials, colorHex);
            string avatarsFolder = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "assets", "avatars");

            if (!Directory.Exists(avatarsFolder))
            {
                Directory.CreateDirectory(avatarsFolder);
            }
            string avatarFileName = $"{Guid.NewGuid()}.png";
            string avatarFilePath = Path.Combine(avatarsFolder, avatarFileName);
            System.IO.File.WriteAllBytes(avatarFilePath, avatarBytes);
            string avatarUrl = $"/assets/avatars/{avatarFileName}";


            // Registrar en la BD
            await this.repo.RegisterEntrenadorAsync(nombre, apellido, correo, password, avatarUrl);

            ViewBag.Mensaje = "Usuario registrado con éxito";
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
                this.GuardarSesion(user);

                return RedirectToAction("Index", "Dashboard");
            }
        }
    }
}
