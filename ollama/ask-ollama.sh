#!/bin/bash

# Usage: ./ask-ollama.sh "Why is the sky blue?"

MODEL="llama3"
PROMPT="$1"

if [ -z "$PROMPT" ]; then
  echo "Usage: $0 \"Your prompt here\""
  exit 1
fi

echo "Asking Ollama ($MODEL): \"$PROMPT\""
echo "-------------------------------------"

RESPONSE=$(curl -s http://localhost:11434/api/generate \
    -H "Content-Type: application/json" \
    -d "{\"model\":\"$MODEL\",\"prompt\":\"$PROMPT\"}"
  )

if echo "$RESPONSE" | grep -q '"error"'; then
  echo "Error from Ollama:"
  echo "$RESPONSE" | jq -r '.error'
  exit 1
fi

# Extract and print the response text
echo "$RESPONSE" | jq -r '.response'
