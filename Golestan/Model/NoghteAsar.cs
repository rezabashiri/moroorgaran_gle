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
    
    public partial class NoghteAsar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NoghteAsar()
        {
            this.Mogheyats = new HashSet<Mogheyat>();
            this.Amaliats = new HashSet<Amaliat>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public Nullable<double> X { get; set; }
        public Nullable<double> Y { get; set; }
        public Nullable<System.Guid> AttachID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Mogheyat> Mogheyats { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Amaliat> Amaliats { get; set; }
    }
}
