using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Web_Coffee.Models;

namespace Web_Coffee.Controllers
{
    public class SanPhamssController : Controller
    {
        private QuanlybanCafeRuNam db = new QuanlybanCafeRuNam();

        // GET: SanPhams
        public ActionResult Index()
        {
            var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham);
            return View(sanPhams.ToList());
        }


        // GET: SanPhams/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }


        public ActionResult Search(string searchTerm)
        {
            if (string.IsNullOrEmpty(searchTerm))
            {
                ViewBag.Message = "Vui lòng nhập từ khóa tìm kiếm.";
                return View("SearchResults", new List<SanPham>());
            }

            var searchResults = db.SanPhams
                                  .Include(s => s.LoaiSanPham)
                                  .Where(s => s.TenSanPham.Contains(searchTerm))
                                  .ToList();

            if (!searchResults.Any())
            {
                ViewBag.Message = "Không có sản phẩm nào phù hợp với từ khóa tìm kiếm.";
            }

            return View("SearchResults", searchResults);
        }



        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
