namespace Web_Coffee.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietPhieuNhap")]
    public partial class ChiTietPhieuNhap
    {
        [Key]
        public int MaCTPN { get; set; }

        public int MaPhieuNhap { get; set; }

        [Required]
        [StringLength(50)]
        public string TenNVL { get; set; }

        public int SoLuong { get; set; }

        [Required]
        [StringLength(20)]
        public string Dvt { get; set; }

        public int Gia { get; set; }

        public int TongTien { get; set; }

        [StringLength(255)]
        public string ChuThich { get; set; }

        public virtual PhieuNhap PhieuNhap { get; set; }
    }
}
