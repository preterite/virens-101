/**
 * Constraint Structure Guestbook — Google Apps Script
 * 
 * Handles POST (new entries) and GET (retrieve entries).
 * Deploy as Web App: Execute as me, Anyone can access.
 */

// --- Configuration ---
var SHEET_NAME = 'Sheet1';
var MAX_RESPONSE_LENGTH = 1000;
var MAX_NAME_LENGTH = 100;
var MAX_URL_LENGTH = 500;

/**
 * GET: Return all guestbook entries as JSON
 */
function doGet(e) {
  var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName(SHEET_NAME);
  var data = sheet.getDataRange().getValues();
  
  // Skip header row, build entries array
  var entries = [];
  for (var i = 1; i < data.length; i++) {
    var row = data[i];
    if (row[3] && row[3].toString().trim() !== '') {
      entries.push({
        timestamp: row[0] ? new Date(row[0]).toISOString() : '',
        name: row[1] || '',
        url: row[2] || '',
        response: row[3] || ''
      });
    }
  }
  
  // Reverse chronological
  entries.reverse();
  
  return ContentService
    .createTextOutput(JSON.stringify({ status: 'ok', entries: entries }))
    .setMimeType(ContentService.MimeType.JSON);
}

/**
 * POST: Add a new guestbook entry
 */
function doPost(e) {
  try {
    var params = JSON.parse(e.postData.contents);
    
    var name = sanitize(params.name || '', MAX_NAME_LENGTH);
    var url = sanitize(params.url || '', MAX_URL_LENGTH);
    var response = sanitize(params.response || '', MAX_RESPONSE_LENGTH);
    
    // Response is the only required field
    if (!response) {
      return ContentService
        .createTextOutput(JSON.stringify({ status: 'error', message: 'Response is required.' }))
        .setMimeType(ContentService.MimeType.JSON);
    }
    
    var sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName(SHEET_NAME);
    sheet.appendRow([new Date(), name, url, response]);
    
    return ContentService
      .createTextOutput(JSON.stringify({ status: 'ok', message: 'Entry recorded.' }))
      .setMimeType(ContentService.MimeType.JSON);
      
  } catch (err) {
    return ContentService
      .createTextOutput(JSON.stringify({ status: 'error', message: err.toString() }))
      .setMimeType(ContentService.MimeType.JSON);
  }
}

/**
 * Strip HTML tags and enforce length limit
 */
function sanitize(str, maxLen) {
  if (typeof str !== 'string') return '';
  // Strip HTML tags
  str = str.replace(/<[^>]*>/g, '');
  // Trim whitespace
  str = str.trim();
  // Enforce length
  if (str.length > maxLen) str = str.substring(0, maxLen);
  return str;
}
