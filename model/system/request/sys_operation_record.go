package request

import (
	"github.com/fastdevops/coreapi/model/common/request"
	"github.com/fastdevops/coreapi/model/system"
)

type SysOperationRecordSearch struct {
	system.SysOperationRecord
	request.PageInfo
}
