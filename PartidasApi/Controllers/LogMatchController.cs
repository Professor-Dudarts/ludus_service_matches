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
    public class LogMatchController : Controller
    {
        private readonly Context _context;

        public LogMatchController(Context context)
        {
            _context = context;
        }

        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            try
            {
                IEnumerable<LogMatch> LogMatches = _context.LogMatch.ToList();


                if(LogMatches == null || LogMatches.Count() == 0)
                {
                    return NotFound();
                }
                else
                {
                    return Ok(new { LogMatches = LogMatches });
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
                LogMatch LogMatch = _context.LogMatch.FirstOrDefault(m => m.LogMatchId == id);

                if (LogMatch == null)
                {
                    return NotFound();
                }
                else
                {
                    return Ok(new { LogMatches = LogMatch });
                }
            }
            catch (Exception e)
            {
                return BadRequest(e);
            }
        }

        [HttpPost("Add")]
        public IActionResult Add(LogMatch logMatch)
        {
            try
            {
                if (RequiredItensIsOk(logMatch))
                {
                    _context.LogMatch.Add(logMatch);
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
         public IActionResult Update(LogMatch logMatch)
         {
             try
             {
                 var update = _context.LogMatch.SingleOrDefault(s => s.LogMatchId == logMatch.LogMatchId);

                 if (RequiredItensIsOk(logMatch))
                 {
                     update.MatchId = logMatch.MatchId;
                     update.WinnerTeamId = logMatch.WinnerTeamId;
                     update.MatchDescription = logMatch.MatchDescription;

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

         private bool RequiredItensIsOk(LogMatch logMatch)
         {
            return logMatch.MatchId != 0
                || logMatch.WinnerTeamId != 0
                || !String.IsNullOrEmpty(logMatch.MatchDescription);
         }

        [HttpDelete("Delete/{id}")]
        public void Delete(int id)
        {
            var delete = _context.LogMatch.Find(id);
            if (delete != null)
            {
                _context.LogMatch.Remove(delete);

                _context.SaveChanges();
            }
        }
    }
}
