# Build Image

```bash
export CODEQL_VERSION=$(head -n 1 ./codeql.version)
docker build . --build-arg CODEQL_VERSION=${CODEQL_VERSION} --tag mionita22/codeql-java:${CODEQL_VERSION} --tag mionita22/codeql-java:latest
docker push mionita22/codeql-java:${CODEQL_VERSION}
docker push mionita22/codeql-java:latest
```

# Use Image

```bash
docker run -it --rm -v $(pwd):/project/ --env INPUT="./" --env OUTPUT="./result.sarif" mionita22/codeql-java
```
