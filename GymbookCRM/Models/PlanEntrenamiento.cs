using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace GymbookCRM.Models
{
    [Table("ENTRENAMIENTOS")]
    public class PlanEntrenamiento
    {
        //tengo en la base de datos IdEntrenamiento, IdPlan, Nombre, Descripcion

        [Key]
        [Column("IDPLAN")]
        public int IdPlanEntrenamiento { get; set; }
        [Column("IDENTRENAMIENTO")]
        public int IdEntrenamiento { get; set; }
        [Column("NOMBRE")]
        public string Nombre { get; set; }
        [Column("DESCRIPCION")]
        public string Descripcion { get; set; }
    }
}
