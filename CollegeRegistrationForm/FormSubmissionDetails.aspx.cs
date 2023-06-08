using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services.Description;
using System.Net.NetworkInformation;
using System.Runtime.Remoting.Lifetime;

namespace CollegeRegistrationForm
{
    public partial class FormSubmissionDetails : System.Web.UI.Page
    {
        string c = ConfigurationManager.ConnectionStrings["sqlconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                string q = "select * from country";
                SqlConnection cn = new SqlConnection(c);
                cn.Open();
                SqlCommand cmd = new SqlCommand(q, cn);
                DropDownList1.DataSource=cmd.ExecuteReader();
                DropDownList1.DataTextField = "c_name";
                DropDownList1.DataValueField = "c_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0,new ListItem("---Select Country---","0"));
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        public string calculate_age(DateTime dob)
        {
            int age = 0;
            age = DateTime.Now.Subtract(dob).Days;
            age = age / 365;
            return Convert.ToString(age);
        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

            if (Convert.ToDateTime(TextBox2.Text) < DateTime.Now)
                TextBox3.Text = calculate_age(Convert.ToDateTime(TextBox2.Text));
            else
            {
                Response.Write("<script language='javascript'>alert(' please enter correct age ');</script>");
               
            }
        }
           
            

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int countryid = Convert.ToInt32(DropDownList1.SelectedValue);
            string q = "select * from State where c_id="+countryid;
            SqlConnection cn=new SqlConnection(c);
            cn.Open();
            SqlCommand cmd = new SqlCommand(q,cn);
            DropDownList2.DataSource=cmd.ExecuteReader();
            DropDownList2.DataTextField = "s_name";
            DropDownList2.DataValueField = "s_id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("---Select State---", "0"));
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int stateid = Convert.ToInt32(DropDownList2.SelectedValue);
            string q = "select * from city where s_id="+stateid;
            SqlConnection cn = new SqlConnection(c);
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);
            DropDownList3.DataSource = cmd.ExecuteReader();
            DropDownList3.DataTextField = "ct_name";
            DropDownList3.DataValueField = "ct_id";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("---Select City---", "0"));
        }
       protected string calculate(string a,string b)
        {
            int q = int.Parse(a);
            int r = int.Parse(b);
            double s =(double)(q*100) / r;
            return Math.Round(s,2).ToString();
        }
        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
               
                TextBox9.Text = calculate(TextBox7.Text, TextBox8.Text);
           
            
            
            
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {
            TextBox13.Text = calculate(TextBox11.Text, TextBox12.Text);
        }
           

        protected void TextBox16_TextChanged(object sender, EventArgs e)
        {
            TextBox17.Text = calculate(TextBox15.Text, TextBox16.Text);
            double sum = Convert.ToDouble(TextBox9.Text) + Convert.ToDouble(TextBox13.Text) + Convert.ToDouble(TextBox17.Text);
           double avg = sum / 3;
            TextBox18.Text = Math.Round(avg,2).ToString();
        }


        private string res;
        protected void Button1_Click(object sender, EventArgs e)
        {
          
            if (TextBox1.Text !="" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" &&
              TextBox8.Text != "" && TextBox9.Text != "" && TextBox10.Text != "" && TextBox11.Text != "" && TextBox12.Text != "" &&
              TextBox13.Text != "" && TextBox14.Text != "" && TextBox15.Text != "" && TextBox16.Text != "" && TextBox17.Text != "" && 
              TextBox18.Text != "" && DropDownList1.SelectedValue != "0" && DropDownList2.SelectedValue != "0" 
              && DropDownList3.SelectedValue != "0" && RadioButtonList1.SelectedValue != "0")
              {
                
                string q = "insert into details values('"+TextBox1.Text+"','"+RadioButtonList1.Text+"','"+TextBox2.Text+ "','"+TextBox3.Text+ "'," +
                    "'"+DropDownList1.SelectedItem.Text+ "','"+DropDownList2.SelectedItem.Text + "','"+DropDownList3.SelectedItem.Text + "')";
                
                SqlConnection cn = new SqlConnection(c);
                cn.Open();
                SqlCommand cmd = new SqlCommand(q, cn);
                int k = cmd.ExecuteNonQuery();
                cn.Close();

                string q1 = "select * from details where name ='"+TextBox1.Text+"'";
                SqlConnection cn1 = new SqlConnection(c);
                cn1.Open();
                SqlCommand cmd1 = new SqlCommand(q1, cn1);
                SqlDataReader dr = cmd1.ExecuteReader();
                while (dr.Read())
                { 
                    res = dr["S_id"].ToString(); }
                cn1.Close ();

                string q2 = "insert into Marks values('"+TextBox7.Text+ "','"+TextBox11.Text+"','"+TextBox15.Text+"','"+res+"')";
                SqlConnection cn2 = new SqlConnection(c);
                cn2.Open();
                SqlCommand cmd2 = new SqlCommand(q2, cn2);
                int k2 = cmd2.ExecuteNonQuery();
                if (k2 > 0)
                {
                    Response.Write("<script language='javascript'>alert('Your details has been inserted. " +
                                   "Your registration id is :'"+res+"');</script>");
                }
                cn2.Close();
            }
          else
                Response.Write("<script language='javascript'>alert('Please check." +
                               "Something went wrong.');</script>");
              
        }

    }
}
