﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Services
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QLCHDoChoiEntities : DbContext
    {
        public QLCHDoChoiEntities()
            : base("name=QLCHDoChoiEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<doChoi> doChois { get; set; }
        public virtual DbSet<HoaDon> HoaDons { get; set; }
        public virtual DbSet<khachHang> khachHangs { get; set; }
        public virtual DbSet<nhanVien> nhanViens { get; set; }
        public virtual DbSet<taiKhoan> taiKhoans { get; set; }
    }
}
