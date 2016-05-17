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
        public List<ViewShahid> GetShahidCloserToDeath(int top)
        {
            Shahid _shahid = new Shahid();
            return _shahid.GetShahidCloserToDeath(top);
        }
        public List<ViewShahidAshena> GetShahidAshenayan(int idshahid)
        {
            Shahid _shahid = new Shahid();
            return _shahid.GetShahidAshnayan(idshahid);
        }
        public List<ViewShahidMatalebEzafe> GetShahidMatalebEzafe(int idshahid)
        {
            Shahid _shahid = new Shahid();
            return _shahid.GetShahidMatalebEzafe(idshahid);
        }
        public List<ViewShahidAmaliat> GetShahidHamrazman(int idshahid)
        {
            Shahid _shahid = new Shahid();
            return _shahid.GetShahidHamrazman(idshahid);
        }
        public List<ViewAttach> GetShahidAttachments(int IDShahid)
        {
            Shahid _shahid = new Shahid();
            return _shahid.GetShahidAttachments(IDShahid);
        }
        public Amaliat GetTheNearestAmaliat()
        {
            Amaliat _am = new Amaliat();
            return _am.NearestAmaliatToNow();
        }
        public List<ViewAmaliatMantaghe> GetAmaliatMantagheByIDAmaliat(int? IDAmaliat)
        {
            Amaliat _am = new Amaliat();
            return _am.GetAmaliatManatagheByIDAmaliat(IDAmaliat);
        }
    }
}