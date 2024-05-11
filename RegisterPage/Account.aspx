<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="RegisterPage.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Profile </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="Css/style.css" rel="stylesheet" />
    <style>
        .welcome-message {
    font-size: 18px;
    font-weight: bold;
    color: #363062;
    padding-left:5px;
}.btn{
    background-color: hsl(38, 61%, 73%);
    color: hsla(0, 0%, 13%, 1);
}

.btn:hover {
    background-color: hsla(0, 0%, 13%, 1);
    color: hsl(38, 61%, 73%);
}

.ui-w-80 {
    width : 80px !important;
    height: auto;
}

.btn-default {
    border-color:  hsla(0, 0%, 13%, 1);
    background  : rgba(0, 0, 0, 0);
    color       : #4E5155;
}

label.btn {
    margin-bottom: 0;
}

.btn-outline-primary {
    border-color:hsla(0, 0%, 13%, 1);
    background  : transparent;
    color       :hsla(0, 0%, 13%, 1);
}

.btn {
    cursor: pointer;
}

.text-light {
    color:hsla(0, 0%, 13%, 1)!important;
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
       <div class="container light-style flex-grow-1 container-p-y">
        <h4 class="font-weight-bold py-3 mb-4">
            Account settings
        </h4>
        <div class="card overflow-hidden">
            <div class="row no-gutters row-bordered row-border-light">
                <div class="col-md-3 pt-0">
                    <div class="list-group list-group-flush account-settings-links">
                        <a class="list-group-item list-group-item-action active" data-toggle="list"
                            href="#account-general">General</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-change-password">Change password</a>
                        <a class="list-group-item list-group-item-action" data-toggle="list"
                            href="#account-info">Info</a>

                       

                    </div>
                </div>
              <div class="col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="account-general">
                            <div class="card-body media align-items-center">
                               <asp:Image ID="img" src="images/user.jpg" alt
                                    class="d-block ui-w-80"  runat="server" />
                                <asp:Label ID="lblWelcomeMessage" runat="server" CssClass="welcome-message"></asp:Label>
                            </div>

                            <hr class="border-light m-0">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label">Username</label>
                                    <asp:TextBox ID="txt_username" class="form-control mb-1" value="" runat="server"></asp:TextBox>
                                     <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>

                                </div>
                                <div class="form-group">
                                    <label class="form-label">Name</label>
                                    <asp:TextBox ID="txt_name" class="form-control" value="" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail</label>
                                    <asp:TextBox ID="txt_email" class="form-control mb-1" value="" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                                 <div class="text-right mt-3">
                      <asp:Button ID="save_btn" runat="server" Text="Save Changes" class="btn btn-primary" OnClick="save_btn_Click" />&nbsp;
                      <asp:Button ID="cancel_btn" runat="server" Text="Cancel" Onclick="cancel_btn_Click" class="btn btn-default" />
                               </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-change-password">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Current password</label>
                                    <asp:TextBox ID="txt_password" class="form-control" TextMode="Password" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label class="form-label">New password</label>
                                    <asp:TextBox ID="txt_newpass" class="form-control"  TextMode="Password" runat="server"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label class="form-label">Confirm new password</label>
                                   <asp:TextBox ID="txt_confpass" class="form-control"  TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                             <asp:Label ID="label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </div>
                               <div class="text-right mt-3">
                           <asp:Button ID="btn_changepsw" runat="server" Text="Update" class="btn btn-primary" OnClick="btn_changepsw_Click"  />
                           <asp:Button ID="Button1" runat="server" Text="Cancel" Onclick="cancel_btn_Click" class="btn btn-default" />

                        </div>
                        </div>
                        <div class="tab-pane fade" id="account-info">
                            <div class="card-body pb-2">
                               
                      
                                <div class="form-group">
                                    <label class="form-label">Country</label>
                                    <select class="custom-select" id="country" runat="server">
                                        <option>Egypt</option>
                                        <option>USA</option>
                                        <option>Canada</option>
                                        <option>UK</option>
                                        <option>Germany</option>
                                        <option>France</option>

                                    </select>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Contacts</h6>
                                <div class="form-group">
                                    <label class="form-label">Phone</label>
                            <asp:TextBox ID="phone" class="form-control"  value="" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                       
                        <div class="tab-pane fade" id="account-notifications">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Activity</h6>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Email me when someone comments on my article</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Email me when someone answers on my forum
                                            thread</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input">
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Email me when someone follows me</span>
                                    </label>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body pb-2">
                                <h6 class="mb-4">Application</h6>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">News and announcements</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input">
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Weekly product updates</span>
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label class="switcher">
                                        <input type="checkbox" class="switcher-input" checked>
                                        <span class="switcher-indicator">
                                            <span class="switcher-yes"></span>
                                            <span class="switcher-no"></span>
                                        </span>
                                        <span class="switcher-label">Weekly blog digest</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">

    </script>






    </form>
</body>
</html>
