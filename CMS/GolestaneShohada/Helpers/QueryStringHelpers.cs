using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebUtility;
namespace CMS.GolestaneShohada.Helpers
{
    public class QueryStringHelpers
    {
        public enum QueryStrings
        {
            shahidID
        }

        public static String GetValue(QueryStrings querystring)
        {
            return WebUtility.Helpers.QuerStringHelpers.GetQueryStringValue<QueryStrings>(HttpContext.Current, querystring);
        }
        public static string SetValue(QueryStrings querystring, string value)
        {
            return WebUtility.Helpers.QuerStringHelpers.SetQueryStringValue<QueryStrings>(querystring, value);
        }
    }
}