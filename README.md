# Build Image

```bash
docker build . --tag mionita22/codeql-java:2.18.1 --tag mionita22/codeql-java:latest
docker push mionita22/codeql-java:2.18.1
docker push mionita22/codeql-java:latest
```

# Use Image

```bash
docker run -it --rm -v $(pwd):/project/ --env INPUT="./" --env OUTPUT="./result.sarif" mionita22/codeql-java
```
