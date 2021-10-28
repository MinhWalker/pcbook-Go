gen:
	protoc --proto_path=proto proto/*.proto --go_out=paths=source_relative,plugins=grpc:pb
clean:
	rm pb/*.go
run:
	go run main.go
test:
	go test -cover -race ./...