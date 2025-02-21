using GymbookCRM.Data;
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
        public async Task<List<Usuario>> GetUsuariosAsync ()
        {
            var consulta = from datos in this.context.Usuarios
                           select datos;
            return await consulta.ToListAsync();
        }

        //quiero uno que me traigan los usuarios con rol Cliente
        public async Task<List<Usuario>> GetClientesAsync()
        {
            var consulta = from datos in this.context.Usuarios
                           where datos.Rol == "cliente"
                           select datos;
            return await consulta.ToListAsync();
        }
    }
}
