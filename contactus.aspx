<!DOCTYPE html><html>
        <head>

                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <title>Contact Us</title>
                <link rel="stylesheet" type="text/css" href="style/global.css"/>

                
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
            <script type="text/javascript" src="engine1/jquery.js"></script>
        </head>
        <body>
                <div id="container">
                        <div id="header">
                                <div id="logo"><a href="index.aspx"><img src="./images/globe.gif"></a></div>
                                <form id="cse-search-box" action="http://google.com/cse">
                                  <input type="hidden" name="cx" value="YOUR SEARCH ENGINE ID goes here" />
                                  <input type="hidden" name="ie" value="UTF-8" />
                                  <input type="text" name="q" size="20" />
                                  <input type="submit" name="sa" value="Search" />
                                </form>
                                
                        <div id="navMenu" align="center">
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
                                                <li><a href="support.aspx">Support</a>
                                                <li><a href="about.aspx">About Us</a></li>
                                                <li><a href="contactus.aspx">Contact Us</a></li>
                                        </ul>
                        </div>
			</div>
                        <div id="contentLeft">
                                        <center>
                                        <table>
                                        <tr>
                                                <td>Address:</td>
                                                <td>3801 W Temple ave<br>Pomona, CA 91768</td>
                                        </tr>
					<tr>
                                                <td>Phone:</td>
                                                <td>(800)498-9382</td>
                                        </tr>
                                        <tr>
                                                <td>Fax:</td>
                                                <td>(800)498-9384</td>
                                        </tr>
                                        <tr>
                                                <td>Email:</td>
                                                <td>assistance@carworld.com</td>
                                        </tr>
					<tr>
						<br><br><iframe width="300" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?q=3801+w+temple+ave+pomona+ca+91768&amp;ie=UTF8&amp;hq=&amp;hnear=3801+W+Temple+Ave,+Pomona,+California+91768&amp;t=m&amp;ll=34.056499,-117.822876&amp;spn=0.042666,0.051498&amp;z=13&amp;iwloc=A&amp;output=embed"></iframe>
					</tr>
					
                                </table>
                        </div>
                        

                        <div id="contentRight">

                                <style type="text/css">

                                  input:required:invalid, input:focus:invalid {
                                    background-image: url('./images/invalid.png');
                                    background-position: right top;
                                    background-repeat: no-repeat;
                                    -moz-box-shadow: none;
                                  }
                                  input:required:valid {
                                    background-image: url('./images/valid.png');
                                    background-position: right top;
                                    background-repeat: no-repeat;
                                  }

                                    .style1
                                    {
                                        width: 79px;
                                    }

                                </style>

                                <center>
                                <h2><b>Contact Us</b></h2>
                                <p align="left" style="padding-left:60px"><font size="1">(<font color = "red">*</font>)Required Field</font></p>
                                    <form id="form1" runat="server">
                                        <table>
                                                <tr>
                                                        <td class="style1">First name: <span style="color:red;">*</span></td>
                                                        <td>
                                                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                              ControlToValidate="txtFirstName"
                                                              ErrorMessage="First name is a required field."
                                                              ForeColor="Red">
                                                            </asp:RequiredFieldValidator>
                                                        </td>
                                                </tr>
                                                <tr>
                                                        <td class="style1">Last name: <span style="color:red">*</span></td>
                                                        <td>
                                                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                  ControlToValidate="txtLastName"
                                                                  ErrorMessage="Last name is a required field."
                                                                  ForeColor="Red">
                                                                  </asp:RequiredFieldValidator>
                                                        </td>
                                                </tr>
                                                <tr>
                                                        <td style="padding-left:33px" class="style1">Email: <span style="color:red">*</span></td>
                                                        <td>
                                                            <asp:TextBox ID="txtEmail" runat="server" style="margin-bottom: 3px"></asp:TextBox>
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                  ControlToValidate="txtEmail"
                                                                  ErrorMessage="Please enter a valid email"
                                                                  ForeColor="Red">
                                                                  </asp:RequiredFieldValidator>
                                                        </td>
                                                </tr>
                                                <tr>
                                                        <td style="padding-left:31px" class="style1">Phone: <span style="color:red">*</span></td>
                                                        <td> 
                                                            <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
                                                        </td>
                                                </tr>
                                                <tr>
                                                        <td style="padding-left:23px" class="style1">Gender: </td>
                                                        <td>
                                                            <asp:RadioButton ID="Male" runat="server" />
                                                            Male
                                                            <asp:RadioButton ID="Female" runat="server" />
                                                            Female</td>
                                                </tr>
                                                <tr>
                                                        <td style="padding-left:18px" class="style1">Purpose: </td>
                                                        <td>
                                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                                <asp:ListItem>General</asp:ListItem>
                                                                <asp:ListItem>Inquiry</asp:ListItem>
                                                                <asp:ListItem>Feedback</asp:ListItem>
                                                                <asp:ListItem>Other</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        
                                                </tr>
                                                <tr>
                                                        <td class="style1"> How did<Br> you hear<br> about us?</td>
                                                        <td>
                                                            <asp:CheckBox ID="NewspaperAd" runat="server" />
                                                            Newspaper Ad &nbsp;&nbsp;
                                                            <asp:CheckBox ID="Billboard" runat="server" />
                                                            Billboard<br>
                                                            <asp:CheckBox ID="SocialMedia" runat="server" />
                                                            Social Media &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:CheckBox ID="WordOfMouth" runat="server" />
                                                            Word of mouth<br>
                                                            <asp:CheckBox ID="WalkIn" runat="server" />
                                                            Walk-In &nbsp;&nbsp;&nbsp;
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <asp:CheckBox ID="Other" runat="server" />
                                                            Other</td>
                                                        
                                                </tr>
                                                <tr>
                                                        <td class="style1"> Comments:</td>
                                                        <td>
                                                            <asp:TextBox ID="txtComments" runat="server" Columns="30" 
                                                                TextMode="MultiLine" Rows="5">Add Comments Here...</asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                  ControlToValidate="txtComments"
                                                                  ErrorMessage="Please enter details."
                                                                  ForeColor="Red">
                                                                  </asp:RequiredFieldValidator>
                                                            </td>
                                                </tr>
                                                <tr>

                                                        <td class="style1">
                                                                <input type="submit" value="Submit">
                                                        </td>
                                                </tr>
                                        </table>
                                    </form>
                                <center>
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
						<a href="admin.html">Admin Page</a>
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

        </body>

</html>
