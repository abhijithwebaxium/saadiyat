<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<!-- Meta Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script>
    addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }
</script>
<!-- //Meta Tags -->
<link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon.png"/>
<!-- Style-sheets -->
<!-- Bootstrap Css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Bootstrap Css -->
<!-- Common Css -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--// Common Css -->
<!-- Fontawesome Css -->
<link href="css/fontawesome-all.css" rel="stylesheet">
<!--// Fontawesome Css -->
<!--// Style-sheets -->

<!--web-fonts-->
<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
 <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
             <div class="bg-page py-5">
    <div class="container">
        <!-- main-heading -->
        <h3 class="main-title-w3layouts mb-2 text-center text-white">Saadiyat Login</h3>
        <!--// main-heading -->
        <div class="form-body-w3-agile text-center w-lg-50 w-sm-50 w-75 mx-auto mt-5">
            <form action="#" method="post">
           
                <div class="form-group">
                    <label>UserName</label>
                    <asp:TextBox ID="txtUser" placeholder="Username" required="" class="form-control"  runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <asp:TextBox ID="txtPass" placeholder="Password" required="" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <asp:Label ID="msg" Visible="false" runat="server"/>

               
                <asp:Button ID="Button1" OnClick="Button1_Click" class="btn btn-primary error-w3l-btn mt-sm-5 mt-3 px-4" runat="server" Text="Login" />
            </form>
        </div>

        <!-- Copyright -->
        <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
            <p>© 2024 Saadiyat Auditing, All Rights Reserved | Design by
                <a href="http://aimsoftsolutions.com/" target="blank"> AimSoft </a>
            </p>
        </div>
        <!--// Copyright -->
    </div>
</div>


<!-- Required common Js -->
<script src='js/jquery-2.2.3.min.js'></script>
<!-- //Required common Js -->

<!-- Js for bootstrap working-->
<script src="js/bootstrap.min.js"></script>
<!-- //Js for bootstrap working -->
    </form>
</body>
</html>
