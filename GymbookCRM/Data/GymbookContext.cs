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
        public DbSet<Entrenador> Entrenadores { get; set; }
        public DbSet<Cliente> Clientes { get; set; }
        //public DbSet<PlanEntrenamiento> PlanesEntrenamiento { get; set; }
        //public DbSet<Entrenamiento> Entrenamientos { get; set; }
        //public DbSet<Ejercicio> Ejercicios { get; set; }
        //public DbSet<Progreso> Progresos { get; set; }

    }
}
