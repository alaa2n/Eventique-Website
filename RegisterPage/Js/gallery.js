const els = document.querySelectorAll(".gal3-con [type='radio']");
for (const el of els)
  el.addEventListener("input", e => reorder(e.target, els));
reorder(els[0], els);

function reorder(targetEl, els) {
  const nItems = els.length;
  let processedUncheck = 0;
  for (const el of els) {
    const containerEl = el.nextElementSibling;
    if (el === targetEl) {//checked radio
      containerEl.style.setProperty("--w", "100%");
      containerEl.style.setProperty("--l", "0");
    }
    else {//unchecked radios
      containerEl.style.setProperty("--w", `${100/(nItems-1)}%`);
      containerEl.style.setProperty("--l", `${processedUncheck * 100/(nItems-1)}%`);
      processedUncheck += 1;
    }
  }
}

document.addEventListener("DOMContentLoaded", () => {
  const els2 = document.querySelectorAll(".gal4-con [type='radio']");
  for (const el of els2)
    el.addEventListener("input", e => reorder2(e.target, els2));

  // Call reorder2 for the first radio button element
  reorder2(els2[0], els2);
});

function reorder2(targetEl, els) {
  const nItems = els.length;
  let processedUncheck = 0;
  for (const el of els) {
    const containerEl = el.nextElementSibling;
    if (el === targetEl) {//checked radio
      containerEl.style.setProperty("--w", "100%");
      containerEl.style.setProperty("--l", "0");
    }
    else {//unchecked radios
      containerEl.style.setProperty("--w", `${100/(nItems-1)}%`);
      containerEl.style.setProperty("--l", `${processedUncheck * 100/(nItems-1)}%`);
      processedUncheck += 1;
    }
  }
}

document.addEventListener("DOMContentLoaded", () => {
  // Fade-in animation
  const fadeElements = document.querySelectorAll(".fade-in");
  fadeElements.forEach(element => {
      setTimeout(() => {
          element.classList.add("show");
      }, 200); // Delay for the animation to start
  });

  // Scroll-show animation
  window.addEventListener("scroll", () => {
      const scrollElements = document.querySelectorAll(".scroll-show");
      scrollElements.forEach(element => {
          const elementPosition = element.getBoundingClientRect().top;
          const screenHeight = window.innerHeight;
          if (elementPosition < screenHeight * 0.8) { // Adjust as needed
              element.classList.add("show");
          }
      });
  });
});