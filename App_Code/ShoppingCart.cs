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
        private string _itemPic;
        private string _type;
        private int _quantity;
        private decimal _total;
        //private string _description;
        //[SettingsAllowAnonymous(true)]
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        //[SettingsAllowAnonymous(true)]
        public decimal Price
        {
            get { return _price; }
            set { _price = value; }
        }

        //[SettingsAllowAnonymous(true)]
        public string ItemPic
        {
            get { return _itemPic; }
            set { _itemPic = value; }
        }

        //[SettingsAllowAnonymous(true)]
        public string Type
        {
            get {return _type;}
            set {_type = value;}
        }

        //[SettingsAllowAnonymous(true)]
        public int Quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }

        //[SettingsAllowAnonymous(true)]
        public decimal Total
        {
            get { return _total; }
            set { _total = value; }
        }

        //public string Description
        //{
        //    get { return _description; }
        //    set { _description = value; }
        //}

        public CartItem() { }

        public CartItem(string name, decimal price, string itemPic, string type, int quantity, decimal total/*, string description*/)
        {
            _name = name;
            _price = price;
            _itemPic = itemPic;
            _type = type;
            _quantity = quantity;
            _total = total;

            //_description = description;
        }
    }
}