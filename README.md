# Build Image

```bash
docker build . --tag codeql-java:2.18.1
docker push mionita22/codeql-java:2.18.1
```

# Use Image

```bash
docker run --rm -v $(pwd):/project/ --env INPUT="./" --env OUTPUT="./result.sarif" codeql-java:2.18.1
```