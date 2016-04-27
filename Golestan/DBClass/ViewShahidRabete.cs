using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace Golestan.Model
{
    [MetadataType(typeof(MetaData))]
    public partial class ViewShahidRabete
    {
        [ScaffoldTable(false)]
        private class MetaData
        {
            public string Name { get; set; }
            public string Family { get; set; }
            public int IDShahid1 { get; set; }
            public int IDShahid2 { get; set; }
            public string Name2 { get; set; }
            public string Name3 { get; set; }
            public string NameRabete { get; set; }
            public string NoeInSystem { get; set; }
        }
    }
}