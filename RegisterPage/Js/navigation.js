document.addEventListener("DOMContentLoaded", function () {
    // Get the button elements
    var signInButton = document.getElementById("signInButton");
    var signInPageButton = document.getElementById("signInPageButton");
    var signUpPageButton = document.getElementById("signUpPageButton");

    // Event listener for Sign In button in create.aspx
    signInButton.addEventListener("click", function () {
        // Navigate to sign.aspx
        window.location.href = "sign.aspx";
    });

    // Event listener for Sign In button in sign.aspx
    signInPageButton.addEventListener("click", function () {
        // Navigate to create.aspx
        window.location.href = "create.aspx";
    });

    // Event listener for Sign Up button in sign.aspx
    signUpPageButton.addEventListener("click", function () {
        // Navigate to create.aspx
        window.location.href = "create.aspx";
    });
});
document.addEventListener("DOMContentLoaded", function () {
    // Get the button element
    var joinUsButton = document.getElementById("<%= btnJoinUs.ClientID %>");

    // Event listener for Join Us button
    joinUsButton.addEventListener("click", function () {
        // Navigate to the register.aspx page
        window.location.href = "register.aspx";
    });
});
