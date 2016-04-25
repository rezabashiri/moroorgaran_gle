using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMS.GolestaneShohada.Helpers
{
    public class SessionHelpers
    {
        public enum Sessions
        {
            user
        }
        public static void Set<T>(Sessions key, T value)
        {
            HttpContext.Current.Session[Enum.GetName(typeof(Sessions), key)] = value;
        }
        public static T Get<T>(Sessions key)
        {
            object obj = HttpContext.Current.Session[Enum.GetName(typeof(Sessions), key)];
            if (obj == null)
                return default(T);
            else
                return (T)obj;
        }
        public static AccessManagementService.Model.User GetUser()
        {
           return Get<AccessManagementService.Model.User>(Sessions.user);
        }
        public static void SetUser(AccessManagementService.Model.User _user)
        {
            Set<AccessManagementService.Model.User>(Sessions.user, _user);
        }
    }
}