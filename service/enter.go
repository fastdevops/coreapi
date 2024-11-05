package service

import (
	"github.com/fastdevops/coreapi/service/bigdata"
	"github.com/fastdevops/coreapi/service/example"
	"github.com/fastdevops/coreapi/service/system"
)

var ServiceGroupApp = new(ServiceGroup)

type ServiceGroup struct {
	SystemServiceGroup  system.ServiceGroup
	ExampleServiceGroup example.ServiceGroup
	BigdataServiceGroup bigdata.ServiceGroup
}
