//document.addEventListener("DOMContentLoaded", function () {
//    const eventTypeSelect = document.getElementById('event_type');
//    const weddingButtons = document.getElementById('buttons-wed');
//    const engagementButtons = document.getElementById('buttons-engage');
//    const formalButtons = document.getElementById('buttons-formal');
//    const birthdayButtons = document.getElementById('buttons-birth');
//    const anniversaryButtons = document.getElementById('buttons-ann');

//    eventTypeSelect.addEventListener('change', function () {
//        hideAllButtons();

//        const selectedEventType = eventTypeSelect.value;
//        var sessionValue = '<%= Session["eventtype"] %>';
//        /*if (selectedEventType === 'wedding' || selectedEventType === 'engagement') {*/
//        updateEventTypeOptions(sessionValue);
//        /*}*/

//        //if (selectedEventType === 'wedding') {
//        //    weddingButtons.style.display = 'block';
//        //} else if (selectedEventType === 'engagement') {
//        //    engagementButtons.style.display = 'block';
//        //} else if (selectedEventType === 'formal') {
//        //    formalButtons.style.display = 'block';
//        //} else if (selectedEventType === 'birthday') {
//        //    birthdayButtons.style.display = 'block';
//        //} else if (selectedEventType === 'anniversary') {
//        //    anniversaryButtons.style.display = 'block';
//        //}
//    });

//    function hideAllButtons() {
//        weddingButtons.style.display = 'none';
//        engagementButtons.style.display = 'none';
//        formalButtons.style.display = 'none';
//        birthdayButtons.style.display = 'none';
//        anniversaryButtons.style.display = 'none';
//    }

//    function updateEventTypeOptions(selectedEventType) {
//        const eventTypeDropdown = document.getElementById('event_type');
//        for (let i = 0; i < eventTypeDropdown.options.length; i++) {
//            const option = eventTypeDropdown.options[i];
//            if (option.value === sessionValue) {
//                option.disabled = false;
//            } else {
//                option.disabled = true;
//            }
//        }
//        // Select the appropriate event type based on the selected package
//        eventTypeDropdown.value = selectedEventType;
//    }
//});

//document.querySelectorAll('.buttons button').forEach(button => {
//    button.addEventListener('click', () => {
//        button.classList.toggle('active');
//    });
//});

//function showButtons(eventType) {
//    document.querySelectorAll('.buttons').forEach(buttons => {
//        buttons.style.display = 'none';
//    });

//    if (eventType) {
//        document.getElementById('buttons-' + eventType).style.display = 'block';
//    }
//}
