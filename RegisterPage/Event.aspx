<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="RegisterPage.Event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">

    <title>Packages</title>
    <link href="Css/event.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="slider">

        <div class="list">
            <div class="item" >
                <img src="images/wedding/1.png">
            </div>
            <div class="item active">
                <img src="images/wedding/2.png">
            </div>
            <div class="item">
                <img src="images/wedding/3.png">
            </div>
            <div class="item">
                <img src="images/wedding/5.png">
            </div>
            <div class="item">
                <img src="images/wedding/6.png">
            </div>
            <div class="item" >
                <img src="images/Birthday/3.png">
            </div>
            <div class="item" >
                <img src="images/Birthday/7.png">
            </div>
            <div class="item" >
                <img src="images/formal/1.png">
            </div>
            <div class="item" >
                <img src="images/formal/6.png">
            </div>
        </div>
        <div class="circle">
            Pictures from events we have held
        </div>
        <div class="content">
            <div>Our</div>
            <div>Packages</div>         
        </div>
        <div class="arow">
       <%--    <asp:Button ID="prev" runat="server" Text=">" OnClientClick="" />
            <asp:Button ID="next" runat="server" Text=">" OnClientClick="" />--%>
              <button id="prev">></button>
            <button id="next">></button>
        </div>
    </div>


    <p class="section-subtitle"></p>
<br><br>
          <h2 class="h2 section-title has-underline">
            WEDDING & ENGAGEMENTS
            <span class="span has-before"></span>
          </h2>

    <div class="container">
        <div class="item-container">
            <div class="img-container">
                <img src="images/1.jpeg" alt="Event image">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">Elegance</p>
                    <div class="separator"></div>
                    <p class="info">Basic Package</p>
                    <p class="price">45K EGP</p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            Marphella hall
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            For 3 hours
                        </p>

                        <p class="info description">
                            +250 guests<br>
                            Basic decoration options<br>
                            Small events<br>
                            Competitive starting price<br>
                             Photography<br>
                            custom invitations<br>
                        </p>
                    </div>
                </div>
                <asp:Button ID="btn_book1" runat="server" Text="Book it" CssClass="action" Onclick="btn_book1_Click"/>
            </div>
        </div>

        <div class="item-container">
            <div class="img-container">
                <img src="images/2.jpeg" alt="Event image">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">Enchanted</p>
                    <div class="separator"></div>
                    <p class="info">Standard Package</p>
                    <p class="price">65K EGP</p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            Masa Hall
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            For 6 hours
                        </p>

                        <p class="info description">
                          
                            +500 guests<br>
                            More sophisticated decoration options<br>
                            live musical ensemble<br>
                            Professional photography<br>
                            Smooth on-site event<br>
                            Assistance in venue selection<br>
                        </p>
                    </div>
                </div>
               <asp:Button ID="btn_book2" runat="server" Text="Book it" CssClass="action" Onclick="btn_book2_Click"/>

            </div>
        </div>

        <div class="item-container">
            <div class="img-container">
                <img src="images/3.jpeg" alt="Event image">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">Celestial</p>
                    <div class="separator"></div>
                    <p class="info">Premium Package</p>
                    <p class="price">80K EGP</p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            Merage Hall
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            For 10 hours
                        </p>

                        <p class="info description">
                            +750 guests<br>
                            High-quality, themed decorations <br>
                            Luxurious Event Design<br>
                            Professional photography<br>
                            videography<br>
                            Premium food & beverage options<br>
                        </p>
                    </div>
                </div>
               <asp:Button ID="btn_book3" runat="server" Text="Book it" CssClass="action" Onclick="btn_book3_Click"/>
            </div>
        </div>

        

        
               <asp:Button ID="btn_book4" runat="server" Text="Book it" CssClass="action" />
            </div>
        </div>
    </div>

    <div class="container">
        <div class="item-container">
            <div class="img-container">
                <img src="images/4 .jpeg" alt="Event image">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">Love birds</p>
                    <div class="separator"></div>
                    <p class="info">Deluxe Package</p>
                    <p class="price">90K EGP</p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            Grand Hotel
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            For 13 hours
                        </p>

                        <p class="info description">
                          
                            +1000 guests<br>
                            Tailored decoration themes designed <br>
                            VIP Consultation<br>
                            curated menu Food<br>
                            luxury gifts<br>
                            advanced social media promotion<br>
                        </p>
                    </div>
                </div>
               <asp:Button ID="btn_book5" runat="server" Text="Book it" CssClass="action" Onclick="btn_book5_Click"/>
            </div>
        </div>

        <div class="item-container">
            <div class="img-container">
                <img src="images/5.jpeg" alt="Event image">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">Bridal Bliss</p>
                    <div class="separator"></div>
                    <p class="info">Exclusive Package</p>
                    <p class="price">100K EGP</p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            Maradona
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            For 18 hours
                        </p>

                        <p class="info description">
                            +2000 guests<br>
                            Expertly designed décor<br>
                            exclusive gatherings<br>
                            VIP Consultation<br>
                            Luxury Vendor Coordination<br>
                            Dedicated Event Team<br><br>
                        </p>
                    </div>
                </div>
               <asp:Button ID="btn_book6" runat="server" Text="Book it" CssClass="action" Onclick="btn_book6_Click"/>
            </div>
        </div>

        <div class="item-container">
            <div class="img-container">
                <img src="images/6.jpeg" alt="Event image">
            </div>

            <div class="body-container">
                <div class="overlay"></div>

                <div class="event-info">
                    <p class="title">Grand Gala</p>
                    <div class="separator"></div>
                    <p class="info">Ultimate Package</p>
                    <p class="price">150K EGP</p>

                    <div class="additional-info">
                        <p class="info">
                            <i class="fas fa-map-marker-alt"></i>
                            Haven Hall
                        </p>
                        <p class="info">
                            <i class="far fa-calendar-alt"></i>
                            For 24 hours
                        </p>

                        <p class="info description">
                            
                            +5000 guests<br>
                            team of dedicated servers<br>
                            dining experience by Professional chefs<br>
                            Enchanting live musical performances<br>
                            VIP treatment throughout the even<br>
                        </p>
                    </div>
                </div>
               <asp:Button ID="btn_book7" runat="server" Text="Book it" CssClass="action" Onclick="btn_book7_Click"/>
            </div>
        </div>

        

        
               <asp:Button ID="btn_book8" runat="server" Text="Book it" CssClass="action" />
            </div>
        </div>
    </div>



    <p class="section-subtitle"></p>
    <br><br>
              <h2 class="h2 section-title has-underline">
                BIRTHDAYS & ANNIVERSARIES
                <span class="span has-before"></span>
              </h2>
    
        <div class="container">
            <div class="item-container">
                <div class="img-container">
                    <img src="images/b1.jpeg" alt="Event image">
                </div>
    
                <div class="body-container">
                    <div class="overlay"></div>
    
                    <div class="event-info">
                        <p class="title">Joy Bash</p>
                        <div class="separator"></div>
                        <p class="info">Basic Package</p>
                        <p class="price">5.5K EGP</p>
    
                        <div class="additional-info">
                            <p class="info">
                                <i class="fas fa-map-marker-alt"></i>
                                Marphella hall
                            </p>
                            <p class="info">
                                <i class="far fa-calendar-alt"></i>
                                For 3 hours
                            </p>
    
                            <p class="info description">
                                +250 guests<br>
                                Basic decoration options<br>
                                Small events<br>
                                Competitive starting price<br>
                                 Photography<br>
                                custom invitations<br>
                            </p>
                        </div>
                    </div>
               <asp:Button ID="btn_book9" runat="server" Text="Book it" CssClass="action" Onclick="btn_book9_Click"/>
                </div>
            </div>
    
            <div class="item-container">
                <div class="img-container">
                    <img src="images/b2.jpeg" alt="Event image">
                </div>
    
                <div class="body-container">
                    <div class="overlay"></div>
    
                    <div class="event-info">
                        <p class="title">Bliss-Fete</p>
                        <div class="separator"></div>
                        <p class="info">Standard Package</p>
                        <p class="price">10K EGP</p>
    
                        <div class="additional-info">
                            <p class="info">
                                <i class="fas fa-map-marker-alt"></i>
                                Masa Hall
                            </p>
                            <p class="info">
                                <i class="far fa-calendar-alt"></i>
                                For 6 hours
                            </p>
    
                            <p class="info description">
                              
                                +500 guests<br>
                                More sophisticated decoration options<br>
                                live musical ensemble<br>
                                Professional photography<br>
                                Smooth on-site event<br>
                                Assistance in venue selection<br>
                            </p>
                        </div>
                    </div>
               <asp:Button ID="btn_book10" runat="server" Text="Book it" CssClass="action" Onclick="btn_book10_Click"/>
                </div>
            </div>
    
            <div class="item-container">
                <div class="img-container">
                    <img src="images/dd.jpeg" alt="Event image">
                </div>
    
                <div class="body-container">
                    <div class="overlay"></div>
    
                    <div class="event-info">
                        <p class="title">Cheer Chic</p>
                        <div class="separator"></div>
                        <p class="info">Premium Package</p>
                        <p class="price">15K EGP</p>
    
                        <div class="additional-info">
                            <p class="info">
                                <i class="fas fa-map-marker-alt"></i>
                                Merage Hall
                            </p>
                            <p class="info">
                                <i class="far fa-calendar-alt"></i>
                                For 10 hours
                            </p>
    
                            <p class="info description">
                                +750 guests<br>
                                High-quality, themed decorations <br>
                                Luxurious Event Design<br>
                                Professional photography<br>
                                videography<br>
                                Premium food & beverage options<br>
                            </p>
                        </div>
                    </div>
               <asp:Button ID="btn_book11" runat="server" Text="Book it" CssClass="action" Onclick="btn_book11_Click"/>
                </div>
            </div>
    
            
    
            
               <asp:Button ID="btn_book12" runat="server" Text="Book it" CssClass="action" />
                </div>
            </div>
        </div>
    
        <div class="container">
            <div class="item-container">
                <div class="img-container">
                    <img src="images/55.jpeg" alt="Event image">
                </div>
    
                <div class="body-container">
                    <div class="overlay"></div>
    
                    <div class="event-info">
                        <p class="title">Happy-Hoopla</p>
                        <div class="separator"></div>
                        <p class="info">Deluxe Package</p>
                        <p class="price">18K EGP</p>
    
                        <div class="additional-info">
                            <p class="info">
                                <i class="fas fa-map-marker-alt"></i>
                                Grand Hotel
                            </p>
                            <p class="info">
                                <i class="far fa-calendar-alt"></i>
                                For 13 hours
                            </p>
    
                            <p class="info description">
                              
                                +1000 guests<br>
                                Tailored decoration themes designed <br>
                                VIP Consultation<br>
                                curated menu Food<br>
                                luxury gifts<br>
                                advanced social media promotion<br>
                            </p>
                        </div>
                    </div>
               <asp:Button ID="btn_book13" runat="server" Text="Book it" CssClass="action" Onclick="btn_book13_Click"/>
                </div>
            </div>
    
            <div class="item-container">
                <div class="img-container">
                    <img src="images/b4.jpeg" alt="Event image">
                </div>
    
                <div class="body-container">
                    <div class="overlay"></div>
    
                    <div class="event-info">
                        <p class="title">Fun Fiesta</p>
                        <div class="separator"></div>
                        <p class="info">Exclusive Package</p>
                        <p class="price">23K EGP</p>
    
                        <div class="additional-info">
                            <p class="info">
                                <i class="fas fa-map-marker-alt"></i>
                                Maradona Hall
                            </p>
                            <p class="info">
                                <i class="far fa-calendar-alt"></i>
                                For 18 hours
                            </p>
    
                            <p class="info description">
                                +2000 guests<br>
                                Expertly designed décor<br>
                                exclusive gatherings<br>
                                VIP Consultation<br>
                                Luxury Vendor Coordination<br>
                                Dedicated Event Team<br><br>
                            </p>
                        </div>
                    </div>
               <asp:Button ID="btn_book14" runat="server" Text="Book it" CssClass="action" Onclick="btn_book14_Click"/>
                </div>
            </div>
    
            <div class="item-container">
                <div class="img-container">
                    <img src="images/annnn.jpeg" alt="Event image">
                </div>
    
                <div class="body-container">
                    <div class="overlay"></div>
    
                    <div class="event-info">
                        <p class="title">Gala Glee</p>
                        <div class="separator"></div>
                        <p class="info">Ultimate Package</p>
                        <p class="price">30K EGP</p>
    
                        <div class="additional-info">
                            <p class="info">
                                <i class="fas fa-map-marker-alt"></i>
                                Haven Hall
                            </p>
                            <p class="info">
                                <i class="far fa-calendar-alt"></i>
                                For 24 hours
                            </p>
    
                            <p class="info description">
                                
                                +5000 guests<br>
                                team of dedicated servers<br>
                                dining experience by Professional chefs<br>
                                Enchanting live musical performances<br>
                                VIP treatment throughout the even<br>
                            </p>
                        </div>
                    </div>
               <asp:Button ID="btn_book15" runat="server" Text="Book it" CssClass="action" Onclick="btn_book15_Click"/>
                </div>
            </div>
    
            
    
            
               <asp:Button ID="btn_book16" runat="server" Text="Book it" CssClass="action" />
                </div>
            </div>
        </div>



        <p class="section-subtitle"></p>
        <br><br>
                  <h2 class="h2 section-title has-underline">
                    BUSINESS & FORMAL
                    <span class="span has-before"></span>
                  </h2>
        
            <div class="container">
                <div class="item-container">
                    <div class="img-container">
                        <img src="images/Corporate Event Creativity.jpeg" alt="Event image">
                    </div>
        
                    <div class="body-container">
                        <div class="overlay"></div>
        
                        <div class="event-info">
                            <p class="title">Black-Tie Bilss</p>
                            <div class="separator"></div>
                            <p class="info">Basic Package</p>
                            <p class="price">3.5K EGP</p>
        
                            <div class="additional-info">
                                <p class="info">
                                    <i class="fas fa-map-marker-alt"></i>
                                    Marphella hall
                                </p>
                                <p class="info">
                                    <i class="far fa-calendar-alt"></i>
                                    For 3 hours
                                </p>
        
                                <p class="info description">
                                    +250 guests<br>
                                    Basic decoration options<br>
                                    Small events<br>
                                    Competitive starting price<br>
                                     Photography<br>
                                    custom invitations<br>
                                </p>
                            </div>
                        </div>
               <asp:Button ID="btn_book17" runat="server" Text="Book it" CssClass="action" Onclick="btn_book17_Click"/>
                    </div>
                </div>
        
                <div class="item-container">
                    <div class="img-container">
                        <img src="images/Evento Corporativo Positivo.jpeg" alt="Event image">
                    </div>
        
                    <div class="body-container">
                        <div class="overlay"></div>
        
                        <div class="event-info">
                            <p class="title">Prestige</p>
                            <div class="separator"></div>
                            <p class="info">Standard Package</p>
                            <p class="price">6.5K EGP</p>
        
                            <div class="additional-info">
                                <p class="info">
                                    <i class="fas fa-map-marker-alt"></i>
                                    Masa Hall
                                </p>
                                <p class="info">
                                    <i class="far fa-calendar-alt"></i>
                                    For 6 hours
                                </p>
        
                                <p class="info description">
                                  
                                    +500 guests<br>
                                    More sophisticated decoration options<br>
                                    live musical ensemble<br>
                                    Professional photography<br>
                                    Smooth on-site event<br>
                                    Assistance in venue selection<br>
                                </p>
                            </div>
                        </div>
               <asp:Button ID="btn_book18" runat="server" Text="Book it" CssClass="action" Onclick="btn_book18_Click"/>
                    </div>
                </div>
        
                <div class="item-container">
                    <div class="img-container">
                        <img src="images/Eventos corporativos.jpeg" alt="Event image">
                    </div>
        
                    <div class="body-container">
                        <div class="overlay"></div>
        
                        <div class="event-info">
                            <p class="title">Opulence</p>
                            <div class="separator"></div>
                            <p class="info">Premium Package</p>
                            <p class="price">8K EGP</p>
        
                            <div class="additional-info">
                                <p class="info">
                                    <i class="fas fa-map-marker-alt"></i>
                                    Merage Hall
                                </p>
                                <p class="info">
                                    <i class="far fa-calendar-alt"></i>
                                    For 10 hours
                                </p>
        
                                <p class="info description">
                                    +750 guests<br>
                                    High-quality, themed decorations <br>
                                    Luxurious Event Design<br>
                                    Professional photography<br>
                                    videography<br>
                                    Premium food & beverage options<br>
                                </p>
                            </div>
                        </div>
               <asp:Button ID="btn_book19" runat="server" Text="Book it" CssClass="action" Onclick="btn_book19_Click"/>
                    </div>
                </div>
        
                
        
                
               <asp:Button ID="btn_book20" runat="server" Text="Book it" CssClass="action" />
                    </div>
                </div>
            </div>
        
            <div class="container">
                <div class="item-container">
                    <div class="img-container">
                        <img src="images/img4.jpg" alt="Event image">
                    </div>
        
                    <div class="body-container">
                        <div class="overlay"></div>
        
                        <div class="event-info">
                            <p class="title">Grandeur</p>
                            <div class="separator"></div>
                            <p class="info">Deluxe Package</p>
                            <p class="price">12K EGP</p>
        
                            <div class="additional-info">
                                <p class="info">
                                    <i class="fas fa-map-marker-alt"></i>
                                    Grand Hotel
                                </p>
                                <p class="info">
                                    <i class="far fa-calendar-alt"></i>
                                    For 13 hours
                                </p>
        
                                <p class="info description">
                                  
                                    +1000 guests<br>
                                    Tailored decoration themes designed <br>
                                    VIP Consultation<br>
                                    curated menu Food<br>
                                    luxury gifts<br>
                                    advanced social media promotion<br>
                                </p>
                            </div>
                        </div>
               <asp:Button ID="btn_book21" runat="server" Text="Book it" CssClass="action" Onclick="btn_book21_Click"/>
                    </div>
                </div>
        
                <div class="item-container">
                    <div class="img-container">
                        <img src="images/Functional Dynamic Corporate Event Space.jpeg" alt="Event image">
                    </div>
        
                    <div class="body-container">
                        <div class="overlay"></div>
        
                        <div class="event-info">
                            <p class="title">Luxe</p>
                            <div class="separator"></div>
                            <p class="info">Exclusive Package</p>
                            <p class="price">15K EGP</p>
        
                            <div class="additional-info">
                                <p class="info">
                                    <i class="fas fa-map-marker-alt"></i>
                                    Maradona
                                </p>
                                <p class="info">
                                    <i class="far fa-calendar-alt"></i>
                                    For 18 hours
                                </p>
        
                                <p class="info description">
                                    +2000 guests<br>
                                    Expertly designed décor<br>
                                    exclusive gatherings<br>
                                    VIP Consultation<br>
                                    Luxury Vendor Coordination<br>
                                    Dedicated Event Team<br><br>
                                </p>
                            </div>
                        </div>
               <asp:Button ID="btn_book22" runat="server" Text="Book it" CssClass="action" Onclick="btn_book22_Click"/>
                    </div>
                </div>
        
                <div class="item-container">
                    <div class="img-container">
                        <img src="images/elite.jpg" alt="Event image">
                    </div>
        
                    <div class="body-container">
                        <div class="overlay"></div>
        
                        <div class="event-info">
                            <p class="title">Elite</p>
                            <div class="separator"></div>
                            <p class="info">Ultimate Package</p>
                            <p class="price">150K EGP</p>
        
                            <div class="additional-info">
                                <p class="info">
                                    <i class="fas fa-map-marker-alt"></i>
                                    Haven Hall
                                </p>
                                <p class="info">
                                    <i class="far fa-calendar-alt"></i>
                                    For 24 hours
                                </p>
        
                                <p class="info description">
                                    
                                    +5000 guests<br>
                                    team of dedicated servers<br>
                                    dining experience by Professional chefs<br>
                                    Enchanting live musical performances<br>
                                    VIP treatment throughout the even<br>
                                </p>
                            </div>
                        </div>
               <asp:Button ID="btn_book23" runat="server" Text="Book it" CssClass="action" Onclick="btn_book23_Click"/>
                    </div>
                </div>
        
                
        
                
               <asp:Button ID="btn_book24" runat="server" Text="Book it" CssClass="action" />
                    </div>
                </div>
            </div>

            <p class="hero-text">
                Don't like any of our Pre-designed packages? <br>
Start Designing your own here
              </p>
    
              <a href="http://localhost:56397/Customize.aspx" class="btn btn-secondary">Start Design</a>
              <br><br>
        <script src="Js/event.js"></script>
    </form>
</body>
</html>
