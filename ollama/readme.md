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


# Nvidia toolkit 

1. Install 
`sudo pacman -S nvidia-container-toolkit`

2. Configuring docker
`sudo nvidia-ctk runtime configure --runtime=docker`
> INFO[0000] Config file does not exist; using empty config 
> INFO[0000] Wrote updated config to /etc/docker/daemon.json 
> INFO[0000] It is recommended that docker daemon be restarted. 

3. Restar docker
`sudo systemctl restart docker.`

4. Testing runtine

`sudo docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi`
