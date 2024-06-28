namespace Web_Coffee.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhanVien")]
    public partial class NhanVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhanVien()
        {
            HoaDons = new HashSet<HoaDon>();
            PhieuNhaps = new HashSet<PhieuNhap>();
            Users = new HashSet<User>();
        }

        [Key]
        public int MaNhanVien { get; set; }

        [Required]
        [StringLength(50)]
        public string TenNhanVien { get; set; }

        [Column(TypeName = "date")]
        public DateTime NgaySinh { get; set; }

        public bool GioiTinh { get; set; }

        [Column(TypeName = "date")]
        public DateTime NgayVaoLam { get; set; }

        public int ChucVu { get; set; }

        [Required]
        [StringLength(50)]
        public string DiaChi { get; set; }

        [Required]
        [StringLength(11)]
        public string SoDT { get; set; }

        [StringLength(255)]
        public string GhiChu { get; set; }

        public virtual ChucVu ChucVu1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDon> HoaDons { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuNhap> PhieuNhaps { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<User> Users { get; set; }
    }
}
