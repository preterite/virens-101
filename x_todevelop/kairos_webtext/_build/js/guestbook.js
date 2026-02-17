/* ============================================
   CONSTRAINT STRUCTURE — GUESTBOOK
   Client-side form + entry display
   
   No fetch() — works from file://, localhost,
   and any deployed origin.
   
   POST: hidden iframe + real form submission
   GET:  JSONP script injection
   ============================================ */

(function () {
  'use strict';

  // ── CONFIGURATION ──────────────────────────
  // Replace with your deployed Apps Script URL (ends in /exec)
  var ENDPOINT = 'YOUR_APPS_SCRIPT_DEPLOYMENT_URL';

  // ── DOM REFS ───────────────────────────────
  var form = document.getElementById('guestbook-form');
  var submitBtn = document.getElementById('guestbook-submit');
  var statusEl = document.getElementById('guestbook-status');
  var entriesEl = document.getElementById('guestbook-entries');
  var countEl = document.getElementById('guestbook-count');

  if (!form || !entriesEl) return;

  // ── HIDDEN IFRAME (submission target) ──────
  var iframe = document.createElement('iframe');
  iframe.name = 'guestbook-iframe';
  iframe.style.display = 'none';
  iframe.setAttribute('aria-hidden', 'true');
  document.body.appendChild(iframe);

  // ── SUBMIT via hidden form → iframe ────────
  form.addEventListener('submit', function (e) {
    e.preventDefault();

    var nameVal = form.querySelector('[name="name"]').value.trim();
    var urlVal = form.querySelector('[name="url"]').value.trim();
    var responseVal = form.querySelector('[name="response"]').value.trim();

    if (!responseVal) {
      setStatus('$ error: response required', 'error');
      return;
    }

    submitBtn.disabled = true;
    submitBtn.textContent = '$ sending\u2026';
    setStatus('', '');

    var payload = JSON.stringify({
      name: nameVal || 'Anonymous',
      url: urlVal,
      response: responseVal
    });

    // Build a real HTML form targeting the hidden iframe
    var hiddenForm = document.createElement('form');
    hiddenForm.method = 'POST';
    hiddenForm.action = ENDPOINT;
    hiddenForm.target = 'guestbook-iframe';
    hiddenForm.style.display = 'none';

    var input = document.createElement('input');
    input.type = 'hidden';
    input.name = 'payload';
    input.value = payload;
    hiddenForm.appendChild(input);

    document.body.appendChild(hiddenForm);

    // Listen for iframe load (signals server responded)
    var submitted = false;
    var onLoad = function () {
      if (!submitted) return;
      iframe.removeEventListener('load', onLoad);
      setStatus('$ recorded.', 'success');
      form.reset();
      submitBtn.disabled = false;
      submitBtn.textContent = '$ submit';
      // Clean up and refresh entries
      if (hiddenForm.parentNode) hiddenForm.parentNode.removeChild(hiddenForm);
      setTimeout(loadEntries, 1500);
    };
    iframe.addEventListener('load', onLoad);

    // Timeout fallback (server slow or unreachable)
    setTimeout(function () {
      if (submitBtn.disabled) {
        // Assume it went through — no-cors iframe can't be inspected
        setStatus('$ sent (confirming\u2026)', 'success');
        form.reset();
        submitBtn.disabled = false;
        submitBtn.textContent = '$ submit';
        if (hiddenForm.parentNode) hiddenForm.parentNode.removeChild(hiddenForm);
        setTimeout(loadEntries, 2000);
      }
    }, 8000);

    submitted = true;
    hiddenForm.submit();
  });


  // ── LOAD ENTRIES via JSONP ─────────────────
  function loadEntries() {
    entriesEl.innerHTML = '<p class="guestbook-loading">$ loading entries\u2026<span class="cursor-blink"></span></p>';

    var cbName = '_gb_' + Date.now();
    var timeout;

    window[cbName] = function (data) {
      clearTimeout(timeout);
      cleanup();

      if (!data || !data.entries || data.entries.length === 0) {
        entriesEl.innerHTML = '<p class="guestbook-empty">$ no entries yet. yours could be first.</p>';
        if (countEl) countEl.textContent = '0';
        return;
      }

      if (countEl) countEl.textContent = String(data.entries.length);

      var html = '';
      data.entries.forEach(function (entry) {
        html += renderEntry(entry);
      });
      entriesEl.innerHTML = html;
    };

    var script = document.createElement('script');
    script.src = ENDPOINT + '?callback=' + cbName;

    script.onerror = function () {
      clearTimeout(timeout);
      cleanup();
      entriesEl.innerHTML = '<p class="guestbook-error">$ could not load entries.</p>';
    };

    timeout = setTimeout(function () {
      cleanup();
      entriesEl.innerHTML = '<p class="guestbook-error">$ entries request timed out.</p>';
    }, 12000);

    function cleanup() {
      delete window[cbName];
      if (script.parentNode) script.parentNode.removeChild(script);
    }

    document.head.appendChild(script);
  }


  // ── RENDER ─────────────────────────────────
  function renderEntry(entry) {
    var date = formatDate(entry.timestamp);
    var nameStr = escapeHtml(entry.name || 'Anonymous');
    var responseStr = escapeHtml(entry.response);

    var urlHtml = '';
    if (entry.url && entry.url.trim()) {
      var safeUrl = escapeHtml(entry.url.trim());
      if (/^https?:\/\//i.test(safeUrl)) {
        urlHtml = '<a href="' + safeUrl + '" class="guestbook-entry-url" target="_blank" rel="noopener noreferrer">' + safeUrl + '</a>';
      } else {
        urlHtml = '<span class="guestbook-entry-url">' + safeUrl + '</span>';
      }
    }

    return '<div class="guestbook-entry">' +
      '<div class="guestbook-entry-header">' +
        '<span class="guestbook-entry-name">' + nameStr + '</span>' +
        '<span class="guestbook-entry-date">' + date + '</span>' +
      '</div>' +
      (urlHtml ? '<div class="guestbook-entry-link">' + urlHtml + '</div>' : '') +
      '<div class="guestbook-entry-response">' + responseStr + '</div>' +
    '</div>';
  }

  function formatDate(ts) {
    try {
      var d = new Date(ts);
      return d.toLocaleDateString('en-US', {
        year: 'numeric',
        month: 'short',
        day: 'numeric'
      });
    } catch (e) {
      return '';
    }
  }

  function escapeHtml(str) {
    var div = document.createElement('div');
    div.textContent = str;
    return div.innerHTML;
  }

  function setStatus(msg, type) {
    if (!statusEl) return;
    statusEl.textContent = msg;
    statusEl.className = 'guestbook-status' + (type ? ' guestbook-status--' + type : '');
  }

  // ── INIT ───────────────────────────────────
  loadEntries();

})();
