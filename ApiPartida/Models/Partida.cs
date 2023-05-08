using System;

namespace ApiPartida.Models
{
    public class Partida
    {
        public int Id { get; set; }
        public DateTime Data { get; set; }
        public TimeSpan Horario { get; set; }
        public int TimeMandanteId { get; set; }
        public int TimeVisitanteId { get; set; }
        public int EstadioId { get; set; }
        public int ArbitroId { get; set; }
        public string Resultado { get; set; }
    }
}
