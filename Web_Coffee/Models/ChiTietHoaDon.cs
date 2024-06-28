namespace Web_Coffee.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietHoaDon")]
    public partial class ChiTietHoaDon
    {
        [Key]
        public int MaCTHD { get; set; }

        public int MaHoaDon { get; set; }

        public int MaSanPham { get; set; }

        public int SoLuong { get; set; }

        public int TongTien { get; set; }

        [StringLength(255)]
        public string GhiChu { get; set; }

        public virtual HoaDon HoaDon { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
