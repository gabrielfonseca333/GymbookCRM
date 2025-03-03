

using System.Drawing;
using System.Drawing.Imaging;

namespace GymbookCRM.Helpers
{
    public class HelperAvatar
    {

        //1. Generamos colores random
        public static string GetRandomColor()
        {
            // Definir la paleta de 7 colores
            string[] paleta = new string[]
            {
        "#FF5733", // rojo anaranjado
        "#33FF57", // verde
        "#3357FF", // azul
        "#F333FF", // rosa fuerte
        "#33FFF3", // turquesa
        "#F3FF33", // amarillo
        "#FF33F3"  // rosa claro
            };

            Random rnd = new Random();
            return paleta[rnd.Next(paleta.Length)];
        }



        // 2. Obtiene las iniciales usando el Nombre y Apellido del usuario
        public static string GetInitials(string nombre, string apellido)
        {
            // Toma la primera letra de cada uno, en mayúsculas
            string inicial = string.Empty;
            if (!string.IsNullOrEmpty(nombre))
            {
                inicial += char.ToUpper(nombre[0]);
            }
            if (!string.IsNullOrEmpty(apellido))
            {
                inicial += char.ToUpper(apellido[0]);
            }
            return inicial;
        }

        //3. Genera la imagen
        public static byte[] GenerateAvatar(string initials, string colorHex = null, int width = 150, int height = 150)
        {
            // Si no se especifica un color, selecciona uno al azar
            if (string.IsNullOrEmpty(colorHex))
            {
                colorHex = GetRandomColor();
            }

            using (Bitmap bitmap = new Bitmap(width, height))
            {
                using (Graphics g = Graphics.FromImage(bitmap))
                {
                    Color bgColor = ColorTranslator.FromHtml(colorHex);
                    g.Clear(bgColor);

                    using (Font font = new Font("Arial", 50, FontStyle.Bold, GraphicsUnit.Pixel))
                    {
                        SizeF textSize = g.MeasureString(initials, font);
                        float x = (width - textSize.Width) / 2;
                        float y = (height - textSize.Height) / 2;
                        g.DrawString(initials, font, Brushes.White, x, y);
                    }
                }

                using (MemoryStream ms = new MemoryStream())
                {
                    bitmap.Save(ms, ImageFormat.Png);
                    return ms.ToArray();
                }
            }
        }




    }
}
