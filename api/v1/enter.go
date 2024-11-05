package v1

import (
	"github.com/fastdevops/coreapi/api/v1/bigdata"
	"github.com/fastdevops/coreapi/api/v1/example"
	"github.com/fastdevops/coreapi/api/v1/system"
)

var ApiGroupApp = new(ApiGroup)

type ApiGroup struct {
	SystemApiGroup  system.ApiGroup
	ExampleApiGroup example.ApiGroup
	BigdataApiGroup bigdata.ApiGroup
}
