<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoseOfMotivation.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html>
    <head runat="server">
        <title>DoseOfMotivation</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link href="~/styles/bootstrap.min.css" rel="stylesheet">
        <link href="~/styles/mySiteCSS.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style>
            .navbar-red {
                background-color: #A80000;
                border-color: #ff0000;
            }
            .auto-style1 {
                width: 100%;
            }
            .auto-style2 {
                width: 156px;
            }
            .auto-style3 {
                width: 290px;
            }
            .auto-style5 {
                width: 156px;
                height: 38px;
            }
            .auto-style6 {
                width: 290px;
                height: 38px;
            }
            .auto-style7 {
                width: 1026px;
                height: 38px;
            }
            .auto-style9 {
                width: 554px;
                height: 38px;
            }
            .auto-style10 {
                width: 554px;
            }
            .auto-style14 {
                width: 661px;
            }
            </style>
    </head>
    <body>
        <nav class = "navbar navbar-default navbar-fixed-top navbar-red" style="padding-left: 10px;">
            <div class = "container-fluid">
                
                <div class = "navbar-brand"><a href = "index.html"><b>Drug Abstinence</b> </a></div>  
                <button type="button" class = "navbar-toggle" data-toggle = "collapse" data-target = "#navHeaderCollapse">
                    Collapse
                </button>
              
              <div  id="navHeaderCollapse" class = "collapse navbar-collapse">
                  <ul class = "nav navbar-nav navbar-right">
                      <li class="dropdown">
                          <a href = "index.html"><font color="white">Home</font> </a>
                      </li>
                      <li class="dropdown">
                          <a href = "cons.html"><font color="white">Consequences</font> </a>
                      </li>
                      <li class="dropdown">
                          <a href = "facts.html"><font color="white">Facts</font></a>
                      </li>
                      <li class="dropdown">
                          <a href = "about.html"><font color="white">About</font></a>
                      </li>
                      <li class="dropdown">
                          <a href = "#"><font color="white">Dose of Motivation</font></a>
                      </li>
                  </ul>
              </div>
            </div>
        </nav>
        <center style = "padding-top: 70px;">
            <table style = "padding-top: 70px; width: 30%;">
                <tr>
                    <td>
                        <h4>Motivational Quote of the Day</h4>
                        <img width="300" height="300" src="sunday.jpg">
                    </td>
                    <td>
                        <h1 style="font-size:130px; padding-left: 30px">MOTIVATIONAL COMMENTS</h1>
                    </td>
                </tr>
            </table>
            <hr>
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                     <center><div style ="width: 70%" class="panel panel-default">
                        <div style ="text-align: left" class="panel-body">                   
                                        <b><asp:Label ID="lblUser" runat="server"
            Text='<%# Eval("userName") %>' /></b>
                                    &nbsp says &nbsp
                                        <asp:Label ID="lblMessage" runat="server"
            Text='<%# Eval("message") %>' />
                            </div>
                         </div></center>
                     </ItemTemplate>
                </asp:Repeater>

            <h2>Add a Suppourtive Comment here!</h2>
            <form style ="padding-top: 30px" id="form2" runat="server">
                <div>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style5">Username:</td>
                            <td class="auto-style6">
                                <asp:TextBox ID="txtUserName" runat="server" Width="235px"></asp:TextBox>
                            </td>
                            <td class="auto-style7">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style2">Message:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtMessage" runat="server" Height="101px" Width="238px"></asp:TextBox>
                            </td>
                         </tr>
                        <tr>
                            <td class="auto-style10">
                                 &nbsp;</td>
                            <td colspan="2">
                                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
                            </td>
                        </tr>
                        </table>
                        <table style ="padding-top: 30px;">
                        <tr>
                            <td>
                            <table class="auto-style14" border="3" style="font-size: x-large; font-weight: 100; padding: 20px; margin: 20px">
                                <asp:Repeater ID="rptComments" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                        <!--<asp:Label ID="lblUser" runat="server"
            Text='<%# Eval("userName") %>' />
                                    &nbsp says &nbsp
                                        <asp:Label ID="lblMessage" runat="server"
            Text='<%# Eval("message") %>' />--></td>
                                            </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                   </table>
                            </td>
                        </tr>
                    </table>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [userName], [message] FROM [MessageData]"></asp:SqlDataSource>
                </div>
            </form>
        </center>
        <div align="right" style="border:1px solid red; background-color: red">
        <div align="right" style="border:1px solid red; background-color: #A80000; padding-bottom: 20px">
            <center>
            
            <div style = "padding-top: 20px" id="share-buttons">
    
            <!-- Buffer -->
            <a href="https://bufferapp.com/add?url=https://simplesharebuttons.com&amp;text=Simple Share Buttons" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/buffer.png" alt="Buffer" />
            </a>

            <!-- Digg -->
            <a href="http://www.digg.com/submit?url=https://simplesharebuttons.com" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/diggit.png" alt="Digg" />
            </a>

            <!-- Email -->
            <a href="mailto:?Subject=Simple Share Buttons&amp;Body=I%20saw%20this%20and%20thought%20of%20you!%20 https://simplesharebuttons.com">
                <img src="https://simplesharebuttons.com/images/somacro/email.png" alt="Email" />
            </a>

            <!-- Facebook -->
            <a href="http://www.facebook.com/sharer.php?u=https://simplesharebuttons.com" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
            </a>

            <!-- Google+ -->
            <a href="https://plus.google.com/share?url=https://simplesharebuttons.com" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
            </a>

            <!-- LinkedIn -->
            <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=https://simplesharebuttons.com" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/linkedin.png" alt="LinkedIn" />
            </a>

            <!-- Pinterest -->
            <a href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());">
                <img src="https://simplesharebuttons.com/images/somacro/pinterest.png" alt="Pinterest" />
            </a>

            <!-- Print -->
            <a href="javascript:;" onclick="window.print()">
                <img src="https://simplesharebuttons.com/images/somacro/print.png" alt="Print" />
            </a>

            <!-- Reddit -->
            <a href="http://reddit.com/submit?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/reddit.png" alt="Reddit" />
            </a>

            <!-- StumbleUpon-->
            <a href="http://www.stumbleupon.com/submit?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/stumbleupon.png" alt="StumbleUpon" />
            </a>

            <!-- Tumblr-->
            <a href="http://www.tumblr.com/share/link?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/tumblr.png" alt="Tumblr" />
            </a>

            <!-- Twitter -->
            <a href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/twitter.png" alt="Twitter" />
            </a>

            <!-- VK -->
            <a href="http://vkontakte.ru/share.php?url=https://simplesharebuttons.com" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/vk.png" alt="VK" />
            </a>

            <!-- Yummly -->
            <a href="http://www.yummly.com/urb/verify?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons" target="_blank">
                <img src="https://simplesharebuttons.com/images/somacro/yummly.png" alt="Yummly" />
            </a>

            </div>
            <br>
            <font color="white"><p style ="text-decoration-color: white"><b>Chapter Title:</b> Business Professionals of America, Health Careers High School Chapter(Christina Schnoke)<br>
            <b>Member Names:</b> Teja Ambati, Abhishek Thurlapari, Aaron Samuel, Chandler Walker<br>
            <b>Theme: </b> Drug Addiction<br>
            <b>School: </b> Health Careers High School<br>
            <b>City: </b> San Antonio<br>
            <b>State: </b> Texas<br>
            <b>Year: </b> 2016<p></font></center>
          </div>
        </div>
    </body>
</html>
