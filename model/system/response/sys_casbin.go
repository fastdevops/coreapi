package response

import (
	"github.com/fastdevops/coreapi/model/system/request"
)

type PolicyPathResponse struct {
	Paths []request.CasbinInfo `json:"paths"`
}
