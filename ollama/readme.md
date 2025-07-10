# ollama docker api

pull pllama image
`curl http://localhost:11434/api/pull -d '{"name": "llama3"}'`

testing model
```
curl http://localhost:11434/api/generate -d '{
  "model": "llama3",
  "prompt": "Why is the sky blue?"
}'
```
