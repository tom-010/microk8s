FROM golang AS build

ENV location /app

WORKDIR ${location}/client

ADD ./client ${location}/client
ADD ./proto ${location}/proto

# Download all the dependencies
RUN go get -d ./...
# Install the package
RUN go install ./...


RUN CGO_ENABLED=0 go build -o /bin/grpc-hello-client


# Build stage II : Go binaries are self-contained executables.
FROM scratch
COPY --from=build /bin/grpc-hello-client /bin/grpc-hello-client


ENTRYPOINT ["/bin/grpc-hello-client"]
EXPOSE 50051