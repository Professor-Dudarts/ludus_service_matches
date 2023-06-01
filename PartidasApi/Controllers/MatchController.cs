using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PartidasApi.Data;
using PartidasApi.Models;

namespace PartidasApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class MatchController : Controller
    {
        private readonly Context _context;

        public MatchController(Context context)
        {
            _context = context;
        }

        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            try
            {
                IEnumerable<Match> matches = _context.Match
                                                     .Include(m => m.Stadium)
                                                     .Include(m => m.Referee)
                                                     .Include(m => m.MasterTeam)
                                                     .Include(m => m.AwayTeam)
                                                     .Include(m => m.LogMatch)
                                                     .ToList();

                if (matches == null || matches.Count() == 0)
                {
                    return NotFound();
                }
                else
                {
                    return Ok(new { matches = matches });
                }
            }
            catch (Exception e)
            {
                return BadRequest(e);
            }
        }

        [HttpGet("GetById/{id}")]
        public IActionResult GetById(int id)
        {
            try
            {
                Match match = _context.Match.Include(m => m.Stadium)
                                   .Include(m => m.Referee)
                                   .Include(m => m.MasterTeam)
                                   .Include(m => m.AwayTeam)
                                   .Include(m => m.LogMatch)
                                   .Where(w => w.Ativo == true)
                                   .FirstOrDefault(m => m.MatchId == id);

                if (match != null)
                {
                    return Ok(new { match = match });
                }
                else
                {
                    return NotFound();
                }

            }
            catch (Exception e)
            {
                return BadRequest(e);
            }
        }

        [HttpPost("Add")]
        public IActionResult Add(Match match)
        {
            try
            {
                if (RequiredItensIsOk(match))
                {
                    if ((match.LogMatchId != 0 || match.LogMatchId != null) && match.Date >= DateTime.Now)
                    {
                        return BadRequest(new { message = "Não foi possivel incluir o log desta partida pois ela ainda não ocorreu", status = "danger" });
                    }

                    match.LogMatchId = match.LogMatchId == 0 ? null : match.LogMatchId;

                    _context.Match.Add(match);
                    _context.SaveChanges();

                    return Ok(new { message = "Registro adicionado com sucesso!", status = "success" });
                }
                else
                {
                    return BadRequest(new { message = "Preencha os campos obrigatorios", status = "danger" });
                }
            }
            catch (Exception)
            {
                return BadRequest(new { message = "Ouve um erro ao adicionar o registro", status = "danger" });
            }

        }

        [HttpPut("Update")]
        public IActionResult Update(Match match)
        {
            try
            {
                var update = _context.Match.SingleOrDefault(s => s.MatchId == match.MatchId);

                if (RequiredItensIsOk(match))
                {
                    update.StadiumId = match.StadiumId;
                    update.RefereeId = match.RefereeId;
                    update.MasterTeamId = match.MasterTeamId;
                    update.AwayTeamId = match.AwayTeamId;
                    update.Ativo = match.Ativo;
                    update.Date = match.Date;
                   

                    if ((match.LogMatchId == 0 || match.LogMatchId != null) && update.Date >= DateTime.Now)
                    {
                        return BadRequest(new { message = "Não foi possivel incluir o log desta partida, pois ela ainda não ocorreu", status = "danger" });
                    }

                    _context.Entry(update).CurrentValues.SetValues(update);
                    _context.SaveChanges();

                    return Ok(new { message = "Registro atualizado com sucesso!", status = "success" });

                }
                else
                {
                    return BadRequest(new { message = "Preencha os campos obrigatorios", status = "danger" });
                }
            }
            catch (Exception)
            {
                return BadRequest(new { message = "Ouve um erro ao editar o registro", status = "danger" });
            }
        }

        private bool RequiredItensIsOk(Match match)
        {
            return match.RefereeId != 0 && match.StadiumId != 0 && match.MasterTeamId != 0 && match.AwayTeamId != 0 && !String.IsNullOrEmpty(match.Date.ToString());
        }

        [HttpDelete("Delete/{id}")]
        public IActionResult Delete(int id)
        {
            var update = _context.Match.Find(id);

            if (update == null)
            {
                return NotFound();
            }
            else
            {
                update.Ativo = false;
                _context.Entry(update).CurrentValues.SetValues(update);
                _context.SaveChanges();

                return Ok(new { message = "Registro excluido com sucesso", status = "danger" });
            }
        }
    }
}
