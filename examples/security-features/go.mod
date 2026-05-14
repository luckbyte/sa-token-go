module github.com/click33/sa-token-go/examples/security-features

go 1.25.0

require (
	github.com/click33/sa-token-go/core v0.1.9
	github.com/click33/sa-token-go/storage/memory v0.1.9
	github.com/click33/sa-token-go/stputil v0.1.9
)

require (
	github.com/golang-jwt/jwt/v5 v5.3.1 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/panjf2000/ants/v2 v2.12.0 // indirect
	golang.org/x/sync v0.20.0 // indirect
)

replace (
	github.com/click33/sa-token-go/core => ../../core
	github.com/click33/sa-token-go/storage/memory => ../../storage/memory
	github.com/click33/sa-token-go/stputil => ../../stputil
)
