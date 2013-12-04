<!-- This script displays the parsed guest book content in a table,
using the GridView control in ASP.NET.
-->
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contactlist.aspx.vb" Inherits="contactlist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact List</title>
    <link rel="stylesheet" type="text/css" href="style/global.css"/>

		
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
	    <script type="text/javascript" src="engine1/jquery.js"></script>
</head>

<body>
    <div id="container">
			<div id="header">
				<div id="logo"><a href="index.aspx"><img src="./images/globe.gif"/></a></div>
				<form id="cse-search-box" action="http://google.com/cse">
  				<input type="hidden" name="cx" value="YOUR SEARCH ENGINE ID goes here" />
				  <input type="hidden" name="ie" value="UTF-8" />
				  <input type="text" name="q" size="20" />
				  <input type="submit" name="sa" value="Search" />
				</form>
				<center>
			<div id="navMenu">
					<ul class="nav">
						<li><a href="index.aspx">Home</a></li>
						<li><a href="products.aspx">Products</a>
						<ul>
							<li><a href="sedan.aspx">Sedan</a></li>
							<li><a href="suv.aspx">SUV</a></li>
							<li><a href="sports.aspx">Sports</a></li>
							<li><a href="pickup.aspx">Pickup Truck</a></li>

						</ul>

						</li>
						<li><a href="support.aspx">Support</a></li>
						<li><a href="about.aspx">About Us</a></li>
						<li><a href="contactus.aspx">Contact Us</a></li>
					</ul>
			</div></center>
			</div>
            <div id="content" style="height:1100px;width:960px;"><center>
            <br /><br />
             <form id="form1" runat="server">
             <div>
             <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="false">
            <Columns>
            <asp:BoundField HeaderText="Name" DataField="Name"/>
             <asp:BoundField HeaderText="Email" DataField="Email" />
             <asp:BoundField HeaderText="Phone" DataField="Phone" />
             <asp:BoundField HeaderText="Gender" DataField="Gender" />
             <asp:BoundField HeaderText="Purpose" DataField="Purpose" />
             <asp:BoundField HeaderText="How did you hear about us?" DataField="How did you find us?" />
             <asp:BoundField HeaderText="Comments" DataField="Comments" HtmlEncode="false" />
             </Columns>
              </asp:GridView>
        <br />
        <a href="contactus.aspx">Back to Contact List</a></center>
    </div>
    </form>

            <div id="footer">
				<ul class="flist">
					<li class="firstLi"><h4>Helpful Links</h4>
					<hr>
					<ul class="secondLi">
						<li><a href="about.aspx">About Us</a></li>
						<li><a href="products.aspx">Products</a></li>
						<li><a href="contactus.aspx">Contact Us</a></li>
						<li><a href="support.aspx">Support</a></li>
						<li><a href="sitemap.aspx">Sitemap</a></li>
					</ul></li>
					<li><h4>Contact Us</h4>
					<hr><p>Carworld Incorporated <br>
						3801 W. Temple Ave <br>Pomona, CA 91768<br>
						Phone: (800)498-9382<br>
						Fax: (800)498-9384<br>
						Email: assistance@carworld.com</p>
					</li>
					<li><h4>Administrator</h4>
						<hr>
						<a href="admin.aspx">Admin Page</a>
					</li>
					<li class="lastLi"><h4>Socialize with us</h4>
						<hr>
						<img src="./images/icon-facebook.png">
						<img src="./images/icon-googleplus.png">
						<img src="./images/logo-twitter.png" height="30" width="30">
						<img src="./images/youtube-widget12.png" height="30" width="30">
					</li>

				</ul>
			</div>
</body>
</html>
