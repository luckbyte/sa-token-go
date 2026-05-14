module github.com/click33/sa-token-go/examples/redis-example

go 1.24.0

require (
	github.com/click33/sa-token-go/core v0.1.8
	github.com/click33/sa-token-go/storage/redis v0.1.8
	github.com/click33/sa-token-go/stputil v0.1.8
	github.com/redis/go-redis/v9 v9.5.1
)

require (
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/click33/sa-token-go/storage/memory v0.1.8 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/golang-jwt/jwt/v5 v5.3.0 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/panjf2000/ants/v2 v2.11.3 // indirect
	golang.org/x/sync v0.19.0 // indirect
)

replace (
	github.com/click33/sa-token-go/core => ../../core
	github.com/click33/sa-token-go/storage/redis => ../../storage/redis
	github.com/click33/sa-token-go/stputil => ../../stputil
)
