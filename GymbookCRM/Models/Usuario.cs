using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GymbookCRM.Models
{
    [Table("USUARIOS")]
    public class Usuario
    {
        [Key]
        public int IdUsuario { get; set; }

        [Required]
        public string Nombre { get; set; }

        [Required]
        public string Apellido { get; set; }

        [Required, EmailAddress]
        public string Correo { get; set; }

        [Required]
        public string Contraseña { get; set; }

        [Required]
        public string Rol { get; set; } // "Cliente" o "Entrenador"
    }
}
