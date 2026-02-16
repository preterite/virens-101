#!/bin/zsh
# build-pages.zsh — Template assembler and updater for Constraint Structure webtext
# 
# Modes:
#   build   — Assemble HTML from templates + markdown body content
#   update  — Re-wrap existing HTML pages (extract <article>, re-apply templates)
#   check   — Report which pages exist, which are missing, template freshness
#
# Usage:
#   ./build-pages.zsh build [filename]   # build one page or all
#   ./build-pages.zsh update [filename]  # update templates on one page or all
#   ./build-pages.zsh check              # status report
#
# Expects to be run from the webtext root (kairos_webtext/)
# Reads: _design/templates/page-manifest.txt
# Reads: _design/templates/page-top.html, page-bottom.html
# Writes to: _build/ (staging directory for final HTML)

set -euo pipefail

SCRIPT_DIR="${0:A:h}"
WEBTEXT_ROOT="${SCRIPT_DIR:h:h}"  # two levels up from _design/templates/
TEMPLATE_DIR="${WEBTEXT_ROOT}/_design/templates"
BUILD_DIR="${WEBTEXT_ROOT}/_build"
CONTENT_DIR="${WEBTEXT_ROOT}/content"
MANIFEST="${TEMPLATE_DIR}/page-manifest.txt"
TOP_TEMPLATE="${TEMPLATE_DIR}/page-top.html"
BOTTOM_TEMPLATE="${TEMPLATE_DIR}/page-bottom.html"

# Configurable values
KAIROS_ISSUE="XX.X"
KAIROS_SEASON="20XX"
VAULT_URL="#"  # Update when vault is hosted

# Tie image alt/title text
typeset -A TIE_ALTS TIE_TITLES
TIE_ALTS[0x.jpg]="Necktie pattern in warm floral tones"
TIE_ALTS[0y.jpg]="Necktie pattern in cool geometric tones"
TIE_ALTS[0z.jpg]="Necktie pattern in neutral tones"
TIE_TITLES[0x.jpg]="Student track: neckties as constrained personal expression in professional contexts"
TIE_TITLES[0y.jpg]="Designer track: neckties as geometric constraint systems"
TIE_TITLES[0z.jpg]="Nexus track: neckties as convergence of pattern and structure"

# === NAV GENERATION ===
# Generates "This Track" and "Switch Track" nav HTML from manifest

generate_nav_this_track() {
  local nav_group="$1"
  local current_file="$2"
  local nav_html=""
  
  while IFS='|' read -r filename track title tie group; do
    [[ "$filename" =~ ^#.*$ || -z "$filename" ]] && continue
    [[ "$group" != "$nav_group" ]] && continue
    
    if [[ "$filename" == "$current_file" ]]; then
      nav_html+="          <li><a href=\"${filename}\" class=\"nav-link active\">${title}</a></li>\n"
    else
      nav_html+="          <li><a href=\"${filename}\" class=\"nav-link\">${title}</a></li>\n"
    fi
  done < "$MANIFEST"
  
  echo "$nav_html"
}

generate_nav_switch_track() {
  local nav_group="$1"
  local switch_html=""
  
  case "$nav_group" in
    nexus)
      switch_html+="          <li><a href=\"vera-01-envelope.html\" class=\"nav-link track-switch\">&rarr; Designer Track</a></li>\n"
      switch_html+="          <li><a href=\"grant-01-tech.html\" class=\"nav-link track-switch\">&rarr; Student Track</a></li>\n"
      ;;
    vera)
      switch_html+="          <li><a href=\"nexus-hub.html\" class=\"nav-link track-switch\">&rarr; Theoretical Nexus</a></li>\n"
      switch_html+="          <li><a href=\"grant-01-tech.html\" class=\"nav-link track-switch\">&rarr; Student Track</a></li>\n"
      ;;
    grant)
      switch_html+="          <li><a href=\"nexus-hub.html\" class=\"nav-link track-switch\">&rarr; Theoretical Nexus</a></li>\n"
      switch_html+="          <li><a href=\"vera-01-envelope.html\" class=\"nav-link track-switch\">&rarr; Designer Track</a></li>\n"
      ;;
    apparatus)
      switch_html+="          <li><a href=\"nexus-hub.html\" class=\"nav-link track-switch\">&rarr; Theoretical Nexus</a></li>\n"
      switch_html+="          <li><a href=\"vera-01-envelope.html\" class=\"nav-link track-switch\">&rarr; Designer Track</a></li>\n"
      switch_html+="          <li><a href=\"grant-01-tech.html\" class=\"nav-link track-switch\">&rarr; Student Track</a></li>\n"
      ;;
  esac
  
  echo "$switch_html"
}


# === TEMPLATE ASSEMBLY ===

assemble_page() {
  local filename="$1"
  local track="$2"
  local title="$3"
  local tie="$4"
  local group="$5"
  
  # Skip init — different layout entirely
  if [[ "$track" == "init" ]]; then
    echo "  SKIP $filename (init page — manual build)"
    return
  fi
  
  local output="${BUILD_DIR}/${filename}"
  local tie_alt="${TIE_ALTS[$tie]:-Necktie pattern}"
  local tie_title="${TIE_TITLES[$tie]:-Necktie as design element}"
  local nav_this=$(generate_nav_this_track "$group" "$filename")
  local nav_switch=$(generate_nav_switch_track "$group")
  
  # Map track to CSS filename
  local track_css="$track"
  
  # Read templates
  local top=$(cat "$TOP_TEMPLATE")
  local bottom=$(cat "$BOTTOM_TEMPLATE")
  
  # Replace placeholders in top
  top="${top//\{\{PAGE_TITLE\}\}/$title}"
  top="${top//\{\{TRACK_CSS\}\}/$track_css}"
  top="${top//\{\{TIE_IMAGE\}\}/$tie}"
  top="${top//\{\{TIE_ALT\}\}/$tie_alt}"
  top="${top//\{\{TIE_TITLE\}\}/$tie_title}"
  
  # Replace placeholders in bottom
  bottom="${bottom//\{\{NAV_THIS_TRACK\}\}/$nav_this}"
  bottom="${bottom//\{\{NAV_SWITCH_TRACK\}\}/$nav_switch}"
  bottom="${bottom//\{\{VAULT_URL\}\}/$VAULT_URL}"
  bottom="${bottom//\{\{KAIROS_ISSUE\}\}/$KAIROS_ISSUE}"
  bottom="${bottom//\{\{KAIROS_SEASON\}\}/$KAIROS_SEASON}"
  
  # Check for existing body content
  local body_marker="        <!-- BODY CONTENT: edit between these markers -->"
  local body_end_marker="        <!-- END BODY CONTENT -->"
  local body_content=""
  
  if [[ -f "$output" ]]; then
    # Extract existing body content between markers
    body_content=$(sed -n "/${body_marker//\//\\/}/,/${body_end_marker//\//\\/}/p" "$output" 2>/dev/null || echo "")
  fi
  
  if [[ -z "$body_content" ]]; then
    body_content="${body_marker}\n\n        <h1>${title}</h1>\n        <p class=\"lead\">Page content goes here.</p>\n\n${body_end_marker}"
  fi
  
  # Assemble
  echo "$top" > "$output"
  echo "$body_content" >> "$output"
  echo "$bottom" >> "$output"
  
  echo "  BUILD $filename ($track)"
}


# === UPDATE MODE ===
# Re-wrap existing pages: extract article content, re-apply templates

update_page() {
  local filename="$1"
  local track="$2"
  local title="$3"
  local tie="$4"
  local group="$5"
  local filepath="${BUILD_DIR}/${filename}"
  
  if [[ "$track" == "init" ]]; then
    echo "  SKIP $filename (init page)"
    return
  fi
  
  if [[ ! -f "$filepath" ]]; then
    echo "  MISSING $filename — run 'build' first"
    return
  fi
  
  # Extract content between <article> tags
  local article_content=$(sed -n '/<article>/,/<\/article>/p' "$filepath" | sed '1d;$d')
  
  if [[ -z "$article_content" ]]; then
    echo "  ERROR $filename — could not extract <article> content"
    return
  fi
  
  # Rebuild with fresh templates
  local tie_alt="${TIE_ALTS[$tie]:-Necktie pattern}"
  local tie_title="${TIE_TITLES[$tie]:-Necktie as design element}"
  local nav_this=$(generate_nav_this_track "$group" "$filename")
  local nav_switch=$(generate_nav_switch_track "$group")
  local track_css="$track"
  
  local top=$(cat "$TOP_TEMPLATE")
  local bottom=$(cat "$BOTTOM_TEMPLATE")
  
  top="${top//\{\{PAGE_TITLE\}\}/$title}"
  top="${top//\{\{TRACK_CSS\}\}/$track_css}"
  top="${top//\{\{TIE_IMAGE\}\}/$tie}"
  top="${top//\{\{TIE_ALT\}\}/$tie_alt}"
  top="${top//\{\{TIE_TITLE\}\}/$tie_title}"
  
  bottom="${bottom//\{\{NAV_THIS_TRACK\}\}/$nav_this}"
  bottom="${bottom//\{\{NAV_SWITCH_TRACK\}\}/$nav_switch}"
  bottom="${bottom//\{\{VAULT_URL\}\}/$VAULT_URL}"
  bottom="${bottom//\{\{KAIROS_ISSUE\}\}/$KAIROS_ISSUE}"
  bottom="${bottom//\{\{KAIROS_SEASON\}\}/$KAIROS_SEASON}"
  
  echo "$top" > "$filepath"
  echo "$article_content" >> "$filepath"
  echo "$bottom" >> "$filepath"
  
  echo "  UPDATE $filename"
}


# === CHECK MODE ===

check_status() {
  local total=0 built=0 missing=0
  
  mkdir -p "$BUILD_DIR"
  
  echo "=== Constraint Structure: Page Status ==="
  echo ""
  
  while IFS='|' read -r filename track title tie group; do
    [[ "$filename" =~ ^#.*$ || -z "$filename" ]] && continue
    total=$((total + 1))
    
    if [[ -f "${BUILD_DIR}/${filename}" ]]; then
      local mod=$(stat -f "%Sm" -t "%Y-%m-%d %H:%M" "${BUILD_DIR}/${filename}")
      echo "  [OK]   $filename  ($track)  modified: $mod"
      built=$((built + 1))
    else
      echo "  [----] $filename  ($track)  NOT BUILT"
      missing=$((missing + 1))
    fi
  done < "$MANIFEST"
  
  echo ""
  echo "Total: $total | Built: $built | Missing: $missing"
  echo "Template last modified: $(stat -f "%Sm" -t "%Y-%m-%d %H:%M" "$TOP_TEMPLATE")"
}


# === MAIN ===

main() {
  local mode="${1:-check}"
  local target="${2:-all}"
  
  # Ensure build directory exists
  mkdir -p "$BUILD_DIR"
  mkdir -p "${BUILD_DIR}/css"
  mkdir -p "${BUILD_DIR}/js"
  mkdir -p "${BUILD_DIR}/images"
  mkdir -p "${BUILD_DIR}/fonts"
  
  case "$mode" in
    build)
      echo "=== Building pages ==="
      while IFS='|' read -r filename track title tie group; do
        [[ "$filename" =~ ^#.*$ || -z "$filename" ]] && continue
        if [[ "$target" == "all" || "$target" == "$filename" ]]; then
          assemble_page "$filename" "$track" "$title" "$tie" "$group"
        fi
      done < "$MANIFEST"
      echo "=== Done. Output in ${BUILD_DIR}/ ==="
      ;;
      
    update)
      echo "=== Updating templates ==="
      while IFS='|' read -r filename track title tie group; do
        [[ "$filename" =~ ^#.*$ || -z "$filename" ]] && continue
        if [[ "$target" == "all" || "$target" == "$filename" ]]; then
          update_page "$filename" "$track" "$title" "$tie" "$group"
        fi
      done < "$MANIFEST"
      echo "=== Done ==="
      ;;
      
    check)
      check_status
      ;;
      
    *)
      echo "Usage: $0 {build|update|check} [filename|all]"
      exit 1
      ;;
  esac
}

main "$@"
