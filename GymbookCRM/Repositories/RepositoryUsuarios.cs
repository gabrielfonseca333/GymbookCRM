using GymbookCRM.Data;
using GymbookCRM.Helpers;
using GymbookCRM.Models;
using Microsoft.EntityFrameworkCore;

namespace GymbookCRM.Repositories
{
    public class RepositoryUsuarios
    {
        private GymbookContext context;
        public RepositoryUsuarios(GymbookContext context)
        {
            this.context = context;
        }

        //METODOS
        public async Task<List<Usuario>> GetUsuariosAsync()
        {
            var consulta = from datos in this.context.Usuarios
                           select datos;
            return await consulta.ToListAsync();
        }

        public async Task<List<Usuario>> GetClientesAsync()
        {
            var consulta = from datos in this.context.Usuarios
                           where datos.Rol == "cliente"
                           select datos;
            return await consulta.ToListAsync();
        }

        public async Task<Usuario> GetUsuarioById(int? idusuario)
        {
            if (idusuario == null)
            {
                return null;
            }

            var consulta = from datos in this.context.Usuarios
                           where datos.IdUsuario == idusuario
                           select datos;
            return await consulta.FirstOrDefaultAsync();
        }


        //Login & Register
        private async Task<int> GetMaxIdUser()
        {
            if (this.context.Usuarios.Count() == 0)
            {
                return 1;
            }
            else
            {
                return await this.context.Usuarios.MaxAsync(x => x.IdUsuario) + 1;
            }
        }

        public async Task RegisterUserAsync(string nombre, string apellido, string correo, string rol, string password)
        {
            Usuario user = new Usuario();
            //quitar porque SQL lo genera automaticamente: user.IdUsuario = await this.GetMaxIdUser();
            user.Nombre = nombre;
            user.Apellido = apellido;
            user.Correo = correo;
            user.Rol = rol;
            user.Imagen = "";
            user.Salt = HelperCryptography.GenerateSalt();
            user.Password = HelperCryptography.EncryptPassword(password, user.Salt);
            this.context.Usuarios.Add(user);
            await this.context.SaveChangesAsync();
        }

        public async Task<Usuario> LogInUserAsync(string correo, string password)
        {
            var consulta = from datos in this.context.Usuarios
                           where datos.Correo == correo
                           select datos;

            Usuario user = await consulta.FirstOrDefaultAsync();
            if (user == null) {
                return null;
            }else
            {
                string salt = user.Salt;
                byte[] temp = HelperCryptography.EncryptPassword(password, salt);
                byte[] passBytes = user.Password;
                bool response = HelperCryptography.CompararArrays(temp, passBytes);
                if (response)
                {
                    return user;
                }else
                {
                    return null;
                }
            }
        }




    }
}
