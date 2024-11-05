package initialize

import (
	"github.com/fastdevops/coreapi/global"
	"github.com/fastdevops/coreapi/model/bigdata"
)

func bizModel() error {
	db := global.GVA_DB
	err := db.AutoMigrate(bigdata.BigdataMonitor{})
	if err != nil {
		return err
	}
	return nil
}
