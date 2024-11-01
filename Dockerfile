FROM openjdk:21

ENV INPUT="./"
ENV OUTPUT="./codeql_result.sarif"

#findutils is necessary for xargs, which is necessary for gradle
RUN microdnf install wget findutils && microdnf clean all

#Look for the newest version in https://github.com/github/codeql-action/releases
RUN wget https://github.com/github/codeql-action/releases/download/codeql-bundle-v2.19.2/codeql-bundle-linux64.tar.gz
RUN tar xvfz codeql-bundle-linux64.tar.gz
RUN mkdir -p /project

COPY run.sh /run.sh

WORKDIR /project

ENTRYPOINT /run.sh ${INPUT} ${OUTPUT}
