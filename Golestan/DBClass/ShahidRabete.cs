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


    public partial class ShahidRabete
    {
        private class MetaData
        {
            public int IDShahid1 { get; set; }
            public int IDShahid2 { get; set; }
            public int IDNoeRabete { get; set; }

            public virtual NoeRabete NoeRabete { get; set; }
            public virtual Shahid Shahid { get; set; }
            public virtual Shahid Shahid1 { get; set; }
        }
    }
}
