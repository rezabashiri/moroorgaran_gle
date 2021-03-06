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
    
    public partial class Shahid
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Shahid()
        {
            this.AfzoodaneEtelaats = new HashSet<AfzoodaneEtelaat>();
            this.MatalebEzafes = new HashSet<MatalebEzafe>();
            this.ShahidRabetes = new HashSet<ShahidRabete>();
            this.ShahidRabetes1 = new HashSet<ShahidRabete>();
            this.ShahidAmaliats = new HashSet<ShahidAmaliat>();
            this.Ashnayans = new HashSet<Ashnayan>();
        }
    
        public int ID { get; set; }
        public string CodeMeli { get; set; }
        public string ShomareShenasname { get; set; }
        public string Name { get; set; }
        public string Family { get; set; }
        public Nullable<System.DateTime> TarikheTavalod { get; set; }
        public Nullable<System.DateTime> TarikheShahadat { get; set; }
        public string NamePedar { get; set; }
        public string Jensiat { get; set; }
        public string Shoghl { get; set; }
        public byte[] QRCode { get; set; }
        public Nullable<int> IDBakhsheTavalod { get; set; }
        public Nullable<System.Guid> AttachID { get; set; }
        public Nullable<int> IDVaziat { get; set; }
        public byte[] Thumbnale { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AfzoodaneEtelaat> AfzoodaneEtelaats { get; set; }
        public virtual Maghbare Maghbare { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MatalebEzafe> MatalebEzafes { get; set; }
        public virtual Vaziat Vaziat { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ShahidRabete> ShahidRabetes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ShahidRabete> ShahidRabetes1 { get; set; }
        public virtual Bakhsh Bakhsh { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ShahidAmaliat> ShahidAmaliats { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ashnayan> Ashnayans { get; set; }
    }
}
