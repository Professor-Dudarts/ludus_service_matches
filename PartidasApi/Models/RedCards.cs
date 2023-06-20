using System.ComponentModel.DataAnnotations;

namespace PartidasApi.Models
{
    public class RedCards
    {
        [Key]
        public int RedCardsId { get; set; }
        public int LogMatchId { get; set; }
        public int PlayerId { get; set; }

        public virtual LogMatch LogMatch { get; set; }
        public virtual Player Player { get; set; }
    }
}
