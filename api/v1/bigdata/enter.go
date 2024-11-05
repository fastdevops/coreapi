package bigdata

import "github.com/fastdevops/coreapi/service"

type ApiGroup struct{ BigdataMonitorApi }

var bigdatamonitorService = service.ServiceGroupApp.BigdataServiceGroup.BigdataMonitorService
