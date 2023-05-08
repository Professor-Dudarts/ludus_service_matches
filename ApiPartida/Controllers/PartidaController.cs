using System.Collections.Generic;
using System.Linq;
using ApiPartida.Models;
using Microsoft.AspNetCore.Mvc;
using wesco_site.Data;

namespace ApiPartida.Controllers
{
    public class PartidaController : Controller
    {
        private readonly Context _context;

        public PartidaController(Context context)
        {
            _context = context;
        }

        public List<Partida> Listar()
        {
            return _context.Partida.ToList();
        }

        public Partida Obter(int id)
        {
            return _context.Partida.FirstOrDefault(p => p.Id == id);
        }

        public void Adicionar(Partida partida)
        {
            _context.Partida.Add(partida);
            _context.SaveChanges();
        }

        public void Atualizar(Partida partidaAtualizada)
        {
            var partidaAntiga = Obter(partidaAtualizada.Id);

            if (partidaAntiga != null)
            {
                partidaAntiga.Data = partidaAtualizada.Data;
                partidaAntiga.Horario = partidaAtualizada.Horario;
                partidaAntiga.TimeMandanteId = partidaAtualizada.TimeMandanteId;
                partidaAntiga.TimeVisitanteId = partidaAtualizada.TimeVisitanteId;
                partidaAntiga.EstadioId = partidaAtualizada.EstadioId;
                partidaAntiga.ArbitroId = partidaAtualizada.ArbitroId;
                partidaAntiga.Resultado = partidaAtualizada.Resultado;

                _context.SaveChanges();
            }
        }

        public void Remover(int id)
        {
            var partida = Obter(id);

            if (partida != null)
            {
                _context.Partida.Remove(partida);
                _context.SaveChanges();
            }
        }
    }
}
