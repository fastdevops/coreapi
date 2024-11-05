package bigdata

import api "github.com/fastdevops/coreapi/api/v1"

type RouterGroup struct{ BigdataMonitorRouter }

var bigdatamonitorApi = api.ApiGroupApp.BigdataApiGroup.BigdataMonitorApi
