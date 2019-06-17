module github.com/micro/micro

go 1.12

replace github.com/golang/lint => golang.org/x/lint v0.0.0-20190409202823-959b441ac422

replace github.com/testcontainers/testcontainer-go v0.0.2 => github.com/testcontainers/testcontainers-go v0.0.4

require (
	github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e
	github.com/go-telegram-bot-api/telegram-bot-api v4.6.4+incompatible // indirect
	github.com/golang/protobuf v1.3.1
	github.com/google/btree v1.0.0 // indirect
	github.com/google/uuid v1.1.1
	github.com/gorilla/mux v1.7.2
	github.com/lusis/slack-test v0.0.0-20190426140909-c40012f20018 // indirect
	github.com/micro/cli v0.2.0
	github.com/micro/go-micro v1.6.0
	github.com/micro/go-plugins v1.1.0
	github.com/nats-io/nats-server/v2 v2.0.0 // indirect
	github.com/pascaldekloe/goe v0.1.0 // indirect
	github.com/serenize/snaker v0.0.0-20171204205717-a683aaf2d516
	github.com/xlab/treeprint v0.0.0-20181112141820-a009c3971eca
	golang.org/x/net v0.0.0-20190606173856-1492cefac77f
	google.golang.org/grpc v1.21.1
)
