﻿using Microsoft.EntityFrameworkCore;
using PartidasApi.Models;

namespace PartidasApi.Data
{
    public class Context : DbContext
    {
        public Context(DbContextOptions<Context> options) : base(options)
        {
        }

        public DbSet<Match> Match { get; set; }
        public DbSet<LogMatch> LogMatch { get; set; }
        public DbSet<YellowCards> YellowCards { get; set; }
        public DbSet<RedCards> RedCards { get; set; }
        public DbSet<Goals> Goals { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Match>()
                .HasKey(m => m.MatchId);

            modelBuilder.Entity<Match>()
                .HasOne(m => m.Stadium)
                .WithMany()
                .HasForeignKey(m => m.StadiumId);

            modelBuilder.Entity<Match>()
                .HasOne(m => m.Referee)
                .WithMany()
                .HasForeignKey(m => m.RefereeId);

            modelBuilder.Entity<Match>()
                .HasOne(m => m.MasterTeam)
                .WithMany()
                .HasForeignKey(m => m.MasterTeamId);

            modelBuilder.Entity<Match>()
                .HasOne(m => m.AwayTeam)
                .WithMany()
                .HasForeignKey(m => m.AwayTeamId);

            modelBuilder.Entity<Match>()
                .HasOne(m => m.LogMatch)
                .WithMany()
                .HasForeignKey(m => m.LogMatchId);

            modelBuilder.Entity<LogMatch>().ToTable("LogMatch").HasKey("LogMatchId");
            modelBuilder.Entity<YellowCards>().ToTable("YellowCards").HasKey("YellowCardsId");
            modelBuilder.Entity<RedCards>().ToTable("RedCards").HasKey("RedCardsId");
            modelBuilder.Entity<Goals>().ToTable("Goals").HasKey("GoalsId");

            base.OnModelCreating(modelBuilder);
        }
    }
}