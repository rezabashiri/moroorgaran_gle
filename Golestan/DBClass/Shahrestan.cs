//------------------------------------------------------------------------------
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

    using System.ComponentModel.DataAnnotations;
    [MetadataType(typeof(MetaData))]
    [System.ComponentModel.DisplayName("�������")]


    public partial class Shahrestan
    {

        private class MetaData
        {
            public int ID { get; set; }
            [Display(Name = "���")]
            public string Name { get; set; }
            [Display(AutoGenerateField=false)]
            public Nullable<System.Guid> UserID { get; set; }
            [Display(AutoGenerateField=false)]
            public Nullable<int> IDOstan { get; set; }

   
            public virtual ICollection<Bakhsh> Bakhshes { get; set; }
            public virtual Ostan Ostan { get; set; }
        }
    }
}
