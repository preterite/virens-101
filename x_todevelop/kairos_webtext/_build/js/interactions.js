/* interactions.js — Constraint Structure webtext
   Vanilla JS, no dependencies, no npm.
   Degrades gracefully: all content readable without JS. */

(function() {
  'use strict';

  /* === Progress Bar === */
  const progressBar = document.getElementById('progress-bar');
  if (progressBar) {
    window.addEventListener('scroll', function() {
      const scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
      const scrollHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight;
      const progress = scrollHeight > 0 ? (scrollTop / scrollHeight) * 100 : 0;
      progressBar.style.width = progress + '%';
    });
  }

  /* === Active Nav Tracking on Scroll === */
  /* Future: IntersectionObserver for h2 headings */

  /* === Staggered Fade-In on Scroll === */
  /* Future: IntersectionObserver for article children */

})();
