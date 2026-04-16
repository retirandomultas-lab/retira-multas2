// Smooth scroll para links internos
document.addEventListener('DOMContentLoaded', function() {
    const links = document.querySelectorAll('a[href^="#"]');
    
    links.forEach(link => {
        link.addEventListener('click', function(e) {
            const href = this.getAttribute('href');
            const target = document.querySelector(href);
            
            if (target) {
                e.preventDefault();
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
});

// Animação de scroll para elementos
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

// Aplicar animação aos elementos
document.querySelectorAll('.problem-card, .how-step, .benefit-card, .testimonial-card').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(20px)';
    el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(el);
});

// Contador animado para stats
function animateCounter(element, target, duration = 2000) {
    let current = 0;
    const increment = target / (duration / 16);
    
    const counter = setInterval(() => {
        current += increment;
        if (current >= target) {
            current = target;
            clearInterval(counter);
        }
        element.textContent = Math.floor(current).toLocaleString('pt-BR');
    }, 16);
}

// Iniciar contadores quando entram em view
const statsObserver = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            const value = entry.target.textContent.replace(/\D/g, '');
            if (value) {
                animateCounter(entry.target, parseInt(value));
            }
            statsObserver.unobserve(entry.target);
        }
    });
}, { threshold: 0.5 });

document.querySelectorAll('.hero-stat-value').forEach(el => {
    statsObserver.observe(el);
});

// Adicionar classe ativa ao navbar ao scrollar
window.addEventListener('scroll', function() {
    const navbar = document.querySelector('nav');
    if (window.scrollY > 50) {
        navbar.style.boxShadow = '0 2px 8px rgba(0, 0, 0, 0.1)';
    } else {
        navbar.style.boxShadow = 'none';
    }
});

// Rastreamento de cliques em CTAs (para analytics)
document.querySelectorAll('.btn-primary, .btn-outline').forEach(btn => {
    btn.addEventListener('click', function() {
        const text = this.textContent.trim();
        console.log('CTA clicado:', text);
        
        // Você pode enviar isso para Google Analytics ou outro serviço
        if (window.gtag) {
            gtag('event', 'cta_click', {
                'button_text': text
            });
        }
    });
});

// Validação de formulário (se houver)
const form = document.querySelector('form');
if (form) {
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        console.log('Formulário enviado');
    });
}

// Detectar dispositivo mobile
function isMobile() {
    return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
}

// Ajustar tamanho do botão flutuante em mobile
const floatingBtn = document.getElementById('floatingWhatsApp');
if (floatingBtn && isMobile()) {
    floatingBtn.style.width = '4rem';
    floatingBtn.style.height = '4rem';
    floatingBtn.style.bottom = '1.5rem';
    floatingBtn.style.right = '1.5rem';
}

// Lazy loading de imagens (se houver)
if ('IntersectionObserver' in window) {
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.classList.add('loaded');
                observer.unobserve(img);
            }
        });
    });
    
    document.querySelectorAll('img[data-src]').forEach(img => imageObserver.observe(img));
}

// Função para rastrear tempo de permanência na página
let startTime = Date.now();
window.addEventListener('beforeunload', function() {
    const timeSpent = (Date.now() - startTime) / 1000;
    console.log('Tempo na página:', timeSpent + 's');
});

// Adicionar data de atualização
console.log('Site carregado em:', new Date().toLocaleString('pt-BR'));
