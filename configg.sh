#!/bin/bash

echo "Unblocking specific files..."
chmod +x bin/Runner.Listener bin/Runner.Worker

echo "Configuring the runner..."
./config.sh --url https://github.com/YOUR_GITHUB_USER/YOUR_REPO --token YOUR_TOKEN

echo "Runner is set up. To start the runner, run: ./run.sh"