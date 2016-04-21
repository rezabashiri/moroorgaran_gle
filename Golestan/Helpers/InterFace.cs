using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Golestan.Model;
namespace Golestan.Helpers
{
    public class InterFace
    {
        public List<ViewShahid> Search_SahidByGhateID(int IDGhate)
        {
            Shahid _shahid = new Shahid();
            return _shahid.SearchShahidByGheteID(IDGhate);
        }
    }
}