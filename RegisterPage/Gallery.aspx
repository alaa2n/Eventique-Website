<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="RegisterPage.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Css/gallery.css">
    <style>
        /* Ensure that the selector matches the HTML structure */
.gal4-con .ts2 {
  perspective: 100px;
  perspective-origin: center center;
  transform-style: preserve-3d;
  pointer-events: none;
}

/* Adjust the selector to match the HTML structure */
.gal4-con .ts2:after {
  content: "";
  display: block; 
  width: 100%; 
  height: 15px;
  position: absolute; 
  bottom: 0;
  background: linear-gradient(transparent 20%, rgba(0,0,0,0.1));
  transform: rotateX(90deg) scaleX(1.2);
  transform-origin: bottom center;
}

/* Adjust the selector to match the HTML structure */
.gal4-con :not(:checked) + .t img {
  transform: scale(0.8); 
}

/* Adjust the selector to match the HTML structure */
.gal4-con .t:first-child img {
  transform: scale(1); 
}

/* Adjust the selector to match the HTML structure */
.gal4-con .ts2 input[type="radio"] {
  display: none; 
}

/* Adjust the selector to match the HTML structure */
.gal4-con :checked + label.t {
  left: 0; 
  bottom: var(--barH);
  height: calc(100% - var(--barH));
}

/* Adjust the selector to match the HTML structure */
.gal4-con :checked + label.t img {
  object-fit: contain;
}

/* Adjust the selector to match the HTML structure */
.gal4-con :not(:checked) + .t {
  transform: translate3d(0, 0, -5px);
  pointer-events: auto;
}

/* Adjust the selector to match the HTML structure */
.gal4-con :not(:checked) + .t:hover {
  transform: translate3d(0, -7px, -5px);
  box-shadow: 0 30px 30px -25px rgba(0,0,0,0.3);
  cursor: pointer;
}

/* Adjust the selector to match the HTML structure */
.gal4-con :not(:checked) + .t img {
  transform: scale(0.9);
}

/* Adjust the selector to match the HTML structure */
.gal4-con :checked + .t {
  box-shadow: 0 0 0 transparent;
  animation: anim 2s 1;
}

/* Adjust the selector to match the HTML structure */
.gal4-con .ts2:checked + .t {
  left: 0;
  bottom: var(--barH);
  height: calc(100% - var(--barH));
}

/* Adjust the selector to match the HTML structure */
.t {
  transition: transform 0.5s, bottom 0.6s, left 0.6s, width 0.3s, box-shadow 1s;
}

/* Adjust the selector to match the HTML structure */
.t:hover,
:checked + .t {
  transition: transform 0.5s, bottom 0.6s, left 0.6s, width 0.3s, box-shadow 0s;
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="title fade-in">
        <h1> G A L L A R Y</h1>
    </div>

    <div class="gallery  fade-in">
        <div class="gallery__strip__wrapper">
            <div class="gallery__strip one">
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/1.png">
                    </div>
                    <div class="photo__name">Music</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/2.png">
                    </div>
                    <div class="photo__name">Decor</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/3.jpg">
                    </div>
                    <div class="photo__name">love</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/4.png">
                    </div>
                    <div class="photo__name">band</div>
                </div>
            </div>
        </div>
        <div class="gallery__strip__wrapper">
            <div class="gallery__strip two">
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/8.png">
                    </div>
                    <div class="photo__name">fun</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/6.jpg">
                    </div>
                    <div class="photo__name">Pyramids</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/7.png">
                    </div>
                    <div class="photo__name">Suits</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/5.png">
                    </div>
                    <div class="photo__name">Merchant</div>
                </div>
            </div>
        </div>
        <div class="gallery__strip__wrapper">
            <div class="gallery__strip three">
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/9.jpeg">
                    </div>
                    <div class="photo__name">birthday</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/10.png">
                    </div>
                    <div class="photo__name">CTA</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/11.png">
                    </div>
                    <div class="photo__name">Awards</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/12.jpeg">
                    </div>
                    <div class="photo__name">MVPs</div>
                </div>
            </div>
        </div>
        <div class="gallery__strip__wrapper">
            <div class="gallery__strip four">
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/16.png">
                    </div>
                    <div class="photo__name">decor</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/15.png">
                    </div>
                    <div class="photo__name">Bithday</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/14.jpeg">
                    </div>
                    <div class="photo__name">Venue</div>
                </div>
                <div class="photo">
                    <div class="photo__image">
                        <img src="images/gal-1/13.png">
                    </div>
                    <div class="photo__name">night</div>
                </div>
            </div>
        </div>
    </div>

    <div class="title2  scroll-show">
        <h2> SERVICE & CATERING</h2>
    </div>

    <div class="gal2-con  scroll-show">
         <div class="gallery2">
           <img src='images/gal-2/1.png' alt=''>      
           <img src='images/gal-2/2.png' alt=''>
           <img src='images/gal-2/3.png' alt=''>
           <img src='images/gal-2/4.png' alt=''>
           <img src='images/gal-2/7.png' alt=''>
           <img src='images/gal-2/5.png' alt=''>
           <img src='images/gal-2/6.png' alt=''>
           <img src='images/gal-2/8.png' alt=''>
           <img src='images/gal-2/9.png' alt=''>
           <img src='images/gal-2/10.png' alt=''>
        </div> 
    </div>

    <div class="gal3-con  scroll-show">
        <div class="gallery-container">
            <div class="w">
                <div class="ts">
                  <input type="radio" id="c1" name="ts" checked>
                  <label class="t" for="c1"><img src="images/gal-3/d45eeeac3c791e0ce39c3bc5f7120099.jpg" alt="Image 1"></label>
                  <input type="radio" id="c2" name="ts">
                  <label class="t" for="c2"><img src="images/gal-3/Womens-Day-forum-100-copy-404x269.jpg" alt="Image 2"></label>
                  <input type="radio" id="c3" name="ts">
                  <label class="t" for="c3"><img src="images/gal-3/6dcfa4d75c7f3db1970ceb42d512b883.jpg" alt="Image 3"></label>
                  <input type="radio" id="c4" name="ts">
                  <label class="t" for="c4"><img src="images/gal-3/11.png" alt="Image 4"></label>
                  <input type="radio" id="c5" name="ts">
                  <label class="t" for="c5"><img src="images/gal-3/Womens-Day-forum-84-copy-404x269.jpg" alt="Image 5"></label>
                  <input type="radio" id="c6" name="ts">
                  <label class="t" for="c6"><img src="images/gal-3/International Women's Day - Women Uplift  Events.jpeg" alt="Image 6"></label>
                </div>
            </div>
        </div>

        <div class="text-container">
           <h1 class="women-title">Women's Day Celebration</h1>
           <p class="date">March 8, 2021</p>

           <div class="event-summary">
              <P> Our Women's Day Celebration 2021, held on March 8, 2021, was a dynamic gathering honoring the achievements of women globally. At [Venue Name/Address], attendees engaged with inspiring speakers, participated in empowering workshops, and enjoyed captivating artistic performances. Networking opportunities allowed for meaningful connections and collaborations, while community initiatives highlighted our shared commitment to gender equality. As we reflect on this memorable event, we are reminded of the ongoing journey towards empowerment for all women and girls. Thank you to all who joined us in commemorating this special day.</P>
            </div>
        </div>
    </div>

    <div class="gal4-con  scroll-show">
        
        <div class="text-container">
            <h1 class="women-title">Carol and Andrè’s Cairo wedding</h1>
            <p class="date">July 8, 2022</p>
 
            <div class="event-summary">
               <P>Their big day took place on one of the hottest days Cairo saw in July, reaching a high of 50°C. The couple chose to have a romantic first look, before their church ceremony, and their breathtaking couple portraits took place on a balcony with a view of the Giza Pyramids.They headed to a luxury private venue for the eventing celebrations. Set in an oasis-like estate in the desert with a bougainvillea lined drive, they danced the night away under thousands of fairy lights.<br>
                As the sun set over the majestic pyramids, guests gathered to witness a ceremony filled with love, laughter, and cherished moments. The Great Pyramid of Giza and the enigmatic Sphinx stood witness to vows exchanged, symbolizing the enduring strength of the couple's bond.
               </P>
            </div>
        </div>
         
            <div class="gallery-container">
                <div class="w">
                    <div class="ts2">
                        <input type="radio" name="gal" class="ts2" id="gal5-tab1" checked>
                        <label class="t" for="gal5-tab1"><img src="images/gal-4/1.jpg" alt="Image 1"></label>
                        
                        <input type="radio" name="gal" class="ts2" id="gal5-tab2">
                        <label class="t" for="gal5-tab2"><img src="images/gal-4/2.jpg" alt="Image 2"></label>
                        
                        <input type="radio" name="gal" class="ts2" id="gal5-tab3">
                        <label class="t" for="gal5-tab3"><img src="images/gal-4/3.jpg" alt="Image 3"></label>
                        
                        <input type="radio" name="gal" class="ts2" id="gal5-tab4">
                        <label class="t" for="gal5-tab4"><img src="images/gal-4/4.jpg" alt="Image 4"></label>

                        <input type="radio" name="gal" class="ts2" id="gal5-tab5">
                        <label class="t" for="gal5-tab5"><img src="images/gal-4/5.jpg" alt="Image 5"></label>

                        <input type="radio" name="gal" class="ts2" id="gal5-tab6">
                        <label class="t" for="gal5-tab6"><img src="images/gal-4/6.jpg" alt="Image 6"></label>
                    </div>
                    </div> 
                </div> 
             </div>             
   

    <div class="title3  scroll-show">
        <h2> OUR TOP 5 VENUES</h2>
    </div>

    <div class="gal5-con  scroll-show">
        <div class="container">
            <div class="card">
              <img src="images/gal-5/1.png">
              <div class="card__head">#1 Mena House Hotel - Cairo</div>
            </div>
            <div class="card">
              <img src="images/gal-5/2.png">
              <div class="card__head">Maritim Jolie Ville - Cairo</div>
            </div>
            <div class="card">
              <img src="images/gal-5/3.png">
              <div class="card__head">#3 Kempinski Nile Hotel - Cairo</div>
            </div>
            <div class="card">
              <img src="images/gal-5/4.png">
              <div class="card__head">#4 Le Méridien Pyramids - Giza</div>
            </div>
            <div class="card">
              <img src="images/gal-5/5.png">
              <div class="card__head">#5 Cataract Legend - Aswan</div>
            </div>
        </div>
    </div>

    <script src="Js/gallery.js"></script>












    </form>
</body>
</html>
