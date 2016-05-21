using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.IO;

public partial class simple_math_captcha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.AddHeader("p3p", "CP=\"CAO PSA OUR\"");

        Color myColor = System.Drawing.Color.DarkSlateGray;

        Bitmap objBMP = new System.Drawing.Bitmap(80, 30);
        Graphics objGraphics = System.Drawing.Graphics.FromImage(objBMP);
        objGraphics.Clear(Color.Transparent);

        Font objFont = new Font("tahoma", 11, FontStyle.Regular);

        string randomStr = "";

        Random r = new Random();

        int a = r.Next(1, 9);
        int b = r.Next(1, 9);

        int c = a + b;

        string bb = null;
        switch (b)
        {
            case 1: bb = "یک"; break;
            case 2: bb = "دو"; break;
            case 3: bb = "سه"; break;
            case 4: bb = "چهار"; break;
            case 5: bb = "پنج"; break;
            case 6: bb = "شش"; break;
            case 7: bb = "هفت"; break;
            case 8: bb = "هشت"; break;
            case 9: bb = "نه"; break;
        }
        randomStr = a.ToString() + " + " + bb + " = ";

        Session["LoyatyMathCaptcha"] = c.ToString();

        SolidBrush myBrush = new SolidBrush(myColor);

        objGraphics.DrawString(randomStr, objFont, myBrush, 3, 3);

        Response.ContentType = "image/png";

        System.IO.MemoryStream mem = new MemoryStream();

        objBMP.Save(mem, ImageFormat.Png);
        mem.WriteTo(Response.OutputStream);

        objFont.Dispose();
        objGraphics.Dispose();
        objBMP.Dispose();
    }
}