/**
 * Constraint Structure — Guestbook Backend
 * Google Apps Script: deploy as web app from a Google Sheet.
 *
 * Setup:
 * 1. Create a Google Sheet with columns: Timestamp | Name | URL | Response
 * 2. Open Extensions > Apps Script, paste this code
 * 3. Deploy > New deployment > Web app
 *    - Execute as: Me
 *    - Who has access: Anyone
 * 4. Copy the deployment URL (ends in /exec) into guestbook.js
 *
 * IMPORTANT: After editing, create a NEW deployment version
 * (Deploy > Manage deployments > Edit > New version).
 *
 * Accepts:
 *   POST via form submission (application/x-www-form-urlencoded)
 *     - field "payload" contains JSON string
 *   GET with ?callback=fnName for JSONP entry loading
 */

function doPost(e) {
  var lock = LockService.getScriptLock();
  try {
    lock.waitLock(10000);
  } catch (err) {
    return buildHtmlResponse("error: server busy");
  }

  try {
    // Form-encoded POST: data arrives in e.parameter.payload
    var raw = e.parameter.payload;
    if (!raw) {
      // Fallback: try postData body (for fetch-based POST)
      raw = e.postData ? e.postData.contents : null;
    }
    if (!raw) {
      return buildHtmlResponse("error: no data received");
    }

    var data = JSON.parse(raw);
    var name = sanitize(data.name || "Anonymous");
    var url = sanitize(data.url || "");
    var response = sanitize(data.response || "");

    if (!response || response.trim().length === 0) {
      return buildHtmlResponse("error: response required");
    }

    if (response.length > 2000 || name.length > 200 || url.length > 500) {
      return buildHtmlResponse("error: input too long");
    }

    var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
    sheet.appendRow([
      new Date().toISOString(),
      name,
      url,
      response
    ]);

    return buildHtmlResponse("ok");
  } catch (err) {
    return buildHtmlResponse("error: " + err.message);
  } finally {
    lock.releaseLock();
  }
}

function doGet(e) {
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getActiveSheet();
  var data = sheet.getDataRange().getValues();
  var entries = [];

  // Skip header row
  for (var i = 1; i < data.length; i++) {
    if (data[i][3]) {
      entries.push({
        timestamp: data[i][0],
        name: data[i][1] || "Anonymous",
        url: data[i][2] || "",
        response: data[i][3] || ""
      });
    }
  }

  // Reverse chronological
  entries.reverse();

  var payload = JSON.stringify({ entries: entries });

  // JSONP: wrap in callback if requested
  var params = e.parameter || {};
  if (params.callback) {
    return ContentService
      .createTextOutput(params.callback + '(' + payload + ')')
      .setMimeType(ContentService.MimeType.JAVASCRIPT);
  }

  return ContentService
    .createTextOutput(payload)
    .setMimeType(ContentService.MimeType.JSON);
}

function sanitize(str) {
  return String(str)
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#39;");
}

/**
 * POST response: returns minimal HTML that loads in the hidden iframe.
 * The iframe's onload event signals the client that submission finished.
 */
function buildHtmlResponse(message) {
  var html = '<!DOCTYPE html><html><body>' + message + '</body></html>';
  return HtmlService.createHtmlOutput(html)
    .setXFrameOptionsMode(HtmlService.XFrameOptionsMode.ALLOWALL);
}
