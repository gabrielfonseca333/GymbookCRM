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
    }
}
