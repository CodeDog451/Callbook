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

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["security"] != null)
        {
            if (Session["fullname"] != null)
            {
                this.LabelMessage.Text = "Welcome " + Session["fullname"].ToString();
            }
            if (GridViewUser.Rows.Count > 0)
            {
                GridViewUser.SelectedIndex = 0;
                if (!Page.IsPostBack)
                {                   
                    CalendarFrom.SelectedDate = DateTime.Today;
                    CalendarTo.SelectedDate = DateTime.Today;
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    protected void ButtonShow_Click(object sender, EventArgs e)
    {
        DateTime dateFrom = CalendarFrom.SelectedDate;
        dateFrom = dateFrom.AddHours(Double.Parse(DropDownListHourFrom.SelectedValue));
        dateFrom = dateFrom.AddHours(Double.Parse(DropDownListAmPmFrom.SelectedValue));
        dateFrom = dateFrom.AddMinutes(Double.Parse(DropDownListMinuteFrom.SelectedValue));

        DateTime dateTo = CalendarTo.SelectedDate;
        dateTo = dateTo.AddHours(Double.Parse(DropDownListHourTo.SelectedValue));
        dateTo = dateTo.AddHours(Double.Parse(DropDownListAmPmTo.SelectedValue));
        dateTo = dateTo.AddMinutes(Double.Parse(DropDownListMinuteTo.SelectedValue));
        
        TextBoxFrom.Text = dateFrom.ToString();
        TextBoxTo.Text = dateTo.ToString();
        Session["from"] = dateFrom;
        Session["to"] = dateTo;
        
        Response.Redirect("~/showCallbook.aspx");
    }

    protected void ButtonGo_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/showCallbook.aspx");
    }
    protected void ButtonPrinted_Click(object sender, EventArgs e)
    {
        this.SqlDataSourcePrintLog.Update();
        this.GridViewImported.DataBind();
    }
    protected void GridViewImported_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBoxSelectedDate.Text = GridViewImported.SelectedDataKey[1].ToString();
        DateTime selectedDate, dateFrom, dateTo;
        if (GridViewImported.SelectedDataKey[1].ToString().Length > 0)
        {
            selectedDate = (DateTime)GridViewImported.SelectedDataKey[1];
            dateFrom = selectedDate.AddHours(-1);
            dateTo = selectedDate.AddHours(1);
            TextBoxSelectedDay.Text = selectedDate.Date.ToString();
            TextBoxSelectedHour.Text = selectedDate.Hour.ToString();

            this.CalendarFrom.SelectedDate = dateFrom.Date;
            if (dateFrom.Hour > 11)
            {
                this.DropDownListHourFrom.SelectedIndex = dateFrom.Hour - 12;
                this.DropDownListAmPmFrom.SelectedIndex = 1;
            }
            else
            {
                this.DropDownListHourFrom.SelectedIndex = dateFrom.Hour;
                this.DropDownListAmPmFrom.SelectedIndex = 0;
            }
            this.DropDownListMinuteFrom.SelectedIndex = dateFrom.Minute;

            this.CalendarTo.SelectedDate = dateTo.Date;
            if (dateTo.Hour > 11)
            {
                this.DropDownListHourTo.SelectedIndex = dateTo.Hour - 12;
                this.DropDownListAmPmTo.SelectedIndex = 1;
            }
            else
            {
                this.DropDownListHourTo.SelectedIndex = dateTo.Hour;
                this.DropDownListAmPmTo.SelectedIndex = 0;
            }
            this.DropDownListMinuteTo.SelectedIndex = dateTo.Minute;
            
        }
        else
        {
            CalendarFrom.SelectedDate = DateTime.Today;
            CalendarTo.SelectedDate = DateTime.Today;

            this.DropDownListHourFrom.SelectedIndex = 0;            
            this.DropDownListHourTo.SelectedIndex = 0;

            this.DropDownListMinuteFrom.SelectedIndex = 0;
            this.DropDownListMinuteTo.SelectedIndex = 0;

            this.DropDownListAmPmFrom.SelectedIndex = 0;
            this.DropDownListAmPmTo.SelectedIndex = 0;
        }
        
    }
}
