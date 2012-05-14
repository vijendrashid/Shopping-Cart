using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using h2h.BusinessLogicLayer;

namespace h2h.DataAccessLayer
{
    /// <summary>
    /// Data Access Layer for interacting with Microsoft
    /// SQL Server 2005
    /// </summary>
    public class SqlDataAccessLayer
    {
        private static readonly string _connectionString = string.Empty;

        /// <summary>
        /// Selects all products from the database
        /// </summary>
        public List<Product> ProductSelectAll()
        {
            // Create Product collection
            List<Product> colProducts = new List<Product>();

            // Create connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT Id,Name,Price,Description FROM Products";

            // Execute command
            using (con)
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    colProducts.Add(new Product(
                        (int)reader["Id"],
                        (string)reader["Name"],
                        (decimal)reader["Price"],
                        (string)reader["Description"]));
                }
            }
            return colProducts;
        }

        /// <summary>
        /// Inserts a new product into the database
        /// </summary>
        /// <param name="newProduct">Product</param>
        public void ProductInsert(Product newProduct)
        {
            // Create connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT Products (Name,Price,Description) VALUES (@Name,@Price,@Description)";

            // Add parameters
            cmd.Parameters.AddWithValue("@Name", newProduct.Name);
            cmd.Parameters.AddWithValue("@Price", newProduct.Price);
            cmd.Parameters.AddWithValue("@Description", newProduct.Description);

            // Execute command
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }

        /// <summary>
        /// Updates an existing product into the database
        /// </summary>
        /// <param name="productToUpdate">Product</param>
        public void ProductUpdate(Product productToUpdate)
        {
            // Create connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "UPDATE Products SET Name=@Name,Price=@Price,Description=@Description WHERE Id=@Id";

            // Add parameters
            cmd.Parameters.AddWithValue("@Name", productToUpdate.Name);
            cmd.Parameters.AddWithValue("@Price", productToUpdate.Price);
            cmd.Parameters.AddWithValue("@Description", productToUpdate.Description);
            cmd.Parameters.AddWithValue("@Id", productToUpdate.Id);

            // Execute command
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }

        /// <summary>
        /// Deletes an existing product in the database
        /// </summary>
        /// <param name="id">Product Id</param>
        public void ProductDelete(int Id)
        {
            // Create connection
            SqlConnection con = new SqlConnection(_connectionString);

            // Create command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "DELETE Products WHERE Id=@Id";

            // Add parameters
            cmd.Parameters.AddWithValue("@Id", Id);

            // Execute command
            using (con)
            {
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }

        /// <summary>
        /// Initialize the data access layer by
        /// loading the database connection string from 
        /// the Web.Config file
        /// </summary>
        static SqlDataAccessLayer()
        {
            _connectionString = WebConfigurationManager.ConnectionStrings["Store"].ConnectionString;
            if (string.IsNullOrEmpty(_connectionString))
                throw new Exception("No connection string configured in Web.Config file");
        }
    }
}