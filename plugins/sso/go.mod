module github.com/click33/sa-token-go/plugins/sso

go 1.24.0

require (
	github.com/click33/sa-token-go/core v0.1.8
	github.com/click33/sa-token-go/storage/memory v0.0.0-00010101000000-000000000000
	github.com/stretchr/testify v1.11.1
)

require (
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/golang-jwt/jwt/v5 v5.3.0 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/panjf2000/ants/v2 v2.11.3 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	golang.org/x/sync v0.19.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/click33/sa-token-go/core => ../../core

replace github.com/click33/sa-token-go/storage/memory => ../../storage/memory
