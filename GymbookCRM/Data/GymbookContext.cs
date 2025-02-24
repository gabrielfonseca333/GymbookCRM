using GymbookCRM.Models;
using Microsoft.EntityFrameworkCore;

namespace GymbookCRM.Data
{
    public class GymbookContext: DbContext
    {
        public GymbookContext(DbContextOptions<GymbookContext> options)
            : base(options) 
        { }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<PlanEntrenamiento> PlanesEntrenamiento{ get; set; }


    }
}
