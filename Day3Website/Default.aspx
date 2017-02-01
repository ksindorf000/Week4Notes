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

        <h1>Welcome to Web Development </h1>

        <%--This is a "server-side" comment.
            This won't show up in the source code on your webpage.--%>

        <!--Code declaration block-->
        <% if (Name.Contains("Kristin"))
            { %>
        <!-- Access a variable in your code-behind-->
        <h3><%= Name %>, you should definitely be a developer! </h3>
        <% }
            else
            { %>
        <h3><%=Name %>, glad you're here!</h3>
        <% } %>

        <br />

        <!--Resources List-->
        <h4>Resources:</h4>
        <p>
            <ul>
                <li>
                    <a href="https://drive.google.com/open?id=0B8ie37YIHMJUdThWWlh0WWZROUE"
                        target="_blank">Handy Dandy Diagram</a>
                </li>
                <li>...more coming in Slack

                </li>
            </ul>
        </p>
        <br />
        <!--Text field form-->
        <h4>What is your name?</h4>
        <form id="form1" runat="server">
            <div class="form-group">
                <input class="form-control" type="text" name="Word" />
            </div>
            <div>
                <input type="submit" class="btn btn-default" value="Submit" />
            </div>
            <br />
            <br />
            <br />

            <!--Dropdown-->
            <h4>BackEnd Inputs:</h4>
            <div class="form-group">
                <select name="Winner">
                    <% foreach (var option in Options)
                        { %>
                    <option value="<%=option.ToLower() %>"><%= option %></option>
                    <% } %>
                </select>
            </div>
            <div>
                <input type="submit" class="btn btn-default" value="Submit" />
            </div>
                        
                <% if (Winner == "peanut")
                    { %>
                <h1>Yay!!! Peanut is the winner!</h1>
                <% } %>

        </form>
        
        <!--End Main Container-->
    </div>

</body>
</html>
