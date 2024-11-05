package request

import (
	"github.com/fastdevops/coreapi/model/common/request"
	"github.com/fastdevops/coreapi/model/system"
)

type SysDictionaryDetailSearch struct {
	system.SysDictionaryDetail
	request.PageInfo
}
