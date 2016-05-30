using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MessagingToolkit.QRCode.Codec;
using MessagingToolkit.QRCode.Codec.Data;
 
using System.Drawing;
namespace CMS
{
    public partial class MapTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var res = new Golestan.Helpers.InterFace().GetShahidCloserToDeath(3);
            var res1 = new Golestan.Helpers.InterFace().GetShahidAshenayan(3);
            var res2 = new Golestan.Helpers.InterFace().GetShahidAttachments(2);
 
            //string yourcode = textBox1.Text;
            System.IO.MemoryStream ms = new System.IO.MemoryStream();

            QRCodeEncoder enc = new QRCodeEncoder();
            Bitmap qrcode = enc.Encode("id=2");
            qrcode.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
            var res5 = Convert.ToBase64String(ms.ToArray());
            var s = qrcode.ToString();
            //usc.OnDataBind += usc_OnDataBind;
            //Image1.ImageUrl= "data:image/gif;base64," + res5;
            //pictureBox1.Image = qrcode as Image;//Displays generated code in PictureBox


            CMSLogic.NewsList _lis = new CMSLogic.NewsList();
            _lis.AddToList(new CMSLogic.News() { ID = "1", Imageurle = "shohada-isf.ir", Summary = "این تست است", Title = "خبر1" });
            _lis.AddToList(new CMSLogic.News() { ID = "2", Imageurle = "shohada-isf.ir", Summary = "این تست است", Title = "خبر1" });
            var ser = _lis.Serialize();
        
            JQDatePicker1.Enabled = true;
            JQDatePicker1.Regional = JQControls.Regional.fa;
            JQDatePicker1.ChangeMonth = JQDatePicker1.ChangeYear = true;
            
        }

        void usc_OnDataBind(List<Golestan.Model.ViewAmaliat> DataSource)
        {
           
        }

        protected void btnte_Click(object sender, EventArgs e)
        {
            var d = ucsDateTime.DateTime;
            var d2 = ucsDateTime.PersianDateTime;
        }
    }
}