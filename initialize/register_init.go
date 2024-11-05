package initialize

import (
	_ "github.com/fastdevops/coreapi/source/example"
	_ "github.com/fastdevops/coreapi/source/system"
)

func init() {
	// do nothing,only import source package so that inits can be registered
}
