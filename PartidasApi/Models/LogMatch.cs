using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PartidasApi.Models
{
    public class LogMatch
    {
        public LogMatch()
        {
            Goals = new HashSet<Goals>();
            YellowCards = new HashSet<YellowCards>();
            RedCards = new HashSet<RedCards>();
        }

        [Key]
        public int LogMatchId { get; set; }
        public int MatchId { get; set; }
        public int WinnerTeamId { get; set; }
        public string MatchDescription { get; set; }

        public virtual ICollection<Goals> Goals { get; set; }
        public virtual ICollection<YellowCards> YellowCards { get; set; }
        public virtual ICollection<RedCards> RedCards { get; set; }
    }
}
