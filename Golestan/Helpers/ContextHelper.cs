using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Golestan.Model;
namespace Golestan.Helpers
{
    public class ContextHelper
    {
        public static GolestanShohadaEntities GetContext
        {
            get
            {
                return new GolestanShohadaEntities();
            }
        }
    }
    
}