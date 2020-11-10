
FROM openjdk:14-alpine
ARG VERSION 
RUN echo  "downloading version:  $VERSION"

RUN echo "https://github.com/browserup/browserup-proxy/releases/download/v{VERSION}/browserup-proxy-{VERSION}-SNAPSHOT.tar"
RUN wget "https://github.com/browserup/browserup-proxy/releases/download/v2.1.1/browserup-proxy-2.1.1-SNAPSHOT.tar" 
RUN tar xvf "browserup-proxy-${VERSION}-SNAPSHOT.tar"
RUN ln -s "browserup-proxy-${VERSION}-SNAPSHOT" browserup-proxy

CMD ["browserup-proxy/bin/browserup-proxy"]
