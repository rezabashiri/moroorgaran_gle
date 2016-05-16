using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace Golestan.Model
{
    [MetadataType(typeof(MetaData))]
    [System.ComponentModel.DisplayName("عملیاتها")]
    public partial class Amaliat
    {
        private class MetaData
        {
            public int ID { get; set; }
            [Display(Name="نام عملیات")]
            public string Name { get; set; }
            [Display(Name="رمز")]
            public string Ramz { get; set; }
            [UIHint("PersianDateTime")]
            [Display(Name="تاریخ شروع")]
            public Nullable<System.DateTime> TarikheShoroo { get; set; }
            [UIHint("PersianDateTime")]
            [Display(Name="تاریخ پایان")]
            public Nullable<System.DateTime> TarikhePayan { get; set; }
            [Display(Name="توضیحات")]
            public string Tozihat { get; set; }
            [Display (Name="خلاصه")]
            public string Kholase { get; set; }
            [UIHint("Image")]
            public byte[] Thumbnale { get; set; }

            [UIHint("FileUpload")]
            [Display(Name = "مالتی مدیا")]
            public Nullable<System.Guid> AttachID { get; set; }

            [Display(AutoGenerateField=false)]
            public virtual ICollection<NirooYeganVahedAmaliat> NirooYeganVahedAmaliats { get; set; }
            
             [Display(Name="نقطه اثر _ یادمان")]
            public virtual ICollection<NoghteAsar> NoghteAsars { get; set; }
        }
        internal Amaliat NearestAmaliatToNow()
        {
            using (var myen = Helpers.ContextHelper.GetContext)
            {
                return myen.GetTheNearestAmaliat().FirstOrDefault() ?? new Amaliat() { ID=-1};
            }
        }
        internal List<ViewAmaliat> SearchAmaliatByQuery(string query)
        {
            using (var myen = Helpers.ContextHelper.GetContext)
            {
                return myen.sp_SearchAmaliatByQuery(query).ToList < ViewAmaliat>();
            }
        }
    }
}