<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="RegisterPage.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Css/faq.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">                            
    <title>FAQ</title>
    <style>
        .header {
    background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url('images/header.jpeg');
    background-position: top center;
    background-repeat: no-repeat;
    background-size: cover;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 5% 3%;
    border-radius: 30px;
    max-height: 380px;
    color: var(--whitecolor);
}

    </style>
</head>

<body>
    <form id="form1" runat="server">
  <div class="header">
        <h1 class="header-title">FAQ</h1>
        <p class="header-desc">Frequently Ask question</p>

        
     <br><br><br><br><br><br><br><br><br>
    <div class="faq">
        <div class="faq-name">
            <h1 class="faq-header">Have <br>question?</h1>
            <img class="faq-img" src="images/FAQ-removebg.png">
        </div>
        <div class="faq-box">
            <div class="faq-wrapper">
                <input type="checkbox" class="faq-trigger" id="faq-trigger-1">
                <label class="faq-title" for="faq-trigger-1">What types of events do you plan?</label>
              <div class="faq-datail">
                <p>
                    We specialize in planning a wide range of events to suit various needs and occasions. Our expertise spans from intimate gatherings such as birthday parties, baby showers, and anniversary celebrations to large-scale events like weddings, corporate conferences, product launches, and charity galas.
                </p>
              </div>
            </div>


            <div class="faq-wrapper">
                <input type="checkbox" class="faq-trigger" id="faq-trigger-2">
                <label class="faq-title" for="faq-trigger-2">What services do you offer?</label>
              <div class="faq-datail">
                <p>
                    We offer a range of services, including venue selection, catering, decorations, entertainment, and more. We can customize our services to meet your specific needs.
                </p>
              </div>
            </div>


            <div class="faq-wrapper">
                <input type="checkbox" class="faq-trigger" id="faq-trigger-3">
                <label class="faq-title" for="faq-trigger-3">How much does event planning cost?</label>
              <div class="faq-datail">
                <p>
                    The cost depends on factors like the type of event, number of guests, services required, and your budget. We'll work with you to create a package that fits your needs and budget.
                </p>
              </div>
            </div>

            <div class="faq-wrapper">
                <input type="checkbox" class="faq-trigger" id="faq-trigger-4">
                <label class="faq-title" for="faq-trigger-4">Do you provide event coordination on the day of the event?</label>
              <div class="faq-datail">
                <p>
                    Yes, our team will be there on the day of your event to ensure everything runs smoothly and according to plan.
                </p>
              </div>
            </div>

            <div class="faq-wrapper">
                <input type="checkbox" class="faq-trigger" id="faq-trigger-5">
                <label class="faq-title" for="faq-trigger-5">How far in advance should I book my event?</label>
              <div class="faq-datail">
                <p>
                    It's best to book your event as early as possible to secure your preferred date and services. However, we can accommodate last-minute bookings based on availability.
                </p>
              </div>
            </div>

            <div class="faq-wrapper">
                <input type="checkbox" class="faq-trigger" id="faq-trigger-5">
                <label class="faq-title" for="faq-trigger-5">What measures do you take to ensure safety and security at events?</label>
              <div class="faq-datail">
                <p>
                    We prioritize the safety and security of all attendees and implement measures such as crowd management, emergency planning, and coordination with security personnel as needed.
                </p>
              </div>
            </div>

           <div class="faq-wrapper">
                <input type="checkbox" class="faq-trigger" id="faq-trigger-5">
                <label class="faq-title" for="faq-trigger-5">Do you offer post-event services such as follow-up surveys or feedback collection?</label>
              <div class="faq-datail">
                <p>
                    
                </p>Yes, we can assist with post-event activities such as gathering feedback from attendees, analyzing data, and providing insights for future event planning.
              </div>
            </div>


            
        </div>
    </div>






    </form>
</body>
</html>
