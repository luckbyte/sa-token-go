module github.com/click33/sa-token-go/examples/hertz/herz-example

go 1.25.4

require (
	github.com/apache/thrift v0.22.0
	github.com/click33/sa-token-go/integrations/hertz v0.1.8
	github.com/click33/sa-token-go/storage/memory v0.1.8
	github.com/click33/sa-token-go/stputil v0.1.8
	github.com/cloudwego/hertz v0.10.3
)

require (
	github.com/bytedance/gopkg v0.1.1 // indirect
	github.com/bytedance/sonic v1.14.0 // indirect
	github.com/bytedance/sonic/loader v0.3.0 // indirect
	github.com/click33/sa-token-go/core v0.1.8 // indirect
	github.com/cloudwego/base64x v0.1.5 // indirect
	github.com/cloudwego/gopkg v0.1.4 // indirect
	github.com/cloudwego/netpoll v0.7.0 // indirect
	github.com/fsnotify/fsnotify v1.9.0 // indirect
	github.com/golang-jwt/jwt/v5 v5.3.0 // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/klauspost/cpuid/v2 v2.2.7 // indirect
	github.com/nyaruka/phonenumbers v1.0.55 // indirect
	github.com/panjf2000/ants/v2 v2.11.3 // indirect
	github.com/tidwall/gjson v1.14.4 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.0 // indirect
	github.com/twitchyliquid64/golang-asm v0.15.1 // indirect
	golang.org/x/arch v0.8.0 // indirect
	golang.org/x/sync v0.19.0 // indirect
	golang.org/x/sys v0.35.0 // indirect
	google.golang.org/protobuf v1.36.10 // indirect
)

replace github.com/apache/thrift => github.com/apache/thrift v0.13.0

replace (
	github.com/click33/sa-token-go/core => ../../../core
	github.com/click33/sa-token-go/integrations/hertz => ../../../integrations/hertz
	github.com/click33/sa-token-go/storage/memory => ../../../storage/memory
	github.com/click33/sa-token-go/stputil => ../../../stputil
)
