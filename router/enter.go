package router

import (
	"github.com/fastdevops/coreapi/router/bigdata"
	"github.com/fastdevops/coreapi/router/example"
	"github.com/fastdevops/coreapi/router/system"
)

var RouterGroupApp = new(RouterGroup)

type RouterGroup struct {
	System  system.RouterGroup
	Example example.RouterGroup
	Bigdata bigdata.RouterGroup
}
