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
    [System.ComponentModel.DisplayName("����� ����")]
    public partial class Maghbare
    {
        private class MetaData
        {
            public int IDShahid { get; set; }
            public Nullable<int> IDGhate { get; set; }
            [Display(Name="�� �����")]
            public string SangNeveshte { get; set; }

            public virtual Ghate Ghate { get; set; }
            public virtual Shahid Shahid { get; set; }
        }
    }
}
