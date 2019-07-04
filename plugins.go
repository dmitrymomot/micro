package main

import (
	rpc "github.com/micro/go-plugins/micro/disable_rpc"
	"github.com/micro/go-plugins/micro/index"
	"github.com/micro/go-plugins/micro/stats_auth"
	"github.com/micro/micro/api"
	"github.com/micro/micro/plugin"
	"github.com/micro/micro/web"
)

func init() {
	web.Register(index.NewPlugin())
	api.Register(rpc.NewPlugin())
	plugin.Register(stats_auth.NewPlugin())
}
