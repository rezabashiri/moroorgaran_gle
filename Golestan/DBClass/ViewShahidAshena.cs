using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace Golestan.Model
{
    using System;
    using System.Collections.Generic;

    [MetadataType(typeof(MetaData))]
    public partial class ViewShahidAshena
    {
        [ScaffoldTable(false)]
        private class MetaData
        {
            public string NameAhena { get; set; }
            public string FamilAshena { get; set; }
            public string Tozihat { get; set; }
            public string Kholase { get; set; }
            public Nullable<int> IDNoeRabete { get; set; }
            public string NameRabete { get; set; }
            public string NameShahid { get; set; }
            public string FamilShahid { get; set; }
            public int ID { get; set; }
        }
    }
}