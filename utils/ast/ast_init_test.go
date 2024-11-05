package ast

import (
	"path/filepath"

	"github.com/fastdevops/coreapi/global"
)

func init() {
	global.GVA_CONFIG.AutoCode.Root, _ = filepath.Abs("../../../")
	global.GVA_CONFIG.AutoCode.Server = "server"
}
