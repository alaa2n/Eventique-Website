<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrivacyPolicies.aspx.cs" Inherits="RegisterPage.PrivacyPolicies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Terms and Condition Section Tabs In HTML CSS and Javascript</title>
    <link href="Css/Policies.css" rel="stylesheet" />
    <style>
        .tc_wrap .tabs_content .tab_foot #agree_btn{
    width: 125px;
    padding: 5px 10px; 
    background: transparent;
    border: 1px solid;
    border-radius: 25px;
  cursor: pointer;
  transition: all 0.5s ease;
}

.tc_wrap .tabs_content .tab_foot #agree_btn.agree{
   background: var(--primary-clr);
  border-color: var(--primary-clr);
  color: var(--white);
}
.tc_wrap .tabs_content .tab_foot #agree_btn.agree:hover{
  background: var(--btn-hvr);
  border-color: var(--btn-hvr);
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper flex_align_justify">
   <div class="tc_wrap">
       <div class="tabs_list">
         <ul>
           <li data-tc="tab_item_1" class="active">Terms of use</li>
           <li data-tc="tab_item_2">Intellectual property rights</li>
           <li data-tc="tab_item_3">Prohibited activities</li>

         </ul>
       </div>
       <div class="tabs_content">
          <div class="tab_head">
            <h2>Terms & Conditions</h2>
          </div>
          <div class="tab_body">
            <div class="tab_item tab_item_1">
                <h3>Terms of use</h3>
                <p>Be Kind: Treat everyone with respect and kindness. No bullying or mean comments allowed.</p>
              <p>Privacy Matters: We keep your information safe. Don’t share personal details with strangers.</p>
              <p>Booking Events: When you book an event, make sure you’re ready to attend. Cancelations should be done politely and in advance.</p>
              <p>Content Rules: You can share ideas and photos, but nothing rude or inappropriate.</p>
              <p>Respect Property: If you use our tools or templates, don’t copy or steal from others. Respect their work.</p>
              <p>Safety First: We want everyone to have a great time. Stay safe and follow local laws and regulations.</p>
              <p>Feedback Welcome: Your feedback helps us improve. Let us know if you have ideas or issues.</p>
              <p>Updates: Sometimes we might update our terms. We’ll let you know about any changes.</p>
            </div>
            <div class="tab_item tab_item_2" style="display: none;">
                <h3>Intellectual property rights</h3>
              <p>Website Content
                Textual Content: All the written content, including blog posts, articles, event descriptions, and planning guides, should be considered copyrighted material. The website owner automatically holds copyright unless otherwise stated.
                Images and Graphics: Images used on the website, whether photographs of events or graphic designs, are also protected under copyright. Usage should be either original, licensed from the creator, or used with permission.
                Logos and Brand Marks: The logo, brand name, and any graphical symbols that represent the website are trademarkable. This helps prevent others from using a similar visual identity to confuse customers.</p>
                <p>Software and Technology
                    Custom Tools: Any tools or software developed for event planning, scheduling, or management are protected as intellectual property. This could include proprietary algorithms or unique software interfaces.
                    Website Design and Interface: The overall design and user interface of the website can be considered a copyright if they are original enough to qualify as creative expressions.</p>
            </div>
            <div class="tab_item tab_item_3"  style="display: none;">
                <h3>Prohibited activities</h3>
                <p> Illegal Activities
                    No Illegal Conduct: Users should be prohibited from using the website to plan, conduct, or encourage illegal activities. This includes, but is not limited to, drug use, theft, and activities that violate local, state, or federal laws.</p>
                    <p>Infringement of Intellectual Property
                        Respect IP Rights: Users must not post content that infringes on the intellectual property rights of others. This includes copying others' materials (like music, videos, or text) without permission.</p>
           <p> Misrepresentation
            No False Information: Users should be prohibited from creating false accounts or submitting misleading information about events, services, or personal identity.</p>
           
                    </div>
            <div class="tab_item tab_item_4"  style="display: none;">
                
            </div>
            <div class="tab_item tab_item_5"  style="display: none;">

            </div>
          </div>
          <div class="tab_foot flex_align_justify">
              <asp:Button ID="agree_btn" runat="server" Text="Agree" CssClass="agree" onclick="agree_btn_Click"/>
          </div>
       </div>
   </div>
</div>

<script src="Js/polices.js"></script>

    </form>
</body>
</html>
