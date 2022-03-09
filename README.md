# Build

```
docker build -t docker-flask-debugpy .
docker run -p 5000:5000 -p 5678:5678 -v $(pwd):/opt/app docker-flask-debugpy
```
