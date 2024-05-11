<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RegisterPage.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Eventique</title>
  <link rel="shortcut icon" href="./favicon.svg" type="image/svg+xml">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&family=Forum&display=swap" rel="stylesheet">
    <link href="Css/html.css" rel="stylesheet" />
    <style>
        .preload .text {
    background-image: var(--loading-text-gradient);
    background-size: 500%;
    font-size: calc(2rem + 3vw);
    font-weight: var(--weight-bold);
    line-height: 1em;
    text-transform: uppercase;
    letter-spacing: 16px;
    padding-inline-start: 16px;
    -webkit-text-fill-color: transparent; /* For modern browsers */
    animation: loadingText linear 2s infinite;
}.dropdown-content .button ,#lblUserName {
  background-color: #FAF6F0;
  color: hsla(0, 3%, 7%, 1);
  padding: 12px 16px;
  cursor: pointer;
  width: 100%;
  text-align: center;
}

.dropdown-content .button:hover {
  background-color: hsl(38, 61%, 73%);
}
.btn {
    display: block;
        background: none;
    border: none;
    font: inherit;
  position: relative;
  color: var(--gold-crayola);
  font-size: var(--fontSize-label-2);
  font-weight: var(--weight-bold);
  text-transform: uppercase;
  letter-spacing: var(--letterSpacing-5);
  max-width: max-content;
  border: 2px solid var(--gold-crayola);
  padding: 12px 45px;
  overflow: hidden;
  z-index: 1;
  transition: all var(--transition-2);
  cursor: pointer;
}

.btn::before {
  content: "";
  position: absolute;
  bottom: 100%;
  left: 50%;
  transform: translateX(-50%);
  width: 200%;
  height: 200%;
  border-radius: var(--radius-circle);
  background-color: var(--gold-crayola);
  transition: all var(--transition-2);
  z-index: -1;
}

.btn .text { transition: all var(--transition-1); }

.btn .text-2 {
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translateX(-50%);
  min-width: max-content;
  color: var(--smoky-black-1);
}

.btn:hover::before { bottom: -50%; }

.btn:hover .text-1 { transform: translateY(-40px); }

.btn:hover .text-2 {
  top: 50%;
  transform: translate(-50%, -50%);
}

.btn-secondary {
  background-color: var(--gold-crayola);
  color: var(--black);
}

.btn-secondary::before { background-color: var(--smoky-black-1); }

.btn-secondary .text-2 { color: var(--white); }

.has-before,
.has-after {
  position: relative;
  z-index: 1;
}

.has-before::before,
.has-after::after {
  content: "";
  position: absolute;
}

.input .input-field {
    background-color: var(--eerie-black-2);
    color: var(--white);
    height: 56px;
    padding: 10px 20px;
    border: 1px solid var(--white-alpha-10);
    margin-block-end: 20px;
    outline: none;
    transition: border-color var(--transition-2);
    display: block;
        background: none;
    border: none;
    font: inherit;
        width: 100%;
    outline: none;
}
  
  .input-field::placeholder { color: inherit; }
  
  .input-field:focus { border-color: var(--gold-crayola); }
  

    </style>
</head>
<body id="top">
    <form id="form1" runat="server">
       <div class="preload" data-preaload>
    <div class="circle"></div>
    <p class="text">Eventique</p>
  </div>

  <header class="header" data-header>
    <div class="container">

      
      <nav class="navbar" data-navbar>

        <button class="close-btn" aria-label="close menu" data-nav-toggler>
          <ion-icon name="close-outline" aria-hidden="true"></ion-icon>
        </button>

       

        <ul class="navbar-list">

          <li class="navbar-item">
            <a href="#home" class="navbar-link hover-underline active">
              <div class="separator"></div>

              <span class="span">Home</span>
            </a>
          </li>

          <li class="navbar-item">
            <a href="Event.aspx" class="navbar-link hover-underline">
              <div class="separator"></div>

              <span class="span">Events</span>
            </a>
          </li>

          <li class="navbar-item">
            <a href="Gallery.aspx" class="navbar-link hover-underline">
              <div class="separator"></div>

              <span class="span">Gallary</span>
            </a>
          </li>

          <li class="navbar-item">
            <a href="Team.aspx" class="navbar-link hover-underline">
              <div class="separator"></div>

              <span class="span">Our Team</span>
            </a>
          </li>

          <li class="navbar-item">
            <a href="FAQ.aspx" class="navbar-link hover-underline">
              <div class="separator"></div>

              <span class="span">FAQ</span>
            </a>
          </li>

        </ul>

       

      </nav>

      
       <asp:Panel ID="pnlAccountDropdown" runat="server" Visible="false">
      <li class="account-dropdown">
        <img src="images/acc-removebg-preview.png" alt="Account">
        <div class="dropdown-content">
      <span>
        <asp:Label ID="lblUserName" runat="server"></asp:Label>
      </span>            
            <asp:Button ID="mycc_btn" runat="server" Text="My Account" CssClass="button"  OnClick="mycc_btn_Click"/>
            <asp:Button ID="signout_btn" runat="server" Text="Sign Out" CssClass="button" OnClick="signout_btn_Click" />
        </div>
      </li>
       </asp:Panel>
      <button class="nav-toggle-btn" aria-label="open manu" data-nav-toggler>
        <ion-icon name="menu-outline" aria-hidden="true"></ion-icon>
      </button>
      

      <div class="overlay" data-nav-toggler data-overlay></div>

    </div>
  </header>





  <main>
    <article>

      <section class="hero text-center" aria-label="home" id="home">

        <ul class="hero-slider" data-hero-slider>

          <li class="slider-item active" data-hero-slider-item>

            <div class="slider-bg">
              <img src="images/123.jpg" width="1880" height="950" alt="" class="img-cover">
            </div>

            <p class="label-2 section-subtitle slider-reveal">DESIGN & PLANING</p>

            <h1 class="display-1 hero-title slider-reveal">
              Plan your event <br>in one click
            </h1>

            <p class="body-2 hero-text slider-reveal">
              Effortlessly plan your event with us! Find venues, caterers, and more. Start planning today!            </p>

            <a href="SignIn.aspx" class="btn btn-primary slider-reveal">
              <span class="text text-1">Join Us</span>

              <span class="text text-2" aria-hidden="true">Join Us</span>
            </a>

          </li>

          

        </ul>

        

      </section>



      <section class="section service bg-black-10 text-center" aria-label="service">
        <div class="container">

          <p class="section-subtitle label-2">Services</p>

          <h2 class="headline-1 section-title">We Offer lots Services</h2>

          <p class="section-text">
            With us, you have the freedom to pick the perfect day for your event.
            We offer the option to customize your event according to your preferences.
            
          </p>

          <ul class="grid-list">

            <li>
              <div class="service-card">

                <a href="#" class="has-before hover:shine">
                  <figure class="card-banner img-holder" style="--width: 285; --height: 336;">
                    <img src="images/book.jpeg" width="285" height="336" loading="lazy" alt=""
                      class="img-cover">
                  </figure>
                </a>

                <div class="card-content">

                  <h3 class="title-4 card-title">
                    <a href="#">Book</a>
                  </h3>

                  

                </div>

              </div>
            </li>

            <li>
              <div class="service-card">

                <a href="#" class="has-before hover:shine">
                  <figure class="card-banner img-holder" style="--width: 285; --height: 336;">
                    <img src="images/customize.jpeg" width="285" height="336" loading="lazy" alt=""
                      class="img-cover">
                  </figure>
                </a>

                <div class="card-content">

                  <h3 class="title-4 card-title">
                    <a href="#">customize</a>
                  </h3>


                </div>

              </div>
            </li>

            <li>
              <div class="service-card">

                <a href="#" class="has-before hover:shine">
                  <figure class="card-banner img-holder" style="--width: 285; --height: 336;">
                    <img src="images/supply.jpeg" width="285" height="336" loading="lazy" alt=""
                      class="img-cover">
                  </figure>
                </a>

                <div class="card-content">

                  <h3 class="title-4 card-title">
                    <a href="#">Supply</a>
                  </h3>


                </div>

              </div>
            </li>

          </ul>

          

        </div>
      </section>



      <section class="section about text-center" aria-labelledby="about-label" id="about">
        <div class="container">

          <div class="about-content">

            <p class="label-2 section-subtitle" id="about-label">Our Story</p>

            <h2 class="headline-1 section-title">Every Step Tells a Story</h2>

            <p class="section-text">
              our story began as a simple idea- that a fundamental shift is happening for the first time in history,
               where young people are placing more value on experiences than material things. A bold leap of faith was taken,
                and one year later, we produced our first event in Alex,Egypt.
            </p>

            <div class="contact-label">Book Through Call</div>

            <a href="tel:+804001234567" class="body-1 contact-number hover-underline">+20 01022334556</a>

    

          </div>

          <!-- vedio-->
          <video src="images/video story.mp4" width="600px" controls autoplay muted loop></video>

        </div>
      </section>





      <section class="special-dish text-center" aria-labelledby="dish-label">

        <div class="special-dish-banner">
          <img src="images/our teamm.jpeg" width="940" height="900" loading="lazy" alt="our team"
            class="img-cover">
        </div>

        <div class="special-dish-content bg-black-10">
          <div class="container">

          

            <p class="section-subtitle label-2">Our team</p>

            <h2 class="headline-1 section-title">10+ YEARS OF EXPERIENCE</h2>

            <p class="section-text">
              Our team is a tight-knit group of passionate professionals dedicated to crafting unforgettable events. 
              With expertise in event planning, design, coordination, and more, we work seamlessly together to bring your vision to life.
               From start to finish, we're committed to excellence and ensuring every detail exceeds your expectations.
            </p>

            

            <a href="#" class="btn btn-primary">
              <span class="text text-1">Meet Our Team</span>

              <span class="text text-2" aria-hidden="true">Meet Our Team</span>
            </a>

          </div>
        </div>


      </section>





      <section class="section course" aria-label="course" id="course" data-section>
        <div class="container">

          <div class="title-wrapper">
            <p class="section-subtitle">10+ packages Available</p>

           
          </div>

          <ul class="grid-list">

            <li>
              <div class="course-card">

                <figure class="card-banner img-holder" style="--width: 350; --height: 300;">
                  <img src="images/Romantic Charleston Fall Wedding.jpeg" width="350" height="300" loading="lazy"
                    alt="" class="img-cover">
                </figure>

                <div class="card-content">


                  

                  <h3 class="h3">
                    <a href="#" class="card-title">Wedding</a>
                  </h3>
                  <h>The Union of love and the start of a long lived compannionship between our dearest clients Layla Ahmed and Omar Hassan

                    April 20, 2022,
                    Client Rating: ★★★★</h>

                  <ul class="card-meta-list">

                    
                   

                  </ul>

                </div>

              </div>
            </li>

            

            <li>
              <div class="course-card">

                <figure class="card-banner img-holder" style="--width: 350; --height: 300;">
                  <img src="images/ted.jpeg" width="350" height="300" loading="lazy"
                    alt="" class="img-cover">
                </figure>

                <div class="card-content">

                  

                  

                  <h3 class="h3">
                    <a href="#" class="card-title">TED Talks</a>
                  </h3>

                  <h>An Enlightening TED Talk by Youssef Al-Mansouri as they delve into the captivating world of "The Future of Artificial Intelligence in Healthcare.

                    May 15, 2021
                    Client Rating: ★★★½</h>

                  
                </div>

              </div>
            </li>

            <li>
              <div class="course-card">

                <figure class="card-banner img-holder" style="--width: 350; --height: 300;">
                  <img src="images/prof.jpg" width="350" height="300" loading="lazy"
                    alt="Expertise on Fitness, Nutrition and Health" class="img-cover">
                </figure>

                <div class="card-content">

                



                  <h3 class="h3">
                    <a href="#" class="card-title">Business Conferences</a>
                  </h3>

                  <h>LearnTech Summit hosted by EduInnovate as they explore the future of education and learning technologies.

                    June 10-12, 2021
                    Client Rating: ★★★★★</h>

                </div>

              </div>
            </li>

            <li>
              <div class="course-card">

                <figure class="card-banner img-holder" style="--width: 350; --height: 300;">
                  <img src="images/birthdays.jpeg" width="350" height="300" loading="lazy"
                    alt="" class="img-cover">
                </figure>

                <div class="card-content">

                 

                  

                  <h3 class="h3">
                    <a href="#" class="card-title">Birthdays</a>
                  </h3>

                  <h>A birthday is a special celebration marking the anniversary of one's birth, 
                    a day to rejoice in the journey of life and to reflect on the past year's growth and experiences.

                   
                    Client Rating: ★★★½</h>

                  
                </div>

              </div>
            </li>

           

          </ul>

        </div>
      </section>




      <section class="section testi text-center has-bg-image"
        >
        <div class="container">

          


          <div class="wrapper">
            <div class="separator"></div>
            <div class="separator"></div>
            <div class="separator"></div>
          </div>

          

        </div>
      </section>




      <section class="reservation">
        <div class="container">

          <div class="form reservation-form bg-black-10">

            <div action="" id="form" class="form-left">

              <h2 class="headline-1 text-center">Your Feedback</h2>

              

              <div class="input-wrapper">
                  <asp:TextBox ID="txt_fnam" runat="server" name="First name" placeholder="First Name" autocomplete="off" class="input input-field"></asp:TextBox>

               <asp:TextBox ID="txt_lname" runat="server" name="Last name" placeholder="Last Name" autocomplete="off" class="input input-field"></asp:TextBox>
              </div>

              <div class="input-wrapper">
                 <asp:TextBox ID="txt_email" runat="server" name="email" placeholder="Email" autocomplete="off" class="input input-field"></asp:TextBox>


                <input type="tel" name="phone" placeholder="Phone Number" autocomplete="off" class="input-field">
              </div>

              <textarea name="message" placeholder="Message" autocomplete="off" class="input-field"></textarea>

<%--                <span class="text text-1">Send</span>
                <span class="text text-1" aria-hidden="true">Send</span>--%>

                  <asp:Button ID="btn_send" runat="server" Text="Send"  class="btn btn-secondary" OnClick="btn_send_Click" />

            </div>

            <div class="form-right text-center" style="background-image: url('imgs/3h.jpg')">

              <h2 class="headline-1 text-center">Contact Us</h2>

              <p class="contact-label">Phone</p>

              <a href="tel:+88123123456" class="body-1 contact-number hover-underline">+20 01022334556</a>

              <div class="separator"></div>

              <p class="contact-label">Location</p>

              <address class="body-4">
               EL Salam St, Alex City, <br>
                 Egypt
              </address>

              <p class="contact-label">Opening Time</p>

              <p class="body-4">
               The website is Available <br>24/7
              </p>

             

            </div>

          </div>

        </div>
      </section>





      <!-- 
        - #FEATURES
      -->

      <section class="section features text-center" aria-label="features">
        <div class="container">

          <p class="section-subtitle label-2">Why Choose Us</p>

          <h2 class="headline-1 section-title">Our Strength</h2>

          <ul class="grid-list">

            <li class="feature-item">
              <div class="feature-card">

                <div class="card-icon">
                  <img src="images/team work.jpeg" width="100" height="80" loading="lazy" alt="icon">
                </div>

                <h3 class="title-2 card-title">Team Work</h3>

                <p class="label-1 card-text">Teamwork is a critical component of success in nearly every field and environment,
                   from professional workplaces to sports</p>

              </div>
            </li>

            <li class="feature-item">
              <div class="feature-card">

                <div class="card-icon">
                  <img src="images/Wedding backdrop.jpeg" width="100" height="80" loading="lazy" alt="icon">
                </div>

                <h3 class="title-2 card-title">Good materials</h3>

                <p class="label-1 card-text">Good materials are the backbone of any successful project, whether it's construction, manufacturing, 
                  or even creative endeavors like art or design. </p>

              </div>
            </li>

            <li class="feature-item">
              <div class="feature-card">

                <div class="card-icon">
                  <img src="images/spo.jpeg" width="100" height="80" loading="lazy" alt="icon">
                </div>

                <h3 class="title-2 card-title">Egyption Sponsers</h3>

                <p class="label-1 card-text">We support Palestine, we advocating for human rights ,justice to providing humanitarian aid
                   ,promoting peaceful dialogue</p>

              </div>
            </li>

            <li class="feature-item">
              <div class="feature-card">

                <div class="card-icon">
                  <img src="images/time.jpeg" width="100" height="80" loading="lazy" alt="icon">
                </div>

                <h3 class="title-2 card-title">Punctuality</h3>

                <p class="label-1 card-text">Punctuality is the habit of being on time or completing tasks within the designated time frame.
                   It's a valuable trait that is highly regarded in personal, professional, and social settings</p>

              </div>
            </li>

          </ul>

         

        </div>
      </section>





      
  <!-- 
    - #FOOTER
  -->

  <footer class="footer section has-bg-image text-center"
    style="background-image: url('./assets/images/footer-bg.jpg')">
    <div class="container">

      <div class="footer-top grid-list">

        <div class="footer-brand has-before has-after">

          <a href="#" class="logo">
            <img src="images/logo5-removebg-preview.png" width="160" height="50" loading="lazy" alt="Eventique home">
          </a>

          <address class="body-4">
            EL Salam St, Alex City, 
            Egypt
          </address>

          <a href="mailto:booking@grilli.com" class="body-4 contact-link">Eventique@gmail.com</a>

          <a href="tel:+88123123456" class="body-4 contact-link">Booking Request : +20 01022334556</a>

          <p class="body-4">
            Open : 24/7
          </p>

          <div class="wrapper">
            <div class="separator"></div>
            <div class="separator"></div>
            <div class="separator"></div>
          </div>

          <p class="title-1">Get News & Offers</p>

          <p class="label-1">
            Subscribe us & Get <span class="span">25% Off.</span>
          </p>

          <div action="" id="form2" class="input-wrapper">
            <div class="icon-wrapper">
              <ion-icon name="mail-outline" aria-hidden="true"></ion-icon>

              <input type="email" name="email_address" placeholder="Your email" autocomplete="off" class="input-field">
            </div>

            <button type="submit" class="btn btn-secondary">
              <span class="text text-1">Subscribe</span>

              <span class="text text-2" aria-hidden="true">Subscribe</span>
            </button>
          </div>

        </div>

        <ul class="footer-list">

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Home</a>
          </li>

          <li>
            <a href="PrivacyPolicies.aspx" class="label-2 footer-link hover-underline">Privacy Policy</a>
          </li>

          <li>
            <a href="#" class="label-2 footer-link hover-underline">About Us</a>
          </li>

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Our Team</a>
          </li>

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Contact</a>
          </li>

        </ul>

        <ul class="footer-list">

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Facebook</a>
          </li>

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Instagram</a>
          </li>

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Twitter</a>
          </li>

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Youtube</a>
          </li>

          <li>
            <a href="#" class="label-2 footer-link hover-underline">Google Map</a>
          </li>

        </ul>

      </div>

      

    </div>
  </footer>



  <a href="#top" class="back-top-btn active" aria-label="back to top" data-back-top-btn>
    <ion-icon name="chevron-up" aria-hidden="true"></ion-icon>
  </a>


  <script src="Js/home.js"></script>

  
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>












    </form>
</body>
</html>
