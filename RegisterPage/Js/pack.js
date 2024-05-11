document.addEventListener("DOMContentLoaded", function () {
    const eventTypeSelect = document.getElementById('event_type');
    const weddingButtons = document.getElementById('buttons-wed');
    const engagementButtons = document.getElementById('buttons-engage');
    const formalButtons = document.getElementById('buttons-formal');
    const birthdayButtons = document.getElementById('buttons-birth');
    const anniversaryButtons = document.getElementById('buttons-ann'); // Add anniversaryButtons

    eventTypeSelect.addEventListener('change', function () {
        // Hide all dropdown menus first
        hideAllButtons();

        const selectedEventType = eventTypeSelect.value;

        // Show the corresponding dropdown menu based on the selected event type
        if (selectedEventType === 'wedding') {
            weddingButtons.style.display = 'block';
        } else if (selectedEventType === 'engagement') {
            engagementButtons.style.display = 'block';
        } else if (selectedEventType === 'formal') {
            formalButtons.style.display = 'block';
        } else if (selectedEventType === 'birthday') {
            birthdayButtons.style.display = 'block';
        } else if (selectedEventType === 'anniversary') { // Display anniversaryButtons if 'anniversary' is selected
            anniversaryButtons.style.display = 'block';
        }
    });

    function hideAllButtons() {
        // Hide all dropdown menus
        weddingButtons.style.display = 'none';
        engagementButtons.style.display = 'none';
        formalButtons.style.display = 'none';
        birthdayButtons.style.display = 'none';
        anniversaryButtons.style.display = 'none';
    }
});

document.querySelectorAll('.buttons button').forEach(button => {
    button.addEventListener('click', () => {
        // Toggle the 'active' class for the clicked button
        button.classList.toggle('active');
    });
});

function showButtons(eventType) {
    document.querySelectorAll('.buttons').forEach(buttons => {
        buttons.style.display = 'none';
    });

    if (eventType) {
        document.getElementById('buttons-' + eventType).style.display = 'block';
    }
}
