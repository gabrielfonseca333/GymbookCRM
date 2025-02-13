using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace GymbookCRM.Models
{
    
    public class Cliente
    {
        [Key, ForeignKey("Usuario")]
        public int IdCliente { get; set; }

        [Required, ForeignKey("Entrenador")]
        public int IdEntrenador { get; set; }

        public Usuario Usuario { get; set; }
        public Entrenador Entrenador { get; set; }
    }
}
