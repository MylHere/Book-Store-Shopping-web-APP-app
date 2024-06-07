<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Ex04Cart.Checkout" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <header class="jumbotron"><!-- Image set in site.css --></header>
        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <h2>Contact Information</h2>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtEmail">Email:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ForeColor="Red" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtEmailRetry">Re-enter Email:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtEmailRetry" runat="server" CssClass="form-control" TextMode="Email" />
                        <asp:RequiredFieldValidator ID="rfvEmailRetry" runat="server" ControlToValidate="txtEmailRetry"
                            ErrorMessage="Email confirmation is required" ForeColor="Red" />
                        <asp:CompareValidator ID="cvEmail" runat="server" ControlToValidate="txtEmailRetry" ControlToCompare="txtEmail" 
                            ErrorMessage="Emails do not match" ForeColor="Red" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtFirstName">First Name:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                            ErrorMessage="First name is required" ForeColor="Red" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtLastName">Last Name:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                            ErrorMessage="Last name is required" ForeColor="Red" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtPhone">Phone Number:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                            ErrorMessage="Phone number is required" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" 
                            ErrorMessage="Invalid Phone Number format (e.g., 555-555-12345)" ValidationExpression="^\d{3}-\d{3}-\d{5}$" ForeColor="Red" />
                    </div>
                </div>

                <h2>Billing Address</h2>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtAddress">Address:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                            ErrorMessage="Address is required" ForeColor="Red" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtCity">City:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity"
                            ErrorMessage="City is required" ForeColor="Red" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtState">State:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtState" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="txtState"
                            ErrorMessage="State is required" ForeColor="Red" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="txtZip">Zip Code:</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvZip" runat="server" ControlToValidate="txtZip"
                            ErrorMessage="Zip code is required" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revZip" runat="server" ControlToValidate="txtZip" 
                            ErrorMessage="Invalid Zip Code" ValidationExpression="^\d{5}(-\d{4})?$" ForeColor="Red" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" CssClass="btn btn-primary" OnClick="btnPlaceOrder_Click" />
                        <asp:Button ID="btnCancelOrder" runat="server" Text="Cancel Order" CssClass="btn btn-default" OnClick="btnCancelOrder_Click" />
                        <asp:Button ID="btnContinueShopping" runat="server" Text="Continue Shopping" CssClass="btn btn-default" OnClick="btnContinueShopping_Click" />
                    </div>
                </div>
                <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
            </form>
        </main>
    </div>
</body>
</html>
