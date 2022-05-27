FROM golang AS build

ENV location /app

WORKDIR ${location}/server

ADD ./server ${location}/server
ADD ./proto ${location}/proto


# Download all the dependencies
RUN go get -d ./...
# Install the package
RUN go install ./...


RUN CGO_ENABLED=0 go build -o /bin/grpc-hello-server


# Build stage II : Go binaries are self-contained executables.
FROM scratch
COPY --from=build /bin/grpc-hello-server /bin/grpc-hello-server


ENTRYPOINT ["/bin/grpc-hello-server"]
EXPOSE 50051