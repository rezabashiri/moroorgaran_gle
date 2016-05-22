<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ideageneration.aspx.cs" Inherits="CMS.GolestaneShohada.Design.fa.ideageneration" MasterPageFile="~/GolestaneShohada/Design/MasterPage/WebMaster.Master" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPageHeading">
    <h1>
        <asp:Label ID="lblTopic" runat="server" ></asp:Label></h1>
        <p><span><i class="fa fa-calendar"></i>
            <asp:Label ID="lblDate" runat="server" ></asp:Label></span> <span><i class="fa fa-pencil"></i> <asp:Label ID="lblGrp" runat="server"></asp:Label> </span></p>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
            <div class="text-box lineH">
              <div class="right" id="DivItem" runat="server">
              </div>
            </div>


    <div class="comment-box">
<h3>Comments</h3>
<div class="comments">
<ul>
 
<li>
<div class="text-outer">
<div class="text">
<div class="comment-frame"><img alt="img" src="images/comment-img-1.png"></div>
<div class="text-outer-1"> <strong class="title">Admin</strong>
<p>Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
<a class="date" href="#"><i class="fa fa-calendar"></i>30 March, 2014</a></div>
</div>
</div>

</li>
</ul>
</div>
</div>


    <form action="form.php" method="post" class="comment-form">
<h4>Leave a Comment</h4>
<ul>
<li> 
<input name="name" required="" pattern="[a-zA-Z ]+" class="comment-input" placeholder="Name" type="text">
</li>
<li> 
<input placeholder="Email" required="" pattern="^[a-zA-Z0-9-\_.]+@[a-zA-Z0-9-\_.]+\.[a-zA-Z0-9.]{2,5}$" class="comment-input" name="email" type="text">
</li>
<li>
<input placeholder="Website" required="" class="comment-input" name="website" type="text">
</li>
<li> 
<input placeholder="Subject" required="" class="comment-input" name="subject" type="text">
</li>
</ul>
<div class="text-area-box"> <i class="fa fa-pencil"></i>
<textarea rows="10" cols="10" name="comments" required="" class="comment-textarea" placeholder="Comments"></textarea>
<input value="Submit" class="comment-btn-sumbit" name="submit" type="submit">
</div>
</form>
</asp:Content>