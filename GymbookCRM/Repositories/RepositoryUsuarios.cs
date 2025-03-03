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

        public async Task RegisterEntrenadorAsync(string nombre, string apellido, string correo, string password, string imagen)
        {
            // Genera el salt y cifra la contraseña
            var salt = HelperCryptography.GenerateSalt();
            var passwordEncrypted = HelperCryptography.EncryptPassword(password, salt);

            // Prepara el string SQL para llamar al procedimiento almacenado sp_InsertEntrenador
            string sql = "EXEC sp_InsertEntrenador @Nombre = {0}, @Apellido = {1}, @Correo = {2}, @Password = {3}, @Salt = {4}, @Imagen = {5}";

            // Ejecuta el procedimiento pasando los parámetros correspondientes
            await this.context.Database.ExecuteSqlRawAsync(sql, nombre, apellido, correo, passwordEncrypted, salt, imagen);
        }

        public async Task RegisterClienteAsync(string nombre, string apellido, string correo, string password, string imagen, int idEntrenador)
        {
            // Genera el salt y cifra la contraseña
            var salt = HelperCryptography.GenerateSalt();
            var passwordEncrypted = HelperCryptography.EncryptPassword(password, salt);

            // Prepara el string SQL para llamar al procedimiento almacenado sp_InsertCliente
            string sql = "EXEC sp_InsertCliente @Nombre = {0}, @Apellido = {1}, @Correo = {2}, @Password = {3}, @Salt = {4}, @Imagen = {5}, @IdEntrenador = {6}";

            // Ejecuta el procedimiento pasando los parámetros correspondientes
            await this.context.Database.ExecuteSqlRawAsync(sql, nombre, apellido, correo, passwordEncrypted, salt, imagen, idEntrenador);
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
