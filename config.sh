#!/bin/bash

# Unblock specific files
echo "Unblocking specific files..."

# Check if VERBOSE_ARG is set
if [[ -n "$VERBOSE_ARG" ]]; then
    VERBOSE_ARG="Continue"
else
    VERBOSE_ARG="SilentlyContinue"
fi

# Ensure the binary exists and is executable
EXECUTABLE="./bin/Runner.Listener.exe"

if [[ ! -f "$EXECUTABLE" ]]; then
    echo "Error: $EXECUTABLE not found!"
    exit 1
fi

chmod +x "$EXECUTABLE"

# Check command-line argument
if [[ "$1" == "remove" ]]; then
    echo "Unconfiguring the runner..."
    "$EXECUTABLE" "$@"
else
    echo "Configuring the runner..."
    "$EXECUTABLE" configure "$@"
fi
