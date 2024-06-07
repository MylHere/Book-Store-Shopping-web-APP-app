<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex04Cart.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <style>
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn-custom {
            background-color: #333;
            color: white;
            border: none;
            padding: 14px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .btn-custom:hover {
            background-color: #555;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <header class="jumbotron"><%-- image set in site.css --%></header>
        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <div class="btn-container">
                    <a href="Products.aspx" class="btn-custom">Products</a>
                    <a href="Cart.aspx" class="btn-custom">Cart</a>
                </div>
            </form>
        </main>
    </div>
</body>
</html>
