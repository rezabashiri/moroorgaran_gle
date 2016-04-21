﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Golestan.Model
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    using System.ComponentModel.DataAnnotations;
    [MetadataType(typeof(MetaData))]
    [System.ComponentModel.DisplayName("شهید")]


    public partial class Shahid
    {

        private class MetaData
        {
            public int ID { get; set; }
            [Display(Name="کد ملی")]
            public string CodeMeli { get; set; }
            [Display(Name="نام")]
            public string Name { get; set; }
            [Display(Name="نام خانوادگی")]
            public string Family { get; set; }
            [Display(Name="تاریخ تولد")]
            [UIHint("PersianDate")]
            public Nullable<System.DateTime> TarikheTavalod { get; set; }
            [Display (Name="تاریخ شهادت")]
            [UIHint("PersianDate")]
            public Nullable<System.DateTime> TarikheShahadat { get; set; }
            [Display(Name="نام پدر")]
            public string NamePedar { get; set; }
            [Display(Name="جنسیت")]
            public string Jensiat { get; set; }
            [Display(Name="شغل")]
            public string Shoghl { get; set; }
            
            public byte[] QRCode { get; set; }
            public Nullable<int> IDBakhsheTavalod { get; set; }
            public Nullable<System.Guid> AttachID { get; set; }
            public Nullable<int> IDVaziat { get; set; }
            [UIHint("Image")]
            public byte[] Thumbnale { get; set; }

            public virtual Bakhsh Bakhsh { get; set; }
            public virtual Maghbare Maghbare { get; set; }
          
            public virtual ICollection<MatalebEzafe> MatalebEzafes { get; set; }
            public virtual Vaziat Vaziat { get; set; }
           
            public virtual ICollection<ShahidAmaliat> ShahidAmaliats { get; set; }
           
            public virtual ICollection<ShahidRabete> ShahidRabetes { get; set; }
       
            public virtual ICollection<ShahidRabete> ShahidRabetes1 { get; set; }
     
            public virtual ICollection<AfzoodaneEtelaat> AfzoodaneEtelaats { get; set; }
        }
        public override string ToString()
        {
            return string.Format("{0} {1}", this.Name, this.Family);
        }

        internal List<ViewShahid> SearchShahidByGheteID(int IDGhete)
        {
            string param = string.Format("GhateID = {0}", IDGhete);
            return SearchShahidByParameter(param);
        }
        public ViewShahid GetShahidByID(int IDShahid)
        {
            using (var myen = Golestan.Helpers.ContextHelper.GetContext)
            { 
                string whereparam=string.Format(" ID = {0}",IDShahid);
                return myen.sp_SearchSahid(whereparam).FirstOrDefault<ViewShahid>();
            }
        }
        public List<ViewShahid> SearchShahidByParameter(string WhereParameter)
        {
            using (var myen = Golestan.Helpers.ContextHelper.GetContext)
            {
                return myen.sp_SearchSahid(WhereParameter).ToList<ViewShahid>();
            }
        }
        public List<ViewShahid> SearchShahidByQuery(string fulltextquery)
        {
            using (var myen = Golestan.Helpers.ContextHelper.GetContext)
            {
                return myen.sp_SearchShahidByQuery(fulltextquery).ToList<ViewShahid>();
            }
        }
    }
}
