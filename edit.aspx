<!DOCTYPE html><html>
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
            <h1>Edit Product</h1>
                <p>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                        DataSourceID="SqlDataSource1" DefaultMode="Edit" BorderStyle="Groove" 
                        CellPadding="1" Width="238px">
                        <EditItemTemplate> 
                            Car ID:&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                             Product Name:
                            <br />
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            Description:<br/>
                            <asp:TextBox ID="descriptionTextBox" runat="server" 
                                Text='<%# Bind("description") %>' TextMode="MultiLine" Height="93px" 
                                Width="250px" />
                            <br />
                            MSRP:<br />
                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />
                            Quantity:<br />
                            <asp:TextBox ID="stockQuantityTextBox" runat="server" 
                                Text='<%# Bind("stockQuantity") %>' />
                            <br />
                            Image Path:<br /> <asp:TextBox ID="imageSourceTextBox" runat="server" 
                                Text='<%# Bind("imageSource") %>' />
                            <br />
                           
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [Products] WHERE [ID] = @ID" 
                        InsertCommand="INSERT INTO [Products] ([description], [price], [stockQuantity], [imageSource], [name]) VALUES (@description, @price, @stockQuantity, @imageSource, @name)" 
                        SelectCommand="SELECT * FROM [Products] WHERE ([ID] = @ID)" 
                        
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
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="0" Name="ID" QueryStringField="id" 
                                Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="description" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="stockQuantity" Type="Int32" />
                            <asp:Parameter Name="imageSource" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="ID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </p>
                <p>
                </p>

            

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