using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace GymbookCRM.Models
{
    public class Entrenador
    {
        [Key, ForeignKey("Usuario")]
        public int IdEntrenador { get; set; }

        public Usuario Usuario { get; set; }
    }
}
