#!/bin/bash

MODEL="llama3:8b"
PROMPT="$1"

if [ -z "$PROMPT" ]; then
    echo "Usage: $0 \"Your prompt here\""
      exit 1
fi

echo "Asking Ollama ($MODEL): \"$PROMPT\""
echo "-------------------------------------"

# Use streaming mode
curl -s http://localhost:11434/api/generate \
  -H "Content-Type: application/json" \
  -d "{\"model\":\"$MODEL\", \"prompt\":\"$PROMPT\", \"stream\": true}" | \
  while read -r line; do
    # Extract partial response using jq (skip empty lines)
      if [ -n "$line" ]; then
          echo "$line" | jq -r '.response' | tr -d '\n'
      fi
  done

            # Print final newline
            echo
