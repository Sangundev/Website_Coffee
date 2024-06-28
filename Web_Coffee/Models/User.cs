namespace Web_Coffee.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        public int ID { get; set; }

        public int MaNhanVien { get; set; }

        [Required]
        [StringLength(50)]
        public string TenDangNhap { get; set; }

        [Required]
        [StringLength(50)]
        public string Password { get; set; }

        public int Quyen { get; set; }

        [StringLength(255)]
        public string ChuThich { get; set; }

        public virtual NhanVien NhanVien { get; set; }

        public virtual Quyen Quyen1 { get; set; }
    }
}
