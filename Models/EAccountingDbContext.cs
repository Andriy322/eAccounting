using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace eAccounting.Models;

public partial class EAccountingDbContext : DbContext
{
    public EAccountingDbContext()
    {
    }

    public EAccountingDbContext(DbContextOptions<EAccountingDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ApproveStatus> ApproveStatuses { get; set; }

    public virtual DbSet<Location> Locations { get; set; }

    public virtual DbSet<Login> Logins { get; set; }

    public virtual DbSet<Organization> Organizations { get; set; }

    public virtual DbSet<Priority> Priorities { get; set; }

    public virtual DbSet<Request> Requests { get; set; }

    public virtual DbSet<RequestType> RequestTypes { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<SupportStatus> SupportStatuses { get; set; }

    public virtual DbSet<User> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=.\\SQLExpress;Database=eAccountingDB;trusted_connection=true;encrypt=true;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<ApproveStatus>(entity =>
        {
            entity.HasKey(e => e.ApproveStatusId).HasName("PK__ApproveS__BBB29B110BDEE569");

            entity.ToTable("ApproveStatus");

            entity.Property(e => e.ApproveStatusId).HasColumnName("ApproveStatus_id");
            entity.Property(e => e.ApproveName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Location>(entity =>
        {
            entity.HasKey(e => e.LocationId).HasName("PK__Location__D2B71C9AF8F519F5");

            entity.ToTable("Location");

            entity.Property(e => e.LocationId).HasColumnName("Location_id");
            entity.Property(e => e.Address)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.City)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Country)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Login>(entity =>
        {
            entity.HasKey(e => e.LoginId).HasName("PK__Login__D78B57AF75432050");

            entity.ToTable("Login");

            entity.Property(e => e.LoginId).HasColumnName("Login_id");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Login1)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("Login_");
            entity.Property(e => e.Password)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Phone)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.RoleId).HasColumnName("Role_id");

            entity.HasOne(d => d.Role).WithMany(p => p.Logins)
                .HasForeignKey(d => d.RoleId)
                .HasConstraintName("FK__Login__Role_id__2E1BDC42");
        });

        modelBuilder.Entity<Organization>(entity =>
        {
            entity.HasKey(e => e.OrganizationId).HasName("PK__Organiza__A6F921FEBEDF4F46");

            entity.ToTable("Organization");

            entity.Property(e => e.OrganizationId).HasColumnName("Organization_id");
            entity.Property(e => e.ApproveDate).HasColumnType("date");
            entity.Property(e => e.ApproveStatusId).HasColumnName("ApproveStatus_id");
            entity.Property(e => e.CreateDate).HasColumnType("date");
            entity.Property(e => e.Details)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.LocationId).HasColumnName("Location_id");
            entity.Property(e => e.LoginId).HasColumnName("Login_id");
            entity.Property(e => e.OrganizationName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.UpdateDate).HasColumnType("date");

            entity.HasOne(d => d.ApproveStatus).WithMany(p => p.Organizations)
                .HasForeignKey(d => d.ApproveStatusId)
                .HasConstraintName("FK__Organizat__Appro__38996AB5");

            entity.HasOne(d => d.Location).WithMany(p => p.Organizations)
                .HasForeignKey(d => d.LocationId)
                .HasConstraintName("FK__Organizat__Locat__36B12243");

            entity.HasOne(d => d.Login).WithMany(p => p.Organizations)
                .HasForeignKey(d => d.LoginId)
                .HasConstraintName("FK__Organizat__Login__37A5467C");
        });

        modelBuilder.Entity<Priority>(entity =>
        {
            entity.HasKey(e => e.PriorityId).HasName("PK__Priority__FF6E0F18F8D27E03");

            entity.ToTable("Priority");

            entity.Property(e => e.PriorityId).HasColumnName("Priority_id");
            entity.Property(e => e.PriorityName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Request>(entity =>
        {
            entity.HasKey(e => e.RequestId).HasName("PK__Requests__E9C0AF0BD3C9777E");

            entity.Property(e => e.RequestId).HasColumnName("Request_id");
            entity.Property(e => e.ApproveStatusId).HasColumnName("ApproveStatus_id");
            entity.Property(e => e.CreateDate).HasColumnType("date");
            entity.Property(e => e.OrganizationId).HasColumnName("Organization_id");
            entity.Property(e => e.PriorityId).HasColumnName("Priority_id");
            entity.Property(e => e.RequestDetails)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.RequestTypeId).HasColumnName("RequestType_id");
            entity.Property(e => e.SupportStatusId).HasColumnName("SupportStatus_id");
            entity.Property(e => e.UpdateDate).HasColumnType("date");
            entity.Property(e => e.UserId).HasColumnName("User_id");

            entity.HasOne(d => d.ApproveStatus).WithMany(p => p.Requests)
                .HasForeignKey(d => d.ApproveStatusId)
                .HasConstraintName("FK__Requests__Approv__3D5E1FD2");

            entity.HasOne(d => d.Organization).WithMany(p => p.Requests)
                .HasForeignKey(d => d.OrganizationId)
                .HasConstraintName("FK__Requests__Organi__403A8C7D");

            entity.HasOne(d => d.Priority).WithMany(p => p.Requests)
                .HasForeignKey(d => d.PriorityId)
                .HasConstraintName("FK__Requests__Priori__3F466844");

            entity.HasOne(d => d.RequestType).WithMany(p => p.Requests)
                .HasForeignKey(d => d.RequestTypeId)
                .HasConstraintName("FK__Requests__Reques__3C69FB99");

            entity.HasOne(d => d.SupportStatus).WithMany(p => p.Requests)
                .HasForeignKey(d => d.SupportStatusId)
                .HasConstraintName("FK__Requests__Suppor__3E52440B");

            entity.HasOne(d => d.User).WithMany(p => p.Requests)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__Requests__User_i__3B75D760");
        });

        modelBuilder.Entity<RequestType>(entity =>
        {
            entity.HasKey(e => e.RequestTypeId).HasName("PK__RequestT__11A58A8E50ECDFAA");

            entity.ToTable("RequestType");

            entity.Property(e => e.RequestTypeId).HasColumnName("RequestType_id");
            entity.Property(e => e.RequestName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.RoleId).HasName("PK__Role__D80BB0930CC337C4");

            entity.ToTable("Role");

            entity.Property(e => e.RoleId).HasColumnName("Role_id");
            entity.Property(e => e.RoleName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<SupportStatus>(entity =>
        {
            entity.HasKey(e => e.SupportStatusId).HasName("PK__SupportS__AAC59EFE10D81E16");

            entity.ToTable("SupportStatus");

            entity.Property(e => e.SupportStatusId).HasColumnName("SupportStatus_id");
            entity.Property(e => e.SupportStatusName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__User___206A9DF852E9870F");

            entity.ToTable("User_");

            entity.Property(e => e.UserId).HasColumnName("User_id");
            entity.Property(e => e.Birthday).HasColumnType("date");
            entity.Property(e => e.CreateDate).HasColumnType("date");
            entity.Property(e => e.FirstName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.LastName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.LocationId).HasColumnName("Location_id");
            entity.Property(e => e.LoginId).HasColumnName("Login_id");
            entity.Property(e => e.MiddleName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.TaxpayerCard)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.UpdateDate).HasColumnType("date");

            entity.HasOne(d => d.Location).WithMany(p => p.Users)
                .HasForeignKey(d => d.LocationId)
                .HasConstraintName("FK__User___Location___32E0915F");

            entity.HasOne(d => d.Login).WithMany(p => p.Users)
                .HasForeignKey(d => d.LoginId)
                .HasConstraintName("FK__User___Login_id__33D4B598");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
