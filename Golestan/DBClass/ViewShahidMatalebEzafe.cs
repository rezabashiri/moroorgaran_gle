using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace Golestan.Model
{
    [MetadataType(typeof(MetaData))]
    public partial class ViewShahidMatalebEzafe
    {
        [ScaffoldTable(false)]
        private class MetaData
        {
            public int ID { get; set; }
            public string Name { get; set; }
            public string Family { get; set; }
            public string Kholase { get; set; }
            public Nullable<int> IDNoeMatlab { get; set; }
            public string Tozihat { get; set; }
          
            public string NoeInSystem { get; set; }
        }
    }
}