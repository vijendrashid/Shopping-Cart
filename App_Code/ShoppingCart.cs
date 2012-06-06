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
        private decimal _mPrice;
        private int _daysDelivered;
        private decimal _discount;
        private string _prod_Id;

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
            get { return _type; }
            set { _type = value; }
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

        public decimal MPrice
        {
            get { return _mPrice; }
            set { _mPrice = value; }
        }
        public int DaysDelivered
        {
            get { return _daysDelivered; }
            set { _daysDelivered = value; }
        }
        public decimal Discount
        {
            get { return _discount; }
            set { _discount = value; }
        }
        public string Prod_Id
        {
            get { return _prod_Id; }
            set { _prod_Id = value; }
        }

        //public string Description
        //{
        //    get { return _description; }
        //    set { _description = value; }
        //}

        public CartItem() { }

        public CartItem(string name, decimal price, string itemPic, string type,
                        int quantity, decimal total, decimal mPrice,
                        int daysDelivered, decimal discount, string prod_Id)
        {
            _name = name;
            _price = price;
            _itemPic = itemPic;
            _type = type;
            _quantity = quantity;
            _total = total;

            _mPrice = mPrice;
            _daysDelivered = daysDelivered;
            _discount = discount;
            _prod_Id = prod_Id;
            //_description = description;
        }
    }
}