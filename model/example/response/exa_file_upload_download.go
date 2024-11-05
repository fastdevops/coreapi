package response

import "github.com/fastdevops/coreapi/model/example"

type ExaFileResponse struct {
	File example.ExaFileUploadAndDownload `json:"file"`
}
