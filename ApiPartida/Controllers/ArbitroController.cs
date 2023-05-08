using System.Collections.Generic;
using System.Linq;
using ApiPartida.Models;
using Microsoft.AspNetCore.Mvc;
using wesco_site.Data;

namespace ApiPartida.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ArbitroController : Controller
    {
        private readonly Context _context;

        public ArbitroController(Context context)
        {
            _context = context;
        }

        [HttpGet]
        public List<Arbitro> Get()
        {
            return _context.Arbitro.ToList();
        }

        [HttpGet("obter")]
        public Arbitro Obter(int id)
        {
            return _context.Arbitro.FirstOrDefault(a => a.Id == id);
        }

        public void Adicionar(Arbitro arbitro)
        {
            _context.Arbitro.Add(arbitro);
            _context.SaveChanges();
        }

        public void Atualizar(Arbitro arbitroAtualizado)
        {
            var arbitroAntigo = Obter(arbitroAtualizado.Id);

            if (arbitroAntigo != null)
            {
                arbitroAntigo.Nome = arbitroAtualizado.Nome;
                arbitroAntigo.Anos_exp = arbitroAtualizado.Anos_exp;
                arbitroAntigo.Nacionalidade = arbitroAtualizado.Nacionalidade;

                _context.SaveChanges();
            }
        }

        public void Remover(int id)
        {
            var arbitro = Obter(id);

            if (arbitro != null)
            {
                _context.Arbitro.Remove(arbitro);
                _context.SaveChanges();
            }
        }
    }
}
