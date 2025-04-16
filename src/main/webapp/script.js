document.addEventListener('DOMContentLoaded', () => {
    fetch('services.json')
        .then(response => response.json())
        .then(data => {
            const container = document.getElementById('service-cards');
            data.forEach((service, index) => {
                const card = document.createElement('div');
                card.className = 'card slide-in';
                card.style.animationDelay = `${index * 0.2}s`; // Stagger effect
                card.innerHTML = `
          <h3>${service.name}</h3>
          <p>${service.desc}</p>
           <a href="bookService.jsp" class="btn ripple">Book Now</a>
        `;
                container.appendChild(card);
            });
        })
        .catch(error => {
            console.error('Error loading JSON:', error);
        });
});

// Ripple effect on click
document.addEventListener('click', function (e) {
    const btn = e.target.closest('.ripple');
    if (!btn) return;

    const ripple = document.createElement('span');
    const rect = btn.getBoundingClientRect();
    ripple.style.width = ripple.style.height = Math.max(rect.width, rect.height) + 'px';
    ripple.style.left = e.clientX - rect.left - ripple.offsetWidth / 2 + 'px';
    ripple.style.top = e.clientY - rect.top - ripple.offsetHeight / 2 + 'px';
    ripple.className = 'ripple-effect';
    btn.appendChild(ripple);

    setTimeout(() => ripple.remove(), 600);
});
