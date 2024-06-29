using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using Web_Coffee.Models;

namespace Web_Coffee.Controllers
{
    public class ShoppingCartController : Controller
    {
        private QuanlybanCafeRuNam db = new QuanlybanCafeRuNam();

        // GET: ShoppingCart
        [Authorize]
        public ActionResult Index()
        {
            var cart = Session["Cart"] as List<SanPham> ?? new List<SanPham>();
            return View(cart);
        }

        // Add to Cart Action
        [HttpPost]
        public ActionResult AddToCart(int id)
        {
            var product = db.SanPhams.Find(id);
            if (product != null)
            {
                var cart = Session["Cart"] as List<SanPham> ?? new List<SanPham>();

                // Add product to cart
                cart.Add(product);

                // Save cart back to session
                Session["Cart"] = cart;

                // Calculate total items in cart
                int cartItemCount = cart.Count;

                // Set ViewBag for cart item count (for use in view)
                ViewBag.CartItemCount = cartItemCount;
            }

            return RedirectToAction("Index");
        }


        // Remove from Cart Action
        public ActionResult RemoveFromCart(int id)
        {
            var cart = Session["Cart"] as List<SanPham>;
            if (cart != null)
            {
                var itemToRemove = cart.FirstOrDefault(x => x.MaSanPham == id);
                if (itemToRemove != null)
                {
                    cart.Remove(itemToRemove);
                    Session["Cart"] = cart;
                }
            }
            return RedirectToAction("Index");
        }
        public int CountCartItems()
        {
            var cart = Session["Cart"] as List<SanPham>;
            if (cart != null && cart.Any())
            {
                return cart.Count;
            }
            return 0; // Return 0 if cart is null or empty
        }


        // Trong ShoppingCartController.cs

        //public ActionResult Checkout()
        //{
        //    // Hiển thị popup thanh toán
        //    return PartialView("_CheckoutPopup");
        //}

        [HttpPost]
        public ActionResult ProcessCheckout()
        {
            var cart = Session["Cart"] as List<SanPham>;

            if (cart != null && cart.Count > 0)
            {
                try
                {
                    var userId = User.Identity.GetUserId(); // Assuming this retrieves the user ID

                    // Create a new HoaDon (Invoice) object
                    var hoaDon = new HoaDon
                    {
                        MaKhachHang = 10, // Assign the logged-in user's ID
                        MaNhanVien = 1, // Replace with actual employee ID
                        NgayLapHoaDon = DateTime.Now,
                        TongTien = cart.Sum(item => item.GiaBan), // Calculate total price from cart
                        GhiChu = "Checkout from shopping cart"
                    };

                    // Add the invoice to the database
                    db.HoaDons.Add(hoaDon);
                    db.SaveChanges(); // Save changes to the database to get the invoice ID

                    // Loop through each item in the cart and create a ChiTietHoaDon (Invoice Detail)
                    foreach (var item in cart)
                    {
                        var chiTietHoaDon = new ChiTietHoaDon
                        {
                            MaHoaDon = hoaDon.MaHoaDon, // Assign the invoice ID
                            MaSanPham = item.MaSanPham,
                            SoLuong = 1, // Assuming each item is added once
                            TongTien = item.GiaBan,
                            GhiChu = "Detail for invoice"
                        };

                        db.ChiTietHoaDons.Add(chiTietHoaDon); // Add detail to the database
                    }

                    db.SaveChanges(); // Save changes to the database

                    // Clear the cart after successful checkout
                    Session["Cart"] = null;

                    // Display success message
                    ViewBag.Message = "Checkout successful!";
                }
                catch (Exception ex)
                {
                    // Log or handle any exceptions appropriately
                    ViewBag.Message = "An error occurred during checkout.";
                    // Optionally log the exception for debugging
                    // Log.Error("Error during checkout", ex);
                }
            }
            else
            {
                // Display error message if cart is empty
                ViewBag.Message = "Your cart is empty!";
            }

            // Redirect to the home page or a confirmation page
            return RedirectToAction("Index", "Home");
        }




    }
}
