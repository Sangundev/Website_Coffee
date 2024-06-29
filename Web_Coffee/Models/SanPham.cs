namespace Web_Coffee.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            ChiTietHoaDons = new HashSet<ChiTietHoaDon>();
        }
        
        [Key]
        public int MaSanPham { get; set; }

        [Required]
        [StringLength(50)]
        public string TenSanPham { get; set; }

        public int MaLoaiSanPham { get; set; }

        public int GiaBan { get; set; }

        [Column(TypeName = "text")]
        [Required]
        public string Hinhanh { get; set; }

        [StringLength(255)]
        public string ChuThich { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHoaDon> ChiTietHoaDons { get; set; }

        public virtual LoaiSanPham LoaiSanPham { get; set; }
    }
}
