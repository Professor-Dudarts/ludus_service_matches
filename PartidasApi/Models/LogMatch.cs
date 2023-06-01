using System.ComponentModel.DataAnnotations;

namespace PartidasApi.Models
{
    public class LogMatch
    {
        [Key]
        public int LogMatchId { get; set; }
        public int? MatchId { get; set; }
        public string WinnerTeam { get; set; }
        public int MasterTeamGoals { get; set; }
        public int MasterTeamYellowCards { get; set; }
        public int MasterTeamRedCards { get; set; }
        public int AwayTeamGoals { get; set; }
        public int AwayTeamYellowCards { get; set; }
        public int AwayTeamRedCards { get; set; }
    }
}
