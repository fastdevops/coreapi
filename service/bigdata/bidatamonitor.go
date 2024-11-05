package bigdata

import (
	"github.com/fastdevops/coreapi/global"
	"github.com/fastdevops/coreapi/model/bigdata"
	bigdataReq "github.com/fastdevops/coreapi/model/bigdata/request"
)

type BigdataMonitorService struct{}

// CreateBigdataMonitor 创建大数据集群监控记录
// Author [yourname](https://github.com/yourname)
func (bigdatamonitorService *BigdataMonitorService) CreateBigdataMonitor(bigdatamonitor *bigdata.BigdataMonitor) (err error) {
	err = global.GVA_DB.Create(bigdatamonitor).Error
	return err
}

// DeleteBigdataMonitor 删除大数据集群监控记录
// Author [yourname](https://github.com/yourname)
func (bigdatamonitorService *BigdataMonitorService) DeleteBigdataMonitor(ID string) (err error) {
	err = global.GVA_DB.Delete(&bigdata.BigdataMonitor{}, "id = ?", ID).Error
	return err
}

// DeleteBigdataMonitorByIds 批量删除大数据集群监控记录
// Author [yourname](https://github.com/yourname)
func (bigdatamonitorService *BigdataMonitorService) DeleteBigdataMonitorByIds(IDs []string) (err error) {
	err = global.GVA_DB.Delete(&[]bigdata.BigdataMonitor{}, "id in ?", IDs).Error
	return err
}

// UpdateBigdataMonitor 更新大数据集群监控记录
// Author [yourname](https://github.com/yourname)
func (bigdatamonitorService *BigdataMonitorService) UpdateBigdataMonitor(bigdatamonitor bigdata.BigdataMonitor) (err error) {
	err = global.GVA_DB.Model(&bigdata.BigdataMonitor{}).Where("id = ?", bigdatamonitor.ID).Updates(&bigdatamonitor).Error
	return err
}

// GetBigdataMonitor 根据ID获取大数据集群监控记录
// Author [yourname](https://github.com/yourname)
func (bigdatamonitorService *BigdataMonitorService) GetBigdataMonitor(ID string) (bigdatamonitor bigdata.BigdataMonitor, err error) {
	err = global.GVA_DB.Where("id = ?", ID).First(&bigdatamonitor).Error
	return
}

// GetBigdataMonitorInfoList 分页获取大数据集群监控记录
// Author [yourname](https://github.com/yourname)
func (bigdatamonitorService *BigdataMonitorService) GetBigdataMonitorInfoList(info bigdataReq.BigdataMonitorSearch) (list []bigdata.BigdataMonitor, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&bigdata.BigdataMonitor{})
	var bigdatamonitors []bigdata.BigdataMonitor
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	var OrderStr string
	orderMap := make(map[string]bool)
	orderMap["node_name"] = true
	orderMap["component_name"] = true
	orderMap["component_status"] = true
	orderMap["server_cpu"] = true
	orderMap["server_memory"] = true
	orderMap["server_disk"] = true
	if orderMap[info.Sort] {
		OrderStr = info.Sort
		if info.Order == "descending" {
			OrderStr = OrderStr + " desc"
		}
		db = db.Order(OrderStr)
	}

	if limit != 0 {
		db = db.Limit(limit).Offset(offset)
	}

	err = db.Find(&bigdatamonitors).Error
	return bigdatamonitors, total, err
}
func (bigdatamonitorService *BigdataMonitorService) GetBigdataMonitorPublic() {
	// 此方法为获取数据源定义的数据
	// 请自行实现
}
