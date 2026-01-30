/* VIRENS 101 Kairos - Brutalist Interactions JavaScript
   Lightweight animations and interactions for Editorial Brutalist design
   Features: parallax floating numbers, staggered fade-in, geometric overlays */

(function() {
    'use strict';

    // Check for reduced motion preference
    const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    // ========================================
    // 1. PARALLAX FLOATING NUMBERS
    // ========================================
    function initParallaxNumbers() {
        if (prefersReducedMotion) return;

        const floatingNumbers = document.querySelectorAll('.floating-number');
        if (floatingNumbers.length === 0) return;

        let ticking = false;

        function updateParallax() {
            floatingNumbers.forEach(num => {
                const speed = 0.3;
                const yPos = -(window.pageYOffset * speed);
                num.style.transform = `translateY(${yPos}px)`;
            });
            ticking = false;
        }

        window.addEventListener('scroll', () => {
            if (!ticking) {
                window.requestAnimationFrame(updateParallax);
                ticking = true;
            }
        });
    }

    // ========================================
    // 2. MOUSE MOVE - SUBTLE PARALLAX
    // ========================================
    function initMouseParallax() {
        if (prefersReducedMotion) return;

        const contentArea = document.querySelector('.content-area');
        const floatingNumbers = document.querySelectorAll('.floating-number');
        
        if (!contentArea || floatingNumbers.length === 0) return;

        let ticking = false;
        let mouseX = 0;
        let mouseY = 0;

        contentArea.addEventListener('mousemove', (e) => {
            mouseX = e.clientX;
            mouseY = e.clientY;

            if (!ticking) {
                window.requestAnimationFrame(() => {
                    const moveX = ((mouseX / window.innerWidth) - 0.5) * 15;
                    const moveY = ((mouseY / window.innerHeight) - 0.5) * 15;
                    
                    floatingNumbers.forEach(num => {
                        const currentTransform = num.style.transform || '';
                        const scrollY = window.pageYOffset * 0.3;
                        num.style.transform = `translate(${moveX}px, ${moveY - scrollY}px)`;
                    });
                    
                    ticking = false;
                });
                ticking = true;
            }
        });
    }

    // ========================================
    // 3. STAGGERED FADE-IN ON SCROLL
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
    // 4. HEADER HOVER EFFECTS
    // ========================================
    function initHeaderEffects() {
        if (prefersReducedMotion) return;

        // Subtle glitch on h1 hover (student track "Economies" style)
        const h1Elements = document.querySelectorAll('article h1');
        
        h1Elements.forEach(h1 => {
            h1.addEventListener('mouseenter', function() {
                this.style.transition = 'transform 0.05s, text-shadow 0.05s';
                this.style.transform = 'translate(1px, -1px)';
                
                // Track-specific shadow effects
                if (document.body.classList.contains('student-track')) {
                    this.style.textShadow = '2px 2px 0 #E8A317';
                } else if (document.body.classList.contains('designer-track')) {
                    this.style.textShadow = '2px 2px 0 #5FB3B3';
                } else {
                    this.style.textShadow = '2px 2px 0 #2E9E2E';
                }
            });

            h1.addEventListener('mouseleave', function() {
                this.style.transform = 'translate(0, 0)';
                this.style.textShadow = 'none';
            });
        });
    }

    // ========================================
    // 5. SMOOTH SCROLL FOR ANCHOR LINKS
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
    // 6. READING PROGRESS INDICATOR
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
    // 7. NAV LINK ACTIVE STATE ON SCROLL
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
        initParallaxNumbers();
        initMouseParallax();
        initStaggeredFadeIn();
        initHeaderEffects();
        initSmoothScroll();
        initProgressIndicator();
        initNavScrollTracking();

        console.log('Brutalist interactions initialized');
    }

    // Run initialization
    init();

})();
