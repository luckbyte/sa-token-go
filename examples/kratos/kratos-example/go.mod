module github.com/click33/sa-token-go/examples/kratos/kratos-example

go 1.25.3

require (
	github.com/click33/sa-token-go/integrations/kratos v0.1.8
	github.com/click33/sa-token-go/storage/memory v0.1.8
	github.com/click33/sa-token-go/stputil v0.1.8
	github.com/go-kratos/kratos/v2 v2.9.1
	google.golang.org/genproto/googleapis/api v0.0.0-20251111163417-95abcf5c77ba
	google.golang.org/grpc v1.71.0
	google.golang.org/protobuf v1.36.10
)

replace (
	github.com/click33/sa-token-go/core => ../../../core
	github.com/click33/sa-token-go/integrations/kratos => ../../../integrations/kratos
	github.com/click33/sa-token-go/storage/memory => ../../../storage/memory
	github.com/click33/sa-token-go/stputil => ../../../stputil
)

require (
	github.com/click33/sa-token-go/core v0.1.8 // indirect
	github.com/go-kratos/aegis v0.2.0 // indirect
	github.com/go-playground/form/v4 v4.2.0 // indirect
	github.com/golang-jwt/jwt/v5 v5.3.0 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/gorilla/mux v1.8.1 // indirect
	github.com/panjf2000/ants/v2 v2.11.3 // indirect
	go.opentelemetry.io/otel v1.38.0 // indirect
	go.opentelemetry.io/otel/sdk/metric v1.38.0 // indirect
	golang.org/x/net v0.43.0 // indirect
	golang.org/x/sync v0.19.0 // indirect
	golang.org/x/sys v0.35.0 // indirect
	golang.org/x/text v0.28.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20251103181224-f26f9409b101 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
