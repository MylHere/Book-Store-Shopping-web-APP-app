<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Ex04Cart.Products" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header class="jumbotron"></header>
    <main>
        <form id="form1" runat="server" class="form-horizontal">
            <div class="form-group">
                <label for="ddlProducts" class="col-sm-2 control-label">Please select a product</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddlProducts" runat="server" CssClass="form-control">
    <asp:ListItem Text="Dune" Value="100"></asp:ListItem>
    <asp:ListItem Text="Neuromancer" Value="190"></asp:ListItem>
    <asp:ListItem Text="Snow Crash" Value="15"></asp:ListItem>
    <asp:ListItem Text="Foundation" Value="24"></asp:ListItem>
    <asp:ListItem Text="Ender's Game" Value="12"></asp:ListItem>
    <asp:ListItem Text="The Hobbit" Value="8"></asp:ListItem>
    <asp:ListItem Text="Harry Potter and the Sorcerer's Stone" Value="18"></asp:ListItem>
    <asp:ListItem Text="A Game of Thrones" Value="14"></asp:ListItem>
    <asp:ListItem Text="The Name of the Wind" Value="11"></asp:ListItem>
    <asp:ListItem Text="Mistborn" Value="17"></asp:ListItem>
    <asp:ListItem Text="The Hound of the Baskervilles" Value="210"></asp:ListItem>
    <asp:ListItem Text="Gone Girl" Value="160"></asp:ListItem>
    <asp:ListItem Text="The Girl with the Dragon Tattoo" Value="290"></asp:ListItem>
    <asp:ListItem Text="Big Little Lies" Value="130"></asp:ListItem>
    <asp:ListItem Text="In the Woods" Value="910"></asp:ListItem>
    <asp:ListItem Text="Pride and Prejudice" Value="400"></asp:ListItem>
    <asp:ListItem Text="The Notebook" Value="250"></asp:ListItem>
    <asp:ListItem Text="Me Before You" Value="150"></asp:ListItem>
    <asp:ListItem Text="Outlander" Value="220"></asp:ListItem>
    <asp:ListItem Text="Twilight" Value="180"></asp:ListItem>
    <asp:ListItem Text="The Shining" Value="300"></asp:ListItem>
    <asp:ListItem Text="Dracula" Value="90"></asp:ListItem>
    <asp:ListItem Text="Frankenstein" Value="70"></asp:ListItem>
    <asp:ListItem Text="The Haunting of Hill House" Value="85"></asp:ListItem>
    <asp:ListItem Text="Bird Box" Value="45"></asp:ListItem>
    <asp:ListItem Text="Sapiens" Value="110"></asp:ListItem>
    <asp:ListItem Text="Educated" Value="95"></asp:ListItem>
    <asp:ListItem Text="Becoming" Value="120"></asp:ListItem>
    <asp:ListItem Text="The Immortal Life of Henrietta Lacks" Value="150"></asp:ListItem>
    <asp:ListItem Text="The Wright Brothers" Value="75"></asp:ListItem>
    <asp:ListItem Text="The Book Thief" Value="105"></asp:ListItem>
    <asp:ListItem Text="All the Light We Cannot See" Value="125"></asp:ListItem>
    <asp:ListItem Text="The Help" Value="135"></asp:ListItem>
    <asp:ListItem Text="The Nightingale" Value="140"></asp:ListItem>
    <asp:ListItem Text="The Guernsey Literary and Potato Peel Pie Society" Value="155"></asp:ListItem>
</asp:DropDownList>


                </div>
            </div>
            <div class="form-group">
                <label for="txtQuantity" class="col-sm-2 control-label">Quantity</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-primary" OnClick="btnAddToCart_Click" />
                    <asp:Button ID="btnGoToCart" runat="server" Text="Go to Cart" CssClass="btn btn-success" OnClick="btnGoToCart_Click" />
                </div>
                <div class="gridview-container">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MdShazidulMazid_bookstoreConnectionString %>" 
                SelectCommand="SELECT Books.Title, Books.Author, Genre.Name AS Genre FROM Books JOIN Genre ON Books.GenreId = Genre.Id">
            </asp:SqlDataSource>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                </Columns>
            </asp:GridView>
        </div>
            </div>
        </form>
    </main>
</div>
</body>
</html>
