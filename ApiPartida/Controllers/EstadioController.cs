using System.Collections.Generic;
using System.Linq;
using ApiPartida.Models;
using Microsoft.AspNetCore.Mvc;
using wesco_site.Data;

namespace ApiPartida.Controllers
{
    public class EstadioController : Controller
    {
        private readonly Context _context;

        public EstadioController(Context context)
        {
            _context = context;
        }

        public List<Estadio> Listar()
        {
            return _context.Estadio.ToList();
        }

        public Estadio Obter(int id)
        {
            return _context.Estadio.FirstOrDefault(e => e.Id == id);
        }

        public void Adicionar(Estadio estadio)
        {
            _context.Estadio.Add(estadio);
            _context.SaveChanges();
        }

        public void Atualizar(Estadio estadioAtualizado)
        {
            var estadioAntigo = Obter(estadioAtualizado.Id);

            if (estadioAntigo != null)
            {
                estadioAntigo.Nome = estadioAtualizado.Nome;
                estadioAntigo.Localizacao = estadioAtualizado.Localizacao;
                estadioAntigo.Capacidade = estadioAtualizado.Capacidade;

                _context.SaveChanges();
            }
        }

        public void Remover(int id)
        {
            var estadio = Obter(id);

            if (estadio != null)
            {
                _context.Estadio.Remove(estadio);
                _context.SaveChanges();
            }
        }
    }
}
