using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
namespace CMS.CMSLogic
{
    public class DateBaseHelprs
    {
        public DataTable GetItemsByparameter(string topnumber,string Params)
        {
            MyClass mc = new MyClass();
            try
            {
                
                DataTable dt = new DataTable();
                string sql = string.Format("SELECT     TOP ({0})   ItemTopic,  PhotoName,  SummaryTxt, ItemID,  ShowDate,BodyTxt,GrpName ,PartID , DATEDIFF(day, GETDATE(), EventDate) as dayE, DATEDIFF(day, DATEPART(HOUR, GETDATE()), DATEPART(HOUR, EventDate)) as HourE , " +
" abs( DATEDIFF(day, DATEPART(minute, GETDATE()), DATEPART(minute, EventDate))) as minE ,EventDate FROM  dbo.ViewItemPart " +
                            "WHERE FreshStat = 3 AND PubStat = 9 AND GETDATE() >= ShowDate  {1} " +
                            "ORDER BY  ShowDate DESC", topnumber, string.IsNullOrEmpty(Params) == false ? " and " + Params : string.Empty);
                mc.connect();
                dt = mc.select(sql);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                mc.disconnect();    
            }
        }
    }
}