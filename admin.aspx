﻿<!DOCTYPE html>
<script runat="server">

</script>
<html>
	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<title>About Us</title>
		<link rel="stylesheet" type="text/css" href="style/global.css"/>

		
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
	    <script type="text/javascript" src="engine1/jquery.js"></script>
  
	</head>
	<body>
		<form id="form1" runat="server">
		<div id="container">
			<div id="header">
				<div id="logo"><a href="index.aspx"><img src="./images/globe.gif"/></a></div>
  				<input type="hidden" name="cx" value="YOUR SEARCH ENGINE ID goes here" />
				  <input type="hidden" name="ie" value="UTF-8" />
				  <input type="text" name="q" size="20" />
				  <input type="submit" name="sa" value="Search" />
								
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
			</div>
			</div>
			<div id="content">
                <div id="adminSection"><h1>Administrator Page</h1>
				    <div id="buttonArea">
					    <a href="add.aspx" class="addButton">New Product</a>
				    </div>
			    </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="gridStyle">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="ID" />
                        <asp:ImageField DataImageUrlField="imageSource" HeaderText="Images" ControlStyle-Height="100px" ControlStyle-Width="100px">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="description" HeaderText="description" 
                            SortExpression="description" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="stockQuantity" HeaderText="stockQuantity" 
                            SortExpression="stockQuantity" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" 
                            DataNavigateUrlFormatString="edit.aspx?id={0}" HeaderText="Edit Product" 
                            NavigateUrl="~/edit.aspx" Text="Edit" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>




			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Products] WHERE [ID] = @ID" 
                    InsertCommand="INSERT INTO [Products] ([description], [price], [stockQuantity], [imageSource], [name]) VALUES (@description, @price, @stockQuantity, @imageSource, @name)" 
                    SelectCommand="SELECT * FROM [Products]" 
                    UpdateCommand="UPDATE [Products] SET [description] = @description, [price] = @price, [stockQuantity] = @stockQuantity, [imageSource] = @imageSource, [name] = @name WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="price" Type="String" />
                        <asp:Parameter Name="stockQuantity" Type="Int32" />
                        <asp:Parameter Name="imageSource" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="price" Type="String" />
                        <asp:Parameter Name="stockQuantity" Type="Int32" />
                        <asp:Parameter Name="imageSource" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>




			</div>
					<div id="footer">
				<ul class="flist">
					<li class="firstLi"><h4>Helpful Links</h4>
					<hr>
					<ul class="secondLi">
						<li><a href="about.html">About Us</a></li>
						<li><a href="products.html">Products</a></li>
						<li><a href="contactus.html">Contact Us</a></li>
						<li><a href="support.html">Support</a></li>
						<li><a href="sitemap.html">Sitemap</a></li>
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


		</div>

	    </form>

	</body>

</html>