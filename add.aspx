﻿<!DOCTYPE html>

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
				<form id="cse-search-box" action="http://google.com/cse">
  				<input type="hidden" name="cx" value="YOUR SEARCH ENGINE ID goes here" />
				  <input type="hidden" name="ie" value="UTF-8" />
				  <input type="text" name="q" size="20" />
				  <input type="submit" name="sa" value="Search" />
				</form>
				
			<div id="navMenu" align="center">
					<ul class="nav">
						<li><a href="index.aspx">Home</a></li>
						<li><a href="products.aspx">Products</a></li>
						<li><a href="support.aspx">Support</a></li>
						<li><a href="about.aspx">About Us</a></li>
						<li><a href="contactus.aspx">Contact Us</a></li>
					</ul>
			</div>
			</div>
			<div id="content">

            <h1>Add a new Product</h1>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert">
                    <EditItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        description:
                        <asp:TextBox ID="descriptionTextBox" runat="server" 
                            Text='<%# Bind("description") %>' />
                        <br />
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        stockQuantity:
                        <asp:TextBox ID="stockQuantityTextBox" runat="server" 
                            Text='<%# Bind("stockQuantity") %>' />
                        <br />
                        imageSource:
                        <asp:TextBox ID="imageSourceTextBox" runat="server" 
                            Text='<%# Bind("imageSource") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Product name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        Description:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="descriptionTextBox" runat="server" 
                            Text='<%# Bind("description") %>' TextMode="MultiLine" />
                        <br />
                        Car price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="stockQuantityTextBox" runat="server" 
                            Text='<%# Bind("stockQuantity") %>' />
                        <br />
                        Image url:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="imageSourceTextBox" runat="server" 
                            Text='<%# Bind("imageSource") %>' />
                        <br />
                        
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    
                </asp:FormView>







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

                <a href="admin.aspx">Back to admin</a>





			</div>
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


		</div>

	    </form>

	</body>

</html>
