/* guestbook.js — Constraint Structure
   Client-side form submission + entry display.
   Vanilla JS, no dependencies. Degrades to noscript fallback. */

(function() {
  'use strict';

  // --- CONFIGURATION ---
  // Replace with your Google Apps Script deployment URL
  var ENDPOINT = 'https://script.google.com/macros/s/AKfycbwp37sJKp1nRISOXc-wGbKqYBGBwJQWlJClq8ixLmK9J1Nkcem9foQ6fNOroDd4BNbz/exec';

  // --- DOM REFS ---
  var formWrap   = document.getElementById('guestbook-form-wrap');
  var nameInput  = document.getElementById('gb-name');
  var urlInput   = document.getElementById('gb-url');
  var respInput  = document.getElementById('gb-response');
  var submitBtn  = document.getElementById('gb-submit');
  var statusEl   = document.getElementById('gb-status');
  var entriesEl  = document.getElementById('guestbook-entries');
  var loadingEl  = document.getElementById('gb-loading');

  if (!formWrap || !submitBtn || !entriesEl) return;

  // --- SUBMIT ---
  submitBtn.addEventListener('click', function() {
    var response = (respInput.value || '').trim();
    if (!response) {
      setStatus('A response is required.', 'err');
      respInput.focus();
      return;
    }

    submitBtn.disabled = true;
    setStatus('submitting\u2026', '');

    var payload = {
      name: (nameInput.value || '').trim(),
      url: (urlInput.value || '').trim(),
      response: response
    };

    fetch(ENDPOINT, {
      method: 'POST',
      mode: 'no-cors',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
    .then(function() {
      // no-cors returns opaque response; assume success
      setStatus('recorded.', 'ok');
      nameInput.value = '';
      urlInput.value = '';
      respInput.value = '';
      submitBtn.disabled = false;

      // Add entry to display immediately (optimistic)
      prependEntry({
        name: payload.name,
        url: payload.url,
        response: payload.response,
        timestamp: new Date().toISOString()
      });
    })
    .catch(function(err) {
      setStatus('something went wrong. try again?', 'err');
      submitBtn.disabled = false;
      console.error('Guestbook submit error:', err);
    });
  });

  // --- LOAD ENTRIES ---
  function loadEntries() {
    fetch(ENDPOINT)
      .then(function(res) { return res.json(); })
      .then(function(data) {
        if (loadingEl) loadingEl.remove();

        if (!data.entries || data.entries.length === 0) {
          entriesEl.innerHTML = '<p class="guestbook-empty">No entries yet. Be the first.</p>';
          return;
        }

        var html = '';
        data.entries.forEach(function(entry) {
          html += renderEntry(entry);
        });
        entriesEl.innerHTML = html;
      })
      .catch(function(err) {
        if (loadingEl) {
          loadingEl.textContent = 'Could not load entries.';
          loadingEl.className = 'guestbook-empty';
        }
        console.error('Guestbook load error:', err);
      });
  }

  // --- RENDER ---
  function renderEntry(entry) {
    var name = escapeHtml(entry.name || 'anonymous');
    var response = escapeHtml(entry.response || '');
    var date = formatDate(entry.timestamp);

    var meta = '<span class="gb-entry-name">' + name + '</span>';

    if (entry.url && entry.url.trim()) {
      var safeUrl = escapeHtml(entry.url.trim());
      // Only allow http/https
      if (/^https?:\/\//i.test(safeUrl)) {
        var display = safeUrl.replace(/^https?:\/\/(www\.)?/i, '').replace(/\/$/, '');
        if (display.length > 50) display = display.substring(0, 47) + '\u2026';
        meta += '<span class="gb-entry-link"><a href="' + safeUrl + '" rel="noopener noreferrer" target="_blank">' + escapeHtml(display) + '</a></span>';
      }
    }

    if (date) {
      meta += '<span class="gb-entry-date">' + date + '</span>';
    }

    return '<div class="gb-entry">'
      + '<div class="gb-entry-meta">' + meta + '</div>'
      + '<div class="gb-entry-response">' + response + '</div>'
      + '</div>';
  }

  function prependEntry(entry) {
    // Remove "no entries" message if present
    var empty = entriesEl.querySelector('.guestbook-empty');
    if (empty) empty.remove();

    var temp = document.createElement('div');
    temp.innerHTML = renderEntry(entry);
    var node = temp.firstChild;
    entriesEl.insertBefore(node, entriesEl.firstChild);
  }

  // --- HELPERS ---
  function setStatus(msg, type) {
    statusEl.textContent = msg;
    statusEl.className = 'guestbook-status' + (type ? ' status-' + type : '');
  }

  function escapeHtml(str) {
    var div = document.createElement('div');
    div.appendChild(document.createTextNode(str));
    return div.innerHTML;
  }

  function formatDate(iso) {
    if (!iso) return '';
    try {
      var d = new Date(iso);
      var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
      return months[d.getMonth()] + ' ' + d.getDate() + ', ' + d.getFullYear();
    } catch(e) {
      return '';
    }
  }

  // --- INIT ---
  loadEntries();

})();
