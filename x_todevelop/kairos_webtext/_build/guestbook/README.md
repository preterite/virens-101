# Guestbook Implementation

## Setup Steps

### 1. Create Google Spreadsheet
- New Google Sheet, name it "Constraint Structure Guestbook"
- Sheet1 headers in row 1: `timestamp` | `name` | `url` | `response`
- Share settings: keep private (only the script needs access)

### 2. Deploy Google Apps Script
- In the spreadsheet: Extensions → Apps Script
- Paste contents of `guestbook-apps-script.js`
- Deploy → New deployment → Web app
  - Execute as: Me
  - Who has access: Anyone
- Copy the deployment URL

### 3. Update the endpoint
- In `guestbook.js`, replace `YOUR_DEPLOYMENT_URL_HERE` with the deployment URL
- URL format: `https://script.google.com/macros/s/XXXXXXX/exec`

### 4. Integrate
- Append `guestbook.css` contents to `css/apparatus.css`
- Replace the Guestbook `<h2>` section in `acknowledgments.html` with `guestbook-section.html`
- Add `<script src="js/guestbook.js"></script>` before closing `</body>`

### 5. Test
- Submit test entry → verify in spreadsheet → reload → verify display
