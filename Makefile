
# Makefile to help with local dev, service-worker testing and starting a Bubblewrap/TWA flow
SHELL=/usr/bin/env /bin/bash

# Configurable variables
SERVE_PORT ?= 8080
BUBBLEWRAP_MANIFEST_URL ?= https://naereen.github.io/Can-you-guess-my-Scryfall-search-of-the-week-MTG/manifest.json
PACKAGE_ID ?= com.example.scryguess
APP_NAME ?= ScryGuess

all: send

send: send_zamok

send_zamok:
	CP --exclude=.git ./ ${Szam}publis/Can-you-guess-my-Scryfall-search-of-the-week-MTG/

# Serve the project locally (useful for testing service worker on localhost)
serve:
	@echo "Serving on http://localhost:${SERVE_PORT}"
	python3 -m http.server ${SERVE_PORT}

# Quick check that service-worker.js is reachable
test-sw:
	@echo "Checking service-worker.js availability..."
	@curl -fsS http://localhost:${SERVE_PORT}/service-worker.js >/dev/null 2>&1 && echo "service-worker.js found" || echo "service-worker.js not reachable (start 'make serve' first)"

# Helper: start Bubblewrap init (does not run automatically, shows the command to run)
# Requires: npm i -g @bubblewrap/cli and a publicly accessible manifest (HTTPS)
bubblewrap-init:
	@echo "To initialize a Bubblewrap/TWA project, run these commands in an empty directory:"
	@echo "  npm install -g @bubblewrap/cli"
	@echo "  bubblewrap init --manifest=${BUBBLEWRAP_MANIFEST_URL} --packageId=${PACKAGE_ID} --name=\"${APP_NAME}\""
	@echo "Then: bubblewrap build && open the generated Android project in Android Studio."

# Print a small status summary
status:
	@echo "Local serve port: ${SERVE_PORT}"
	@echo "Bubblewrap manifest URL: ${BUBBLEWRAP_MANIFEST_URL}"
	@echo "Package id: ${PACKAGE_ID}"

