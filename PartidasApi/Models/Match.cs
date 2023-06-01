using System;
using System.ComponentModel.DataAnnotations;

namespace PartidasApi.Models
{
    public class Match
    {
        public Match()
        {

        }

        [Key]
        public int MatchId { get; set; }
        public int StadiumId { get; set; }
        public int RefereeId { get; set; }
        public int MasterTeamId { get; set; }
        public int AwayTeamId { get; set; }
        public int? LogMatchId { get; set; }
        public bool Ativo { get; set; }
        public DateTime Date { get; set; }

        public virtual Team MasterTeam { get; set; }
        public virtual Team AwayTeam { get; set; }
        public virtual Stadium Stadium { get; set; }
        public virtual Referee Referee { get; set; }
        public virtual LogMatch LogMatch { get; set; }
    }
}
