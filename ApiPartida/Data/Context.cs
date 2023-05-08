using Microsoft.EntityFrameworkCore;
using ApiPartida.Models;

namespace wesco_site.Data
{
    public class Context : DbContext
    {
        public Context(DbContextOptions<Context> options) : base(options)
        {
        }

        public DbSet<Partida> Partida { get; set; }
        public DbSet<Arbitro> Arbitro { get; set; }
        public DbSet<Estadio> Estadio { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Partida>().ToTable("Partida").HasKey("Id");
            modelBuilder.Entity<Arbitro>().ToTable("Arbitro").HasKey("Id");
            modelBuilder.Entity<Estadio>().ToTable("Estadio").HasKey("Id");
        }
    }
}