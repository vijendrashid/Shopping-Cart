using System;
using System.Collections.Generic;
using h2h.DataAccessLayer;


// .net .5 unleashed  chapter 15 == Products.aspx
namespace h2h.BusinessLogicLayer
{

    /// <summary>
    /// Represents a store product and all the methods
    /// for selecting, inserting, and updating a product
    /// </summary>
    public class Product
    {
        private int _id = 0;
        private string _name = String.Empty;
        private decimal _price = 0;
        private string _description = String.Empty;

        /// <summary>
        /// Product Unique Identifier
        /// </summary>
        public int Id
        {
            get { return _id; }
        }

        /// <summary>
        /// Product Name
        /// </summary>
        public string Name
        {
            get { return _name; }
        }

        /// <summary>
        /// Product Price
        /// </summary>
        public decimal Price
        {
            get { return _price; }
        }

        /// <summary>
        /// Product Description
        /// </summary>
        public string Description
        {
            get { return _description; }
        }

        /// <summary>
        /// Retrieves all products
        /// </summary>
        /// <returns></returns>
        public static List<Product> SelectAll()
        {
            SqlDataAccessLayer dataAccessLayer = new SqlDataAccessLayer();
            return dataAccessLayer.ProductSelectAll();
        }

        /// <summary>
        /// Updates a particular product
        /// </summary>
        /// <param name="id">Product Id</param>
        /// <param name="name">Product Name</param>
        /// <param name="price">Product Price</param>
        /// <param name="description">Product Description</param>
        public static void Update(int id, string name, decimal price, string description)
        {
            if (id < 1)
                throw new ArgumentException("Product Id must be greater than 0", "id");

            Product productToUpdate = new Product(id, name, price, description);
            productToUpdate.Save();
        }

        /// <summary>
        /// Inserts a new product
        /// </summary>
        /// <param name="name">Product Name</param>
        /// <param name="price">Product Price</param>
        /// <param name="description">Product Description</param>
        public static void Insert(string name, decimal price, string description)
        {
            Product newProduct = new Product(name, price, description);
            newProduct.Save();
        }

        /// <summary>
        /// Deletes an existing product
        /// </summary>
        /// <param name="id">Product Id</param>
        public static void Delete(int id)
        {
            if (id < 1)
                throw new ArgumentException("Product Id must be greater than 0", "id");

            SqlDataAccessLayer dataAccessLayer = new SqlDataAccessLayer();
            dataAccessLayer.ProductDelete(id);
        }

        /// <summary>
        /// Validates product information before saving product
        /// properties to the database
        /// </summary>
        private void Save()
        {
            if (String.IsNullOrEmpty(_name))
                throw new ArgumentException("Product Name not supplied", "name");
            if (_name.Length > 50)
                throw new ArgumentException("Product Name must be less than 50 characters", "name");
            if (String.IsNullOrEmpty(_description))
                throw new ArgumentException("Product Description not supplied", "description");

            SqlDataAccessLayer dataAccessLayer = new SqlDataAccessLayer();
            if (_id > 0)
                dataAccessLayer.ProductUpdate(this);
            else
                dataAccessLayer.ProductInsert(this);
        }

        /// <summary>
        /// Initializes Product
        /// </summary>
        /// <param name="name">Product Name</param>
        /// <param name="price">Product Price</param>
        /// <param name="description">Product Description</param>
        public Product(string name, decimal price, string description)
            : this(0, name, price, description) { }

        /// <summary>
        /// Initializes Product
        /// </summary>
        /// <param name="id">Product Id</param>
        /// <param name="name">Product Name</param>
        /// <param name="price">Product Price</param>
        /// <param name="description">Product Description</param>
        public Product(int id, string name, decimal price, string description)
        {
            _id = id;
            _name = name;
            _price = price;
            _description = description;
        }


    }
}