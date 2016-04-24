using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Golestan.Model;
namespace Golestan.Helpers
{
    public class InterFace
    {
        public static string ConnectionString
        {
            get
            {
                return new GolestanShohadaEntities().Database.Connection.ConnectionString;
            }
        }
        public List<ViewShahid> Search_SahidByGhateID(int IDGhate)
        {
            Shahid _shahid = new Shahid();
            return _shahid.SearchShahidByGheteID(IDGhate);
        }
        public ViewShahid GetShahidByID(int IDShahid)
        {
            Shahid _shahid = new Shahid();
            return _shahid.GetShahidByID(IDShahid);
        }
        public ViewShahidAmaliat GetShahidAmaliatByID(int IDShahid)
        {
            Shahid _shahid = new Shahid();
            return _shahid.GetShahid_AmaliatMonjarBeShahadatByIDShahid(IDShahid);
        }
    }
}