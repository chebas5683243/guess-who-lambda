#!/bin/bash

# Clean any existing build artifacts
rm -f bootstrap

# Build the Go binary for Linux
GOOS=linux GOARCH=amd64 go build -o bootstrap ./cmd/lambda

# Make the binary executable
chmod +x bootstrap