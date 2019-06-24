﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Sette.Quattro.Entities;

namespace Sette.Quattro.Migrations
{
    [DbContext(typeof(DBContext))]
    partial class DBContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.2.4-servicing-10062")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Sette.Quattro.Entities.Address", b =>
                {
                    b.Property<int>("AddressId")
                        .ValueGeneratedOnAdd()
                        .HasColumnName("AddressID")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("AddressLine1")
                        .IsRequired()
                        .HasMaxLength(60);

                    b.Property<string>("AddressLine2")
                        .HasMaxLength(60);

                    b.Property<string>("City")
                        .IsRequired()
                        .HasMaxLength(30);

                    b.Property<string>("CountryRegion")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("PostalCode")
                        .IsRequired()
                        .HasMaxLength(15);

                    b.Property<string>("StateProvince")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.HasKey("AddressId");

                    b.ToTable("Address");
                });

            modelBuilder.Entity("Sette.Quattro.Entities.Customer", b =>
                {
                    b.Property<int>("CustomerId")
                        .ValueGeneratedOnAdd()
                        .HasColumnName("CustomerID")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CompanyName")
                        .HasMaxLength(128);

                    b.Property<string>("EmailAddress")
                        .HasMaxLength(50);

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.Property<string>("MiddleName")
                        .HasMaxLength(50);

                    b.Property<bool>("NameStyle");

                    b.Property<string>("Phone")
                        .HasMaxLength(25);

                    b.Property<string>("SalesPerson")
                        .HasMaxLength(256);

                    b.Property<string>("Suffix")
                        .HasMaxLength(10);

                    b.Property<string>("Title")
                        .HasMaxLength(8);

                    b.HasKey("CustomerId");

                    b.ToTable("Customer");
                });

            modelBuilder.Entity("Sette.Quattro.Entities.CustomerAddress", b =>
                {
                    b.Property<int>("CustomerId")
                        .HasColumnName("CustomerID");

                    b.Property<int>("AddressId")
                        .HasColumnName("AddressID");

                    b.Property<string>("AddressType")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.HasKey("CustomerId", "AddressId")
                        .HasName("PK_CustomerAddress_CustomerID_AddressID");

                    b.HasIndex("AddressId");

                    b.ToTable("CustomerAddress");
                });

            modelBuilder.Entity("Sette.Quattro.Entities.CustomerAddress", b =>
                {
                    b.HasOne("Sette.Quattro.Entities.Address", "Address")
                        .WithMany("CustomerAddress")
                        .HasForeignKey("AddressId");

                    b.HasOne("Sette.Quattro.Entities.Customer", "Customer")
                        .WithMany("CustomerAddress")
                        .HasForeignKey("CustomerId");
                });
#pragma warning restore 612, 618
        }
    }
}
