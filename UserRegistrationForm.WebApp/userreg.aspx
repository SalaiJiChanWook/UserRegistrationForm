<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userreg.aspx.cs" Inherits="UserRegistrationForm.WebApp.userreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>User Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
  <div class="container">
      
         <form class="row g-3 bg-light" runat="server" method="post">
             <div class="bg-primary p-4 rounded mb-3 mt-3">
    <h1 class="text-center text-light">User Registration Form</h1>
</div>

  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
      <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
      <asp:TextBox ID="txtPass" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
<div class="col-md-6">
  <label for="inputEmail4" class="form-label">First Name</label>
    <asp:TextBox ID="txtFname" CssClass="form-control" runat="server"></asp:TextBox>
</div>
<div class="col-md-6">
  <label for="inputPassword4" class="form-label">Last Name</label>
    <asp:TextBox ID="txtLname" CssClass="form-control" runat="server"></asp:TextBox>
</div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
      <asp:TextBox ID="txtAdd" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="col-md-4">
    <label for="inputCity" class="form-label">Phone</label>
      <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">Gender</label>
      <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server">

          <asp:ListItem Value="male">Male</asp:ListItem>
          <asp:ListItem Value="female">Female</asp:ListItem>
          <asp:ListItem Value="others">Others</asp:ListItem>
      </asp:DropDownList>
  </div>
  <div class="col-md-4">
    <label for="inputZip" class="form-label">DOB</label>
      <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="DateTimeLocal"></asp:TextBox>
  </div>
 
  <div class="col-12 mb-3">
      <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Register" OnClick="Button1_Click" />
  </div>
</form>
  </div>

</body>
</html>
