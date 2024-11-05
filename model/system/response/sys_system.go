package response

import "github.com/fastdevops/coreapi/config"

type SysConfigResponse struct {
	Config config.Server `json:"config"`
}
