using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class showCallbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Literal aPBreak2 = new Literal();
        //aPBreak2.Mode = LiteralMode.PassThrough;
        //aPBreak2.Text = "<P CLASS='breakhere'>";
        //aPBreak2.Visible = true;
        //aPBreak2.EnableViewState = true;
        bool firstpage = true;
        for(int z = 1; z < 53; z++)
        {         
            GridView aPagedView = new GridView();
            aPagedView.DataSourceID = "SqlDataSourceState" + z.ToString();
            
            aPagedView.AutoGenerateColumns = true;            
            aPagedView.AllowPaging = true;
            aPagedView.Visible = false;            
            aPagedView.PageSize = this.GridViewBuilder.PageSize;            
            this.PlaceHolderGridViewArray.Controls.Add(aPagedView);            
            int y = 0;
            aPagedView.DataBind();
            y = aPagedView.PageCount;
            //if ((z > 1) && (aPagedView.Rows.Count > 0))
            //{
                //this.PlaceHolderGridViewArray.Controls.Add(aPBreak2);
            //}
            this.TextBox1.Text = GridViewBuilder.PageCount.ToString();
            for (int x = 0; x < y; x++)
            {
                Literal aPBreak = new Literal();
                aPBreak.Mode = LiteralMode.PassThrough;
                aPBreak.Text = "<P CLASS='breakhere'>";
                aPBreak.Visible = true;
                aPBreak.EnableViewState = true;

                if (!firstpage)
                {
                    this.PlaceHolderGridViewArray.Controls.Add(aPBreak);
                    
                }
                else
                {
                    firstpage = false;
                }
                GridView aView = new GridView();
                aView.DataSourceID = aPagedView.DataSourceID;
                aView.AutoGenerateColumns = false;
                foreach (DataControlField aField in GridViewBuilder.Columns)
                {
                    aView.Columns.Add(aField);
                }
                aView.AllowPaging = true;
                aView.PagerSettings.Visible = false;
                aView.PageSize = this.GridViewBuilder.PageSize;
                aView.CellPadding = GridViewBuilder.CellPadding;
                aView.BorderColor = GridViewBuilder.BorderColor;
                aView.BorderStyle = GridViewBuilder.BorderStyle;
                aView.BorderWidth = GridViewBuilder.BorderWidth;
                aView.PageIndex = x;
                aView.HeaderStyle.BackColor = this.GridViewBuilder.HeaderStyle.BackColor;
                aView.HeaderStyle.ForeColor = this.GridViewBuilder.HeaderStyle.ForeColor;
                aView.Font.Name = this.GridViewBuilder.Font.Name;

                this.PlaceHolderGridViewArray.Controls.Add(aView);

                /*int pagenum = x + 1;            
                Literal aPageNum = new Literal();
                aPageNum.Mode = LiteralMode.PassThrough;
                aPageNum.Text = "<br>Page " + pagenum.ToString() + " of " + y.ToString() + "<br>";
                PlaceHolderGridViewArray.Controls.Add(aPageNum);*/
                //Literal aPBreak = new Literal();
                //aPBreak.Mode = LiteralMode.PassThrough;
                //aPBreak.Text = "<P CLASS='breakhere'>";
                //aPBreak.Visible = true;
                //aPBreak.EnableViewState = true;
                
                //if (x < (y - 1))
                //{
                    //this.PlaceHolderGridViewArray.Controls.Add(aPBreak);
                //}
            }
        }
    }
}
