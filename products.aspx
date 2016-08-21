<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap-theme.css" />
<link rel="stylesheet" href="mystyles.css" />
<title>Sản phẩm</title>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse" style="border-radius:0px">
      <div class="container">
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="#">Giỏ hàng</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<div class="container">
	<!--menu header -->
	<div class="row" id="header">
    	<div class="col-md-2 text-center"><a href="default.aspx">Trang chủ</a></div>
        <div class="col-md-2 text-center"><a href="products.aspx">Sản phẩm</a></div>
        <div class="col-md-4 text-center"><a href="default.aspx"><img src="img/logo.png" width="150" alt="logo"/></a></div>
        <div class="col-md-2 text-center"><a href="contact.aspx">Liên hệ</a></div>
        <div class="col-md-2 text-center"><a href="about_us.aspx">Giới thiệu</a></div>
    </div>
  
    <!-- Content -->
<div class="row">
        	<div class="col-md-4">
            	<h2>Danh mục sản phẩm</h2>
               	<ul class="categarory">
                       <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="90%">
                           <ItemTemplate>
                               <li><span class="glyphicon glyphicon-triangle-right"></span><a href="#"><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></a></li>
                               
                           </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [product_category] WHERE ([id_parent] = @id_parent)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="id_parent" Type="Int32" />
                            </SelectParameters>
                       </asp:SqlDataSource>
                </ul>
                  <div class="input-group">
                      <input type="text" class="form-control" placeholder="Search for...">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button" style="font-size:20px; background:#FFF"><span class="glyphicon glyphicon-search"></span></button>
                      </span>
                    </div>
             </div>
                <div class="col-md-8">
                	<h2>Danh sách sản phẩm</h2>
                    <hr/>
                <div class="row">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">
                        <AlternatingItemTemplate>
                            <td runat="server" style="">
                                <div class="row">
                                    <img src="img/sp1.jpg" width="100%" />
                                    <h4 align="center"><asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' /></h4>
                                    <div class="row">
                                	    <div class="col-md-6 text-center"><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>' /><b>Đ</b></div>
                                        <div class="col-md-6 text-center"><a href="#">Xem</a></div>
                                    </div>
                                    <p class="text-justify"><asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>' /></p>
                                </div>
                                </td>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <td runat="server" style="">name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />price:
                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                <br />description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                <br /></td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
<td runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />price:
                                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                <br />description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                <br /></td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" style="">
                                <div class="row">
                                    <img src="img/sp1.jpg" width="100%" />
                                    <h4 align="center"><asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' /></h4>
                                    <div class="row">
                                	    <div class="col-md-6 text-center"><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>' /><b>Đ</b></div>
                                        <div class="col-md-6 text-center"><a href="#">Xem</a></div>
                                    </div>
                                    <p class="text-justify"><asp:Label ID="Label3" runat="server" Text='<%# Eval("description") %>' /></p>
                                </div>
                            </td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="">name:
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                <br />description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br /></td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [price], [description] FROM [product]"></asp:SqlDataSource>
                </div>       
            </div>
        </div>
    </div>
<footer class="footer">
	    <div class="container">
    	<div class="row">
            <div class="col-md-6">
            	<h1>Liên hệ</h1>
                <div class="row">Đỗ Gia Long : 0966 078 534</div>
                <div class="row">Nguyễn Trung Hiếu : 0167 260 5929</div>
                <div class="row">Nguyễn Đình Hiệp : 0167 260 5929</div>
                <div class="row">Địa chỉ : 3 Nguyễn Cơ Thạch, Mỹ Đình 1, Mỹ Đình, Từ Liêm, Hà Nội</div>
            </div>
            <div class="col-md-6" style="margin-top:5px;">
                <div class="row"><a href="about_us.aspx">Giới thiệu</a></div>
                <div class="row"><a href="products.aspx">Sản phẩm</a></div>
                <div class="row"><a href="contact.aspx">Liên hệ</a></div>
            </div>
       	</div>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
