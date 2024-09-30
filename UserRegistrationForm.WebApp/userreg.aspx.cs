using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace UserRegistrationForm.WebApp
{
    public partial class userreg : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string connectionString = "Data Source=UCHIASALAI\\SQLEXPRESS;Initial Catalog=userRegistrations;User ID=salai;Password=Vpjtqwv23@#;Encrypt=True;TrustServerCertificate=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string insertQuery = @"INSERT INTO [dbo].[useRegi_tbl]
                                           ([email],[pass],[fname],[lname],[address],[phone],[gender],[dob])
                                           VALUES
                                           (@email, @pass, @fname, @lname, @address, @phone, @gender, @dob)";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@pass", txtPass.Text);
                        cmd.Parameters.AddWithValue("@fname", txtFname.Text.Trim());
                        cmd.Parameters.AddWithValue("@lname", txtLname.Text.Trim());
                        cmd.Parameters.AddWithValue("@address", txtAdd.Text.Trim());
                        cmd.Parameters.AddWithValue("@phone", txtPhone.Text.Trim());
                        cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("@dob", DateTime.Parse(txtDOB.Text));

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            ShowAlert("Registered successfully");
                        }
                        else
                        {
                            ShowAlert("Registration failed!");
                        }
                    }
                }
                catch (Exception ex)
                {
                    ShowAlert($"An error occurred: {ex.Message}");
                }
            }
        }

        private void ShowAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", $"alert('{message}');", true);
        }
    }
}