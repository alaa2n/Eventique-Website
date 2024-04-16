<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="RegisterPage.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eventique - Home</title>
    <link href="Css/Home.css" rel="stylesheet" />
    <script src="Js/navigation.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Damion&display=swap" rel="Home">
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <div class="logo">
                <img src="images/logo.png" />
            </div>
            <ul class="nav-links">
                <li><a href="home.aspx" target="_blank">Home</a></li>
                <li><a href="events.aspx" target="_blank">Events</a></li>
                <li><a href="services.aspx" target="_blank">Services</a></li>
                <li><a href="schedule.aspx" target="_blank">Schedule</a></li>
                <li><a href="faq.aspx" target="_blank">FAQ</a></li>
            </ul>
        </nav>
        <div class="background-image"></div>
        <div class="blurry-text">
            <h1>Eventique,<br> Your Gateway to Unforgettable Memories</h1>
        </div>
        <div class="join-button-container">
            <asp:Button ID="btnJoinUs" runat="server" Text="Join Us" CssClass="join-button" OnClick="btnJoinUs_Click" />
        </div>
        <div id="about-us-container" class="about-us-container">

   <div class="about-us-text">
     <h3 id="heading"> ABOUT US </h3>
     <p>
       <b> Our event planning website offers a comprehensive 
         suite of services designed to make every occasion 
         special. Whether it's a private party, a corporate
          event, or a grand wedding, we manage all aspects 
          such as venue selection, catering, decorations,
           and entertainment. Our dedicated team ensures
            every detail is handled with care, delivering a 
            customized and memorable experience for all 
            attendees. 
     </p>

     <div class="last-text">

       <div class="text1">
         <h3>100+</h3>
         <h5>PROJECT DONE!</h5>
       </div>
 
         <div class="text2">
           <h3>500+</h3>
           <h5>SATESFIED CLIENTS</h5>
         </div>
     </div>

   </div>

   <div class="about-us-img">
     <img src="images/about.jpg" alt="About Us Image">

     
   
   </div>
   


   </div>
 

 <div id = "services-container" class="services-container">

   <div class="service-header">
     <h2> What Do We Provide? </h2>
   </div>

   <div class="service">
     <div class="border-dashed"> </div>
     <img src="img/book.png">
     <h3>Book</h3>
     <p>With us, you have the freedom to pick the perfect day 
       for your event. Our user-friendly interface lets you browse
       through available dates with ease, ensuring that you can secure 
       the ideal time for your special occasion.</p>
   </div>

   <div class="service">
     <div class="border-dashed"> </div>
     <img src="img/Event-design.png">
     <h3>Customize</h3>
     <p>We offer the option to customize your 
       event according to your preferences. If none of our pre-packaged
       options quite fit the bill, we'll work with you to create
       a personalized experience </p>
   </div>

   <div class="service">
     <div class="border-dashed"> </div>
     <img src="img/supply.png">
     <h3>Supply</h3>
     <br>
     <p>Eventique provides access to a wide range of catering services, including bakeries, DJs, and more. Whatever you need to make your event a success, you'll find it right here.</p>
   </div>

   <a href="services.html" target="_blank" class="service-button">Learn More</a>

 </div>


 <div class="card-contianer">
   <h2> Events & Conferences  </h2>

   <div class="card">
     <img src="img/wedding.jpeg" alt=""wedding>
     <div class="card-content">
       <h3> Weddings</h3>
       <hr>
       <p>The Union of love and the start of a long lived compannionship between our dearest clients Layla Ahmed and Omar Hassan <br>
          <br> 
          April 20, 2022, <br>
          Client Rating: ★★★★ </p>
         
       <a href="events.html" target="_blank" class="event-button">Read More</a>
     </div>
   </div>

   <div class="card">
     <img src="img/ted.jpeg" alt=""wedding>
     <div class="card-content">
       <h3> TED Talks</h3>
       <hr>
       <p>An Enlightening TED Talk by Youssef Al-Mansouri as 
         they delve into the captivating world of "The Future of 
         Artificial Intelligence in Healthcare. <br><br>

         May 15, 2021 <br>
         Client Rating: ★★★½</p>
       <a href="events.html" target="_blank" class="event-button">Read More</a>
     </div>
   </div>

   <div class="card">
     <img src="img/prof.jpg" alt=""wedding>
     <div class="card-content">
       <h3> Business Conferences</h3>
       <hr>
       <p>LearnTech Summit hosted by EduInnovate as they 
         explore the future of education and learning technologies.

         <br><br>
         June 10-12, 2021 <br>
         Client Rating: ★★★★★</p>
       <a href="events.html" target="_blank" class="event-button">Read More</a>
     </div>
   </div>

 </div>

 <div class="loc-container">

   <div class="loc-header">
     <h2> Locations </h2>
   </div>
   
   <div class="loc">
     <br>
     <h3><center>Cairo</center></h3>

     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3452.263289092199!2d31.3230862744092!3d30.086645016572042!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583e240a2a38ff%3A0x364f7d5ee0b53c3!2sEvent%20House%20Egypt!5e0!3m2!1sen!2seg!4v1711066723671!5m2!1sen!2seg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
   </div>

   <div class="loc">
     <br>
     <h3><center>Alexandria</center></h3>
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d873354.2533245819!2d28.7361421882178!3d31.23346990090587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f5c53d3defbc6f%3A0x779216f966fd5e9f!2sVibes%20Events!5e0!3m2!1sen!2seg!4v1711066804331!5m2!1sen!2seg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
     
   </div>
 </div>

        </div>
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h4>Company</h4>
                        <ul>
                            <li><a href="#about-us-container">About us</a></li>
                            <li><a href="#services-container">Our services</a></li>
                            <li><a href="../Policies/policy.aspx" target="_blank">Privacy Policy</a></li>
                            <li><a href="#">Affiliate Program</a></li>
                        </ul>
                    </div>
                    <div class="footer-col">
                        <h4>Sponsors</h4>
                        <div class="sponser-logos">
                            <img src="images/catering.png" />
                            <img src="images/dj.png" />
                            <img src="images/tyson.png" />
                        </div>
                    </div>
                    <div class="footer-col">
                        <h4>Follow us / Contact us</h4>
                        <div class="social-links">
                            <a href="#"><img src="images/facebook_2168281.png" alt="Facebook" /></a>
                            <a href="#"><img src="images/twitter_733635.png" alt="Twitter" /></a>
                            <a href="#"><img src="images/insta.png" alt="Instagram" /></a>
                            <a href="#"><img src="images/tiktok_3116491.png" alt="TikTok" /></a>
                        </div>
                        <div class="email-link">
                            <a href="mailto:Eventique@gmail.com">Eventique@gmail.com</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
