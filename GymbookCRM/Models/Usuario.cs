using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GymbookCRM.Models
{
    [Table("USUARIOS")]
    public class Usuario
    {
        [Key]
        [Column("IDUSUARIO")]
        public int IdUsuario { get; set; }

        [Column("NOMBRE")]
        public string Nombre { get; set; }

        [Column("APELLIDO")]
        public string Apellido { get; set; }

        [Column("CORREO")]
        public string Correo { get; set; }

        [Column("ROL")]
        public string Rol { get; set; } // "Cliente" o "Entrenador"

        [Column("IMAGEN")]
        public string Imagen { get; set; }

        [Column("SALT")]
        public string Salt { get; set; }

        [Column("PASS")]
        public byte[] Password { get; set; }
    }
}
