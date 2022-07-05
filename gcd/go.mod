module example.com/gcd

go 1.18

require (
	github.com/tinrab/kubernetes-go-grpc-tutorial v0.0.0-20171027212455-6053b94037ec
	golang.org/x/net v0.0.0-20220630215102-69896b714898
	google.golang.org/grpc v1.47.0
)

replace github.com/tinrab/kubernetes-go-grpc-tutorial v0.0.0 => ../pb

require (
	github.com/golang/protobuf v1.5.2 // indirect
	golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
)
