/* VIRENS 101 Kairos - Brutalist Interactions JavaScript v2
   Lightweight animations and interactions for Editorial Brutalist design
   Features: staggered fade-in, smooth scroll, progress bar
   Removed: parallax animations, header hover effects */

(function() {
    'use strict';

    // Check for reduced motion preference
    const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    // ========================================
    // 1. STAGGERED FADE-IN ON SCROLL
    // ========================================
    function initStaggeredFadeIn() {
        if (prefersReducedMotion) {
            // Just show everything immediately if reduced motion is preferred
            document.querySelectorAll('article h2, article p, .bold-box, .content-list').forEach(el => {
                el.classList.add('fade-in-active');
            });
            return;
        }

        const observerOptions = {
            threshold: 0.15,
            rootMargin: '0px 0px -50px 0px'
        };

        const observerCallback = (entries) => {
            entries.forEach((entry, index) => {
                if (entry.isIntersecting && !entry.target.classList.contains('fade-in-active')) {
                    // Get all elements that should animate together in this batch
                    const batch = Array.from(document.querySelectorAll('article h2, article p, .bold-box, .content-list'))
                        .filter(el => {
                            const rect = el.getBoundingClientRect();
                            const entryRect = entry.target.getBoundingClientRect();
                            return Math.abs(rect.top - entryRect.top) < 100; // Group elements close together
                        });

                    // Stagger animation within batch
                    batch.forEach((el, i) => {
                        setTimeout(() => {
                            el.classList.add('fade-in-active');
                        }, i * 80); // 80ms stagger
                    });
                }
            });
        };

        const observer = new IntersectionObserver(observerCallback, observerOptions);

        document.querySelectorAll('article h2, article p, .bold-box, .content-list').forEach(el => {
            observer.observe(el);
        });
    }

    // ========================================
    // 2. SMOOTH SCROLL FOR ANCHOR LINKS
    // ========================================
    function initSmoothScroll() {
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                const href = this.getAttribute('href');
                if (href === '#') return; // Skip empty anchors
                
                const target = document.querySelector(href);
                if (target) {
                    e.preventDefault();
                    target.scrollIntoView({
                        behavior: prefersReducedMotion ? 'auto' : 'smooth',
                        block: 'start'
                    });
                }
            });
        });
    }

    // ========================================
    // 3. READING PROGRESS INDICATOR
    // ========================================
    function initProgressIndicator() {
        const progressBar = document.createElement('div');
        progressBar.style.cssText = `
            position: fixed;
            top: 0;
            left: 0;
            height: 4px;
            background: var(--primary, #000);
            z-index: 9999;
            transition: width 0.1s ease-out;
            pointer-events: none;
        `;
        document.body.appendChild(progressBar);

        let ticking = false;

        function updateProgress() {
            const winScroll = document.documentElement.scrollTop;
            const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
            const scrolled = (winScroll / height) * 100;
            progressBar.style.width = scrolled + '%';
            ticking = false;
        }

        window.addEventListener('scroll', () => {
            if (!ticking) {
                window.requestAnimationFrame(updateProgress);
                ticking = true;
            }
        });
    }

    // ========================================
    // 4. NAV LINK ACTIVE STATE ON SCROLL
    // ========================================
    function initNavScrollTracking() {
        const sections = document.querySelectorAll('article h2');
        const navLinks = document.querySelectorAll('.nav-link:not(.track-switch)');
        
        if (sections.length === 0 || navLinks.length === 0) return;

        let ticking = false;

        function updateActiveNav() {
            let current = '';
            
            sections.forEach(section => {
                const sectionTop = section.offsetTop;
                const sectionHeight = section.clientHeight;
                
                if (window.pageYOffset >= sectionTop - 200) {
                    current = section.textContent.trim();
                }
            });

            navLinks.forEach(link => {
                link.classList.remove('active');
                if (link.textContent.includes(current) || 
                    (current === '' && link.textContent.includes('Introduction'))) {
                    link.classList.add('active');
                }
            });

            ticking = false;
        }

        window.addEventListener('scroll', () => {
            if (!ticking) {
                window.requestAnimationFrame(updateActiveNav);
                ticking = true;
            }
        });
    }

    // ========================================
    // INITIALIZATION
    // ========================================
    function init() {
        // Wait for DOM to be fully loaded
        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', init);
            return;
        }

        // Initialize all features
        initStaggeredFadeIn();
        initSmoothScroll();
        initProgressIndicator();
        initNavScrollTracking();

        console.log('Brutalist interactions initialized (v2 - simplified)');
    }

    // Run initialization
    init();

})();
