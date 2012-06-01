using System;
using System.Collections.Generic;
using System.Web.Profile;

namespace customCart
{
    public class ShoppingCart
    {
        private List<CartItem> _items = new List<CartItem>();

        public List<CartItem> Items
        {
            get { return _items; }
        }
    }

    public class CartItem
    {
        private string _name;
        private decimal _price;
        //private string _description;

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public decimal Price
        {
            get { return _price; }
            set { _price = value; }
        }

        //public string Description
        //{
        //    get { return _description; }
        //    set { _description = value; }
        //}

        public CartItem() { }

        public CartItem(string name, decimal price/*, string description*/)
        {
            _name = name;
            _price = price;
            //_description = description;
        }
    }
}