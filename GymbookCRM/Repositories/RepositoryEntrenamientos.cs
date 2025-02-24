using GymbookCRM.Data;
using GymbookCRM.Models;
using Microsoft.EntityFrameworkCore;

namespace GymbookCRM.Repositories
{
    public class RepositoryEntrenamientos
    {
        private GymbookContext context;

        public RepositoryEntrenamientos(GymbookContext context)
        {
            this.context = context;
        }

        //METODOS
        public async Task<List<PlanEntrenamiento>> GetEntrenamientosAsync()
        {
            var consulta = from datos in this.context.PlanesEntrenamiento
                           select datos;
            return await consulta.ToListAsync();
        }

    }
}
