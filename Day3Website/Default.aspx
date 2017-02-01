<!--Language="C#" is important because you could be using Visual Basic instead-->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>

    <div class="container">

        <h1> Welcome to Web Development </h1>

        <%--This is a "server-side" comment.
            This won't show up in the source code on your webpage.

            Access a variable in your code-behind--%>
        <h3> <%= Name %> </h3>
        
        <form id="form1" runat="server">
            <div>

            </div>
        </form>
        <!--End Main Container-->
    </div>

</body>
</html>
