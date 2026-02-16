/* ============================================
   CONSTRAINT STRUCTURE — INDEX/INIT PAGE SCRIPT
   Kairos: A Journal of Rhetoric, Technology, and Pedagogy

   Ghost-layer breathing animation using prime-number
   sine waves so the four CMYK color layers never
   synchronize — the composite color shifts
   continuously without visible repetition.

   Extracted from init-B-refined.html — design-freeze-v1
   ============================================ */

(function () {
    'use strict';

    // Each ghost pulses on its own sine wave at a prime-number period.
    // Periods: 11s, 13s, 17s, 19s (all prime)
    // Amplitude: ±0.12–0.15 (wide enough for the eye to catch)
    // Range clamps: 0.08–0.42 (never invisible, never solid)

    var ghosts = [
        { sel: '.g-student',  base: 0.28, amp: 0.14, period: 11 },
        { sel: '.g-designer', base: 0.28, amp: 0.15, period: 13 },
        { sel: '.g-nexus',    base: 0.22, amp: 0.12, period: 17 },
        { sel: '.g-vault',    base: 0.22, amp: 0.13, period: 19 }
    ];

    // Collect elements once
    var layers = ghosts.map(function (g) {
        return {
            base: g.base,
            amp: g.amp,
            period: g.period,
            els: document.querySelectorAll(g.sel)
        };
    });

    var start = null;

    function breathe(ts) {
        if (!start) start = ts;
        var t = (ts - start) / 1000;

        for (var i = 0; i < layers.length; i++) {
            var layer = layers[i];
            var opacity = Math.max(0.08,
                Math.min(0.42,
                    layer.base + layer.amp * Math.sin(2 * Math.PI * t / layer.period)
                )
            );
            for (var j = 0; j < layer.els.length; j++) {
                layer.els[j].style.opacity = opacity;
            }
        }

        requestAnimationFrame(breathe);
    }

    // Respect reduced motion
    if (!window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
        requestAnimationFrame(breathe);
    }
})();
